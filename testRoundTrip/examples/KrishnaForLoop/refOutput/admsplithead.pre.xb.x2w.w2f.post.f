C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) A
      INTEGER(w2f__i4) B
      INTEGER(w2f__i4) I
      REAL(w2f__8) J
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9


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
      A = 1
      B = 3
      DO I = A, B, 1
        J = 3.0D00
      END DO
      Y(1)%v = (X(1)%v*X(2)%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      A = 1
      B = 3
      OpenAD_Symbol_4 = 0_w2f__i8
      DO I = A,B,1
        J = 3.0D00
        OpenAD_Symbol_4 = (INT(OpenAD_Symbol_4)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      Y(1)%v = (X(1)%v*X(2)%v)
      OpenAD_Symbol_0 = X(2)%v
      OpenAD_Symbol_1 = X(1)%v
      double_tape(double_tape_pointer) = OpenAD_Symbol_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_1
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_8 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_9 = double_tape(double_tape_pointer)
      X(2)%d = X(2)%d+Y(1)%d*(OpenAD_Symbol_8)
      X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_9)
      Y(1)%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_3 = 1
      do while (INT(OpenAD_Symbol_3).LE.INT(OpenAD_Symbol_2))
        OpenAD_Symbol_3 = INT(OpenAD_Symbol_3)+1
      END DO
          end if
        end subroutine head
