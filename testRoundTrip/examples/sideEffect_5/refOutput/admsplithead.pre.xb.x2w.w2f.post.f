C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(A, N)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use all_globals_mod
      use oad_intrinsics
      use all_globals_mod
      use oad_intrinsics
      use all_globals_mod
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
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      type(active) :: A(1:INT((N+G)))
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_13


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      DO I = 1, (N + 1), 1
        A(INT(I))%v = (A(I)%v*2.0D00)
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_3 = 0_w2f__i8
      DO I = 1,(N+1),1
        OpenAD_Symbol_0 = (A(I)%v*2.0D00)
        A(INT(I))%v = OpenAD_Symbol_0
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_3 = (INT(OpenAD_Symbol_3)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_2 = 1
      do while (INT(OpenAD_Symbol_2).LE.INT(OpenAD_Symbol_1))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_13 = integer_tape(integer_tape_pointer)
        OpenAD_prop_0%d = OpenAD_prop_0%d+A(INT(OpenAD_Symbol_13))%d*(2.
     +0D00)
        A(INT(OpenAD_Symbol_13))%d = 0.0d0
        A(INT(OpenAD_Symbol_13))%d = A(INT(OpenAD_Symbol_13))%d+OpenAD_p
     +rop_0%d
        OpenAD_prop_0%d = 0.0d0
        OpenAD_Symbol_2 = INT(OpenAD_Symbol_2)+1
      END DO
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
      use all_globals_mod
      use oad_intrinsics
      use all_globals_mod
      use oad_intrinsics
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) OAD_CTMP0
      INTEGER(w2f__i8) OpenAD_Symbol_14


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
      G = 1
      I = 2
      OAD_CTMP0 = 2
      CALL foo(X,OAD_CTMP0)
      CALL foo(X,I)
      Y(1)%v = 0
      DO I = 1,3,1
        Y(1)%v = (X(I)%v+Y(1)%v)
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      G = 1
      I = 2
      OAD_CTMP0 = 2
      CALL foo(X,OAD_CTMP0)
      integer_tape(integer_tape_pointer) = G
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = OAD_CTMP0
      integer_tape_pointer = integer_tape_pointer+1
      CALL foo(X,I)
      integer_tape(integer_tape_pointer) = G
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = I
      integer_tape_pointer = integer_tape_pointer+1
      Y(1)%v = 0
      OpenAD_Symbol_9 = 0_w2f__i8
      DO I = 1,3,1
        Y(1)%v = (X(I)%v+Y(1)%v)
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_9 = (INT(OpenAD_Symbol_9)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_9
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_8 = 1
      do while (INT(OpenAD_Symbol_8).LE.INT(OpenAD_Symbol_7))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_14 = integer_tape(integer_tape_pointer)
        OpenAD_prop_1%d = OpenAD_prop_1%d+Y(1)%d
        X(INT(OpenAD_Symbol_14))%d = X(INT(OpenAD_Symbol_14))%d+Y(1)%d
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prop_1%d
        OpenAD_prop_1%d = 0.0d0
        OpenAD_Symbol_8 = INT(OpenAD_Symbol_8)+1
      END DO
      Y(1)%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      I = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      G = integer_tape(integer_tape_pointer)
      CALL foo(X,I)
      integer_tape_pointer = integer_tape_pointer-1
      OAD_CTMP0 = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      G = integer_tape(integer_tape_pointer)
      CALL foo(X,OAD_CTMP0)
          end if
        end subroutine head
