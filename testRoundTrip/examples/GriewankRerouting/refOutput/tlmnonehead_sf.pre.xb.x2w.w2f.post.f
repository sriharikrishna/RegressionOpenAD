
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE ad_reroute(X1, X2, Y1, Y2)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
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
C
C     **** Parameters and Result ****
C
      type(active) :: X1
      INTENT(IN)  X1
      type(active) :: X2
      INTENT(IN)  X2
      type(active) :: Y1
      type(active) :: Y2
C
C     **** Local Variables and Functions ****
C
      type(active) :: T1
      type(active) :: T2
      type(active) :: T3
      type(active) :: T4
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y1)
C$OPENAD DEPENDENT(Y2)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T1%v = X1%v
      T2%v = X2%v
      T3%v = (T1%v/T2%v)
      OpenAD_lin_0 = (INT(1_w2f__i8)/T2%v)
      OpenAD_lin_1 = (-(T1%v/(T2%v*T2%v)))
      T4%v = (T1%v*T2%v)
      OpenAD_lin_2 = T2%v
      OpenAD_lin_3 = T1%v
      Y1%v = (T3%v*T4%v)
      OpenAD_lin_4 = T4%v
      OpenAD_lin_5 = T3%v
      Y2%v = (T3%v/T4%v)
      OpenAD_lin_6 = (INT(1_w2f__i8)/T4%v)
      OpenAD_lin_7 = (-(T3%v/(T4%v*T4%v)))
      OpenAD_acc_0 = (OpenAD_lin_3 * OpenAD_lin_5 + OpenAD_lin_1 *
     >  OpenAD_lin_4)
      OpenAD_acc_1 = (OpenAD_lin_3 * OpenAD_lin_7 + OpenAD_lin_1 *
     >  OpenAD_lin_6)
      OpenAD_acc_2 = (OpenAD_lin_2 * OpenAD_lin_7 + OpenAD_lin_0 *
     >  OpenAD_lin_6)
      OpenAD_acc_3 = (OpenAD_lin_2 * OpenAD_lin_5 + OpenAD_lin_0 *
     >  OpenAD_lin_4)
      CALL sax(OpenAD_acc_0,X2,Y1)
      CALL saxpy(OpenAD_acc_3,X1,Y1)
      CALL sax(OpenAD_acc_1,X2,Y2)
      CALL saxpy(OpenAD_acc_2,X1,Y2)
      END SUBROUTINE
