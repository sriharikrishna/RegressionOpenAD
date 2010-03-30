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
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      INTEGER(w2f__i8) OpenAD_Symbol_22
      INTEGER(w2f__i8) OpenAD_Symbol_23
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
      type(active) :: X(1:3)
      type(active) :: Y(1:3)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      INTEGER(w2f__i8) OpenAD_Symbol_24
      INTEGER(w2f__i8) OpenAD_Symbol_25
      INTEGER(w2f__i8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
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
      DO I = 1, 3, 1
        Y(INT(I))%v = X(I)%v
      END DO
      DO I = 1,3,1
        DO J = 1,3,1
          DO K = 1,3,1
            Y(INT(I))%v = (X(J)%v*Y(I)%v)
          END DO
        END DO
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_8 = 0_w2f__i8
      DO I = 1,3,1
        Y(INT(I))%v = X(I)%v
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_8 = (INT(OpenAD_Symbol_8)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_9 = 0_w2f__i8
      DO I = 1,3,1
        OpenAD_Symbol_10 = 0_w2f__i8
        DO J = 1,3,1
          OpenAD_Symbol_11 = 0_w2f__i8
          DO K = 1,3,1
            OpenAD_dly_0 = (X(J)%v*Y(I)%v)
            OpenAD_lin_0 = Y(I)%v
            OpenAD_lin_1 = X(J)%v
            Y(INT(I))%v = OpenAD_dly_0
            double_tape(double_tape_pointer) = OpenAD_lin_0
            double_tape_pointer = double_tape_pointer+1
            double_tape(double_tape_pointer) = OpenAD_lin_1
            double_tape_pointer = double_tape_pointer+1
            integer_tape(integer_tape_pointer) = I
            integer_tape_pointer = integer_tape_pointer+1
            integer_tape(integer_tape_pointer) = J
            integer_tape_pointer = integer_tape_pointer+1
            OpenAD_Symbol_11 = (INT(OpenAD_Symbol_11)+INT(1_w2f__i8))
          END DO
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_11
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_10 = (INT(OpenAD_Symbol_10)+INT(1_w2f__i8))
        END DO
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_10
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_9 = (INT(OpenAD_Symbol_9)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_9
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_1 = 1
      do while (INT(OpenAD_Symbol_1).LE.INT(OpenAD_Symbol_0))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_3 = 1
        do while (INT(OpenAD_Symbol_3).LE.INT(OpenAD_Symbol_2))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_4 = integer_tape(integer_tape_pointer)
          OpenAD_Symbol_5 = 1
          do while (INT(OpenAD_Symbol_5).LE.INT(OpenAD_Symbol_4))
            integer_tape_pointer = integer_tape_pointer-1
            OpenAD_Symbol_25 = integer_tape(integer_tape_pointer)
            integer_tape_pointer = integer_tape_pointer-1
            OpenAD_Symbol_26 = integer_tape(integer_tape_pointer)
            double_tape_pointer = double_tape_pointer-1
            OpenAD_Symbol_27 = double_tape(double_tape_pointer)
            double_tape_pointer = double_tape_pointer-1
            OpenAD_Symbol_28 = double_tape(double_tape_pointer)
            OpenAD_prp_0%d = OpenAD_prp_0%d+Y(INT(OpenAD_Symbol_26))%d*(
     +OpenAD_Symbol_27)
            X(INT(OpenAD_Symbol_25))%d = X(INT(OpenAD_Symbol_25))%d+Y(IN
     +T(OpenAD_Symbol_26))%d*(OpenAD_Symbol_28)
            Y(INT(OpenAD_Symbol_26))%d = 0.0d0
            Y(INT(OpenAD_Symbol_26))%d = Y(INT(OpenAD_Symbol_26))%d+Open
     +AD_prp_0%d
            OpenAD_prp_0%d = 0.0d0
            OpenAD_Symbol_5 = INT(OpenAD_Symbol_5)+1
          END DO
          OpenAD_Symbol_3 = INT(OpenAD_Symbol_3)+1
        END DO
        OpenAD_Symbol_1 = INT(OpenAD_Symbol_1)+1
      END DO
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_6 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_7 = 1
      do while (INT(OpenAD_Symbol_7).LE.INT(OpenAD_Symbol_6))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_24 = integer_tape(integer_tape_pointer)
        X(INT(OpenAD_Symbol_24))%d = X(INT(OpenAD_Symbol_24))%d+Y(INT(Op
     +enAD_Symbol_24))%d
        Y(INT(OpenAD_Symbol_24))%d = 0.0d0
        OpenAD_Symbol_7 = INT(OpenAD_Symbol_7)+1
      END DO
          end if
        end subroutine head
