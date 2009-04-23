

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      type(active) :: OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: GAMMA
      type(active) :: NU
      type(active) :: OMEGA
      type(active) :: T
      type(active) :: V
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
      NU%v = X(1)%v
      GAMMA%v = X(2)%v
      OMEGA%v = X(3)%v
      T%v = X(4)%v
      OpenAD_tmp_0 = TAN(OMEGA%v*T%v)
      OpenAD_lin_1 = T%v
      OpenAD_lin_2 = OMEGA%v
      OpenAD_lin_0 = (OpenAD_tmp_0 * OpenAD_tmp_0 + INT(1_w2f__i8))
      V%v = OpenAD_tmp_0
      OpenAD_tmp_1 = (NU%v*V%v)
      OpenAD_tmp_2 = (GAMMA%v-V%v)
      Y(1)%v = (OpenAD_tmp_1/OpenAD_tmp_2)
      OpenAD_lin_5 = V%v
      OpenAD_lin_6 = NU%v
      OpenAD_lin_3 = (INT(1_w2f__i8) / OpenAD_tmp_2)
      OpenAD_lin_4 = (-(OpenAD_tmp_1 /(OpenAD_tmp_2 * OpenAD_tmp_2)))
      OpenAD_acc_0 = (OpenAD_lin_6 * OpenAD_lin_3 + INT((-1_w2f__i8)) *
     >  OpenAD_lin_4)
      OpenAD_acc_1 = (OpenAD_lin_5 * OpenAD_lin_3)
      OpenAD_acc_2 = (OpenAD_lin_1 * OpenAD_lin_0 * OpenAD_acc_0)
      OpenAD_acc_3 = (OpenAD_lin_2 * OpenAD_lin_0 * OpenAD_acc_0)
      CALL setderiv(GAMMA,X(2))
      CALL sax(OpenAD_acc_1,X(1),Y(1))
      CALL saxpy(OpenAD_acc_2,X(3),Y(1))
      CALL saxpy(OpenAD_acc_3,X(4),Y(1))
      CALL saxpy(OpenAD_lin_4,GAMMA,Y(1))
      OpenAD_Symbol_0 = (Y(1)%v*GAMMA%v)
      OpenAD_lin_7 = GAMMA%v
      OpenAD_lin_8 = Y(1)%v
      Y(2)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,Y(1))
      CALL sax(OpenAD_lin_7,OpenAD_prop_0,Y(2))
      CALL saxpy(OpenAD_lin_8,GAMMA,Y(2))
      END SUBROUTINE
