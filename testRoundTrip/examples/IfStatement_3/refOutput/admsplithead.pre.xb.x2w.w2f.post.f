C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(X, L)
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
      REAL(w2f__8) X
      LOGICAL(w2f__i4) L


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      L = (X.ne.0.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      L = (X.ne.0.0D00)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
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
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      LOGICAL(w2f__i4) L


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
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(OpenAD_Symbol_0,X(1))
      CALL foo(OpenAD_Symbol_0,L)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(X(1),OpenAD_Symbol_0)
      IF (L) THEN
        Y(1)%v = X(1)%v
      ENDIF
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(OpenAD_Symbol_0,X(1))
      CALL foo(OpenAD_Symbol_0,L)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(X(1),OpenAD_Symbol_0)
      IF (L) THEN
        Y(1)%v = X(1)%v
        OpenAD_Symbol_2 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OpenAD_Symbol_3 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_1.ne.0) THEN
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
      ENDIF
      CALL foo(OpenAD_Symbol_7,L)
          end if
        end subroutine head
