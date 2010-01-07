
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, OBJ)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_10
      REAL(w2f__8) OpenAD_acc_11
      REAL(w2f__8) OpenAD_acc_12
      REAL(w2f__8) OpenAD_acc_13
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_acc_8
      REAL(w2f__8) OpenAD_acc_9
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_17
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_19
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_26
      REAL(w2f__8) OpenAD_lin_27
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:6)
      type(active) :: OBJ(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A
      REAL(w2f__8) D00
      type(active) :: D03
      REAL(w2f__8) D11
      type(active) :: D12
      type(active) :: F
      type(active) :: G
      type(active) :: LOC1
      type(active) :: M00
      type(active) :: M03
      type(active) :: M11
      type(active) :: M12
      type(active) :: M22
      type(active) :: M33
      type(active) :: MATR(0:3)
      REAL(w2f__8) SQRT3
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(OBJ)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      A = 5.0D-01
      SQRT3 = 5.77350258827209472656D-01
      MATR(0)%v = (X(2)%v-X(1)%v)
      CALL setderiv(MATR(0),X(2))
      CALL dec_deriv(MATR(0),X(1))
      OpenAD_tmp_0 = (X(3)%v*2.0D00-X(2)%v-X(1)%v)
      MATR(1)%v = (SQRT3*OpenAD_tmp_0)
      OpenAD_lin_1 = SQRT3
      CALL set_neg_deriv(OpenAD_prop_0,X(1))
      CALL dec_deriv(OpenAD_prop_0,X(2))
      CALL saxpy(2.0D00,X(3),OpenAD_prop_0)
      CALL sax(OpenAD_lin_1,OpenAD_prop_0,MATR(1))
      MATR(2)%v = (X(5)%v-X(4)%v)
      CALL setderiv(MATR(2),X(5))
      CALL dec_deriv(MATR(2),X(4))
      OpenAD_tmp_1 = (X(6)%v*2.0D00-X(5)%v-X(4)%v)
      MATR(3)%v = (SQRT3*OpenAD_tmp_1)
      OpenAD_lin_4 = SQRT3
      CALL set_neg_deriv(OpenAD_prop_1,X(4))
      CALL dec_deriv(OpenAD_prop_1,X(5))
      CALL saxpy(2.0D00,X(6),OpenAD_prop_1)
      CALL sax(OpenAD_lin_4,OpenAD_prop_1,MATR(3))
      M03%v = (MATR(0)%v*MATR(3)%v)
      OpenAD_lin_6 = MATR(3)%v
      OpenAD_lin_7 = MATR(0)%v
      M12%v = (MATR(1)%v*MATR(2)%v)
      OpenAD_lin_8 = MATR(2)%v
      OpenAD_lin_9 = MATR(1)%v
      G%v = (M03%v-M12%v)
      D00 = (M03%v*2.0D00)
      D11 = (M12%v*2.0D00)
      M00%v = (MATR(0)%v*MATR(0)%v)
      OpenAD_lin_10 = MATR(0)%v
      OpenAD_lin_11 = MATR(0)%v
      M11%v = (MATR(1)%v*MATR(1)%v)
      OpenAD_lin_12 = MATR(1)%v
      OpenAD_lin_13 = MATR(1)%v
      M22%v = (MATR(2)%v*MATR(2)%v)
      OpenAD_lin_14 = MATR(2)%v
      OpenAD_lin_15 = MATR(2)%v
      M33%v = (MATR(3)%v*MATR(3)%v)
      OpenAD_lin_16 = MATR(3)%v
      OpenAD_lin_17 = MATR(3)%v
      D12%v = (M00%v*M33%v)
      OpenAD_lin_18 = M33%v
      OpenAD_lin_19 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_lin_20 = M22%v
      OpenAD_lin_21 = M11%v
      F%v = (D03%v+D12%v)
      OpenAD_tmp_2 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_tmp_2)
      OpenAD_lin_25 = (-(1.0D00/(G%v*G%v)))
      OpenAD_lin_23 = A
      OBJ(1)%v = (F%v*LOC1%v)
      OpenAD_lin_26 = LOC1%v
      OpenAD_lin_27 = F%v
      OpenAD_acc_0 = (OpenAD_lin_25*OpenAD_lin_23*OpenAD_lin_27)
      OpenAD_acc_1 = (OpenAD_lin_14*OpenAD_lin_21*OpenAD_lin_26)
      OpenAD_acc_2 = (OpenAD_lin_15*OpenAD_lin_21*OpenAD_lin_26)
      OpenAD_acc_3 = (OpenAD_lin_12*OpenAD_lin_20*OpenAD_lin_26)
      OpenAD_acc_4 = (OpenAD_lin_13*OpenAD_lin_20*OpenAD_lin_26)
      OpenAD_acc_5 = (OpenAD_lin_16*OpenAD_lin_19*OpenAD_lin_26)
      OpenAD_acc_6 = (OpenAD_lin_17*OpenAD_lin_19*OpenAD_lin_26)
      OpenAD_acc_7 = (OpenAD_lin_10*OpenAD_lin_18*OpenAD_lin_26)
      OpenAD_acc_8 = (OpenAD_lin_11*OpenAD_lin_18*OpenAD_lin_26)
      OpenAD_acc_9 = (INT((-1_w2f__i8))*OpenAD_acc_0)
      OpenAD_acc_10 = (OpenAD_lin_8*OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_9*OpenAD_acc_9)
      OpenAD_acc_12 = (OpenAD_lin_6*OpenAD_acc_0)
      OpenAD_acc_13 = (OpenAD_lin_7*OpenAD_acc_0)
      CALL sax(OpenAD_acc_1,MATR(2),OBJ(1))
      CALL saxpy(OpenAD_acc_2,MATR(2),OBJ(1))
      CALL saxpy(OpenAD_acc_3,MATR(1),OBJ(1))
      CALL saxpy(OpenAD_acc_4,MATR(1),OBJ(1))
      CALL saxpy(OpenAD_acc_5,MATR(3),OBJ(1))
      CALL saxpy(OpenAD_acc_6,MATR(3),OBJ(1))
      CALL saxpy(OpenAD_acc_7,MATR(0),OBJ(1))
      CALL saxpy(OpenAD_acc_8,MATR(0),OBJ(1))
      CALL saxpy(OpenAD_acc_10,MATR(1),OBJ(1))
      CALL saxpy(OpenAD_acc_11,MATR(2),OBJ(1))
      CALL saxpy(OpenAD_acc_12,MATR(0),OBJ(1))
      CALL saxpy(OpenAD_acc_13,MATR(3),OBJ(1))
      END SUBROUTINE
