      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_acc_2
      real(w2f__8) :: OpenAD_acc_3
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_5
      real(w2f__8) :: OpenAD_lin_6
      real(w2f__8) :: OpenAD_lin_7
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      type(active) :: T1
      type(active) :: T2
      type(active) :: Y1
      type(active) :: Y2
      type(active) :: Y3
      type(active) :: Y4
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T1%v = (X(1)%v/X(2)%v)
      OpenAD_lin_0 = (INT(1_w2f__i8)/X(2)%v)
      OpenAD_lin_1 = (-(X(1)%v/(X(2)%v*X(2)%v)))
      T2%v = COS(T1%v)
      OpenAD_lin_2 = (-SIN(T1%v))
      Y1%v = EXP(T2%v)
      OpenAD_lin_3 = EXP(T2%v)
      Y2%v = (T2%v*3.14000010490417480469D00)
      Y3%v = SIN(T2%v)
      OpenAD_lin_5 = COS(T2%v)
      Y4%v = (T1%v*T2%v)
      OpenAD_lin_6 = T2%v
      OpenAD_lin_7 = T1%v
      Y(1)%v = Y1%v
      OpenAD_acc_0 = (OpenAD_lin_6+OpenAD_lin_2*OpenAD_lin_7)
      OpenAD_acc_1 = (OpenAD_lin_2*3.14000010490417480469D00)
      OpenAD_acc_2 = (OpenAD_lin_2*OpenAD_lin_5)
      OpenAD_acc_3 = (OpenAD_lin_2*OpenAD_lin_3)
      CALL sax(OpenAD_lin_0,X(1),T1)
      CALL saxpy(OpenAD_lin_1,X(2),T1)
      CALL sax(OpenAD_acc_1,T1,Y2)
      CALL sax(OpenAD_acc_2,T1,Y3)
      CALL sax(OpenAD_acc_0,T1,Y4)
      CALL sax(OpenAD_acc_3,T1,Y(1))
      Y(2)%v = Y2%v
      CALL setderiv(Y(2),Y2)
      Y(3)%v = Y3%v
      CALL setderiv(Y(3),Y3)
      Y(4)%v = Y4%v
      CALL setderiv(Y(4),Y4)
      END SUBROUTINE
