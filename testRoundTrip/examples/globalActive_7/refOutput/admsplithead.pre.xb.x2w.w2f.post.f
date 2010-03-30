
C$OPENAD XXX File_start [head.f]
      MODULE globals
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: AGLOBAL
C
C     **** Statements ****
C
      END MODULE
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      Y%v = (X(1)%v*X(2)%v)
          end if
          if (our_rev_mode%tape) then
C taping
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_lin_0 = X(2)%v
      OpenAD_lin_1 = X(1)%v
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_0 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      X(2)%d = X(2)%d+Y%d*(OpenAD_Symbol_0)
      X(1)%d = X(1)%d+Y%d*(OpenAD_Symbol_1)
      Y%d = 0.0d0
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

      use w2f__types
      use OAD_active
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
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo


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
      CALL foo(X,AGLOBAL)
      Y(1)%v = AGLOBAL%v
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      CALL foo(X,AGLOBAL)
      Y(1)%v = AGLOBAL%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      AGLOBAL%d = AGLOBAL%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL foo(X,AGLOBAL)
          end if
        end subroutine head
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE bar(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) X(1 : 2)
      REAL(w2f__8) Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      type(active) :: OpenAD_tyc_0(1:2)
      type(active) :: OpenAD_tyc_1
      type(active) :: OpenAD_tyc_2(1:2)
      type(active) :: OpenAD_tyc_3


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,Y)
      CALL foo(OpenAD_tyc_0,OpenAD_tyc_1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(X,OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(Y,OpenAD_tyc_1)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,Y)
      CALL foo(OpenAD_tyc_0,OpenAD_tyc_1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(X,OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(Y,OpenAD_tyc_1)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(OpenAD_tyc_2,OpenAD_tyc_3)
          end if
        end subroutine bar
