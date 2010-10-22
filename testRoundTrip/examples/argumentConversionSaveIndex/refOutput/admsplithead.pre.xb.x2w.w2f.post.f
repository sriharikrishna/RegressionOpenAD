
C$OPENAD XXX File_start [head.f]
      MODULE globals
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i4) I
C
C     **** Statements ****
C
      END MODULE
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo(P)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: P
C
C     **** Local Variables and Functions ****
C
      type(active) :: OpenAD_prp_0
C
C     **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
      P%v = (P%v*2.0D00)
      I = (I+1)
          end if
          if (our_rev_mode%tape) then
C taping
      P%v = (P%v*2.0D00)
      I = (I+1)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OpenAD_prp_0%d = OpenAD_prp_0%d+P%d*(2.0D00)
      P%d = 0.0d0
      P%d = P%d+OpenAD_prp_0%d
      OpenAD_prp_0%d = 0.0d0
          end if
        end subroutine foo
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A(1 : 1)
      EXTERNAL foo
      INTEGER(w2f__i8) OpenAD_Symbol_0
      type(active) :: OpenAD_tyc_0
      type(active) :: OpenAD_tyc_1


          integer iaddr
          external iaddr
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      I = 1
      A(1) = 9.085830301E-03
      OpenAD_Symbol_0 = I
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,A(I))
      CALL foo(OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(A(INT(OpenAD_Symbol_0)),OpenAD_tyc_0)
      CALL foo(X(1))
      Y(1)%v = X(1)%v
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      I = 1
      A(1) = 9.085830301E-03
      OpenAD_Symbol_0 = I
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,A(I))
      CALL foo(OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(A(INT(OpenAD_Symbol_0)),OpenAD_tyc_0)
      CALL foo(X(1))
      Y(1)%v = X(1)%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL foo(X(1))
      CALL foo(OpenAD_tyc_1)
          end if
        end subroutine head
