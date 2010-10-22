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

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prp_0


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
      DO I = 1, 2, 1
        Y(INT(I))%v = X(I)%v
      END DO
      DO I = 1,2,1
        Y(INT(I))%v = (X(I)%v*Y(I)%v)
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_4 = 0_w2f__i8
      DO I = 1,2,1
        Y(INT(I))%v = X(I)%v
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_4 = (INT(OpenAD_Symbol_4)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_5 = 0_w2f__i8
      DO I = 1,2,1
        OpenAD_dly_0 = (X(I)%v*Y(I)%v)
        OpenAD_lin_0 = Y(I)%v
        OpenAD_lin_1 = X(I)%v
        Y(INT(I))%v = OpenAD_dly_0
        double_tape(double_tape_pointer) = OpenAD_lin_0
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_lin_1
        double_tape_pointer = double_tape_pointer+1
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_5 = (INT(OpenAD_Symbol_5)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_1 = 1
      do while (INT(OpenAD_Symbol_1).LE.INT(OpenAD_Symbol_0))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_13 = integer_tape(integer_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_14 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_15 = double_tape(double_tape_pointer)
        OpenAD_prp_0%d = OpenAD_prp_0%d+Y(INT(OpenAD_Symbol_13))%d*(Open
     +AD_Symbol_14)
        X(INT(OpenAD_Symbol_13))%d = X(INT(OpenAD_Symbol_13))%d+Y(INT(Op
     +enAD_Symbol_13))%d*(OpenAD_Symbol_15)
        Y(INT(OpenAD_Symbol_13))%d = 0.0d0
        Y(INT(OpenAD_Symbol_13))%d = Y(INT(OpenAD_Symbol_13))%d+OpenAD_p
     +rp_0%d
        OpenAD_prp_0%d = 0.0d0
        OpenAD_Symbol_1 = INT(OpenAD_Symbol_1)+1
      END DO
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_3 = 1
      do while (INT(OpenAD_Symbol_3).LE.INT(OpenAD_Symbol_2))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_12 = integer_tape(integer_tape_pointer)
        X(INT(OpenAD_Symbol_12))%d = X(INT(OpenAD_Symbol_12))%d+Y(INT(Op
     +enAD_Symbol_12))%d
        Y(INT(OpenAD_Symbol_12))%d = 0.0d0
        OpenAD_Symbol_3 = INT(OpenAD_Symbol_3)+1
      END DO
          end if
        end subroutine head
