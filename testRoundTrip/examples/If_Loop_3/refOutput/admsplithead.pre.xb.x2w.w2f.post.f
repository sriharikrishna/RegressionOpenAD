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
      INTEGER(w2f__i8) OpenAD_Symbol_24
      INTEGER(w2f__i8) OpenAD_Symbol_25
      INTEGER(w2f__i8) OpenAD_Symbol_26
      INTEGER(w2f__i8) OpenAD_Symbol_27
      INTEGER(w2f__i8) OpenAD_Symbol_28
      INTEGER(w2f__i8) OpenAD_Symbol_29
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
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_dly_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1


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
      DO I = 1, 1, 1
        Y(1)%v = X(1)%v
        IF (Y(1)%v.GT.0.0D00) THEN
          Y(1)%v = X(1)%v
          DO J = 1,3,1
            Y(1)%v = X(1)%v
            DO K = 1,3,1
              Y(1)%v = X(1)%v
              IF (X(1)%v.GT.0.0D00) THEN
                Y(1)%v = (X(1)%v*Y(1)%v)
              ENDIF
            END DO
          END DO
        ELSE
          Y(1)%v = (Y(1)%v/X(1)%v)
        ENDIF
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_8 = 0_w2f__i8
      DO I = 1,1,1
        Y(1)%v = X(1)%v
        IF (Y(1)%v.GT.0.0D00) THEN
          Y(1)%v = X(1)%v
          OpenAD_Symbol_9 = 0_w2f__i8
          DO J = 1,3,1
            Y(1)%v = X(1)%v
            OpenAD_Symbol_10 = 0_w2f__i8
            DO K = 1,3,1
              Y(1)%v = X(1)%v
              IF (X(1)%v.GT.0.0D00) THEN
                OpenAD_dly_0 = (X(1)%v*Y(1)%v)
                OpenAD_lin_0 = Y(1)%v
                OpenAD_lin_1 = X(1)%v
                Y(1)%v = OpenAD_dly_0
                double_tape(double_tape_pointer) = OpenAD_lin_0
                double_tape_pointer = double_tape_pointer+1
                double_tape(double_tape_pointer) = OpenAD_lin_1
                double_tape_pointer = double_tape_pointer+1
                OpenAD_Symbol_11 = 1_w2f__i8
                integer_tape(integer_tape_pointer) = OpenAD_Symbol_11
                integer_tape_pointer = integer_tape_pointer+1
              ELSE
                OpenAD_Symbol_12 = 0_w2f__i8
                integer_tape(integer_tape_pointer) = OpenAD_Symbol_12
                integer_tape_pointer = integer_tape_pointer+1
              ENDIF
              OpenAD_Symbol_10 = (INT(OpenAD_Symbol_10)+INT(1_w2f__i8))
            END DO
            integer_tape(integer_tape_pointer) = OpenAD_Symbol_10
            integer_tape_pointer = integer_tape_pointer+1
            OpenAD_Symbol_9 = (INT(OpenAD_Symbol_9)+INT(1_w2f__i8))
          END DO
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_9
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_14 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_14
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          OpenAD_dly_1 = (Y(1)%v/X(1)%v)
          OpenAD_lin_2 = (INT(1_w2f__i8)/X(1)%v)
          OpenAD_lin_3 = (-(Y(1)%v/(X(1)%v*X(1)%v)))
          Y(1)%v = OpenAD_dly_1
          double_tape(double_tape_pointer) = OpenAD_lin_2
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_3
          double_tape_pointer = double_tape_pointer+1
          OpenAD_Symbol_13 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_13
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_8 = (INT(OpenAD_Symbol_8)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
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
        IF (OpenAD_Symbol_2.ne.0) THEN
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
          OpenAD_Symbol_4 = 1
          do while (INT(OpenAD_Symbol_4).LE.INT(OpenAD_Symbol_3))
            integer_tape_pointer = integer_tape_pointer-1
            OpenAD_Symbol_5 = integer_tape(integer_tape_pointer)
            OpenAD_Symbol_6 = 1
            do while (INT(OpenAD_Symbol_6).LE.INT(OpenAD_Symbol_5))
              integer_tape_pointer = integer_tape_pointer-1
              OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
              IF (OpenAD_Symbol_7.ne.0) THEN
                double_tape_pointer = double_tape_pointer-1
                OpenAD_Symbol_30 = double_tape(double_tape_pointer)
                double_tape_pointer = double_tape_pointer-1
                OpenAD_Symbol_31 = double_tape(double_tape_pointer)
                OpenAD_prp_0%d = OpenAD_prp_0%d+Y(1)%d*(OpenAD_Symbol_30
     +)
                X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_31)
                Y(1)%d = 0.0d0
                Y(1)%d = Y(1)%d+OpenAD_prp_0%d
                OpenAD_prp_0%d = 0.0d0
              ENDIF
              X(1)%d = X(1)%d+Y(1)%d
              Y(1)%d = 0.0d0
              OpenAD_Symbol_6 = INT(OpenAD_Symbol_6)+1
            END DO
            X(1)%d = X(1)%d+Y(1)%d
            Y(1)%d = 0.0d0
            OpenAD_Symbol_4 = INT(OpenAD_Symbol_4)+1
          END DO
          X(1)%d = X(1)%d+Y(1)%d
          Y(1)%d = 0.0d0
        ELSE
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_32 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_33 = double_tape(double_tape_pointer)
          X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_32)
          OpenAD_prp_1%d = OpenAD_prp_1%d+Y(1)%d*(OpenAD_Symbol_33)
          Y(1)%d = 0.0d0
          Y(1)%d = Y(1)%d+OpenAD_prp_1%d
          OpenAD_prp_1%d = 0.0d0
        ENDIF
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
        OpenAD_Symbol_1 = INT(OpenAD_Symbol_1)+1
      END DO
          end if
        end subroutine head
