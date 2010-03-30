
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      INTENT(IN) X
      type(active) :: Y(1:3)
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      type(active) :: T
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prp_0
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_0 = (X(1)%v*X(2)%v)
      T%v = (X(3)%v*OpenAD_lin_0)
      OpenAD_lin_1 = OpenAD_lin_0
      OpenAD_lin_3 = X(2)%v
      OpenAD_lin_4 = X(1)%v
      OpenAD_lin_2 = X(3)%v
      Y(1)%v = SIN(T%v)
      OpenAD_lin_5 = COS(T%v)
      OpenAD_acc_0 = (OpenAD_lin_3*OpenAD_lin_2)
      OpenAD_acc_1 = (OpenAD_lin_4*OpenAD_lin_2)
      CALL sax(OpenAD_lin_1,X(3),T)
      CALL saxpy(OpenAD_acc_0,X(1),T)
      CALL saxpy(OpenAD_acc_1,X(2),T)
      CALL sax(OpenAD_lin_5,T,Y(1))
      OpenAD_lin_6 = (X(4)%v*T%v)
      OpenAD_dly_0 = (X(5)%v*OpenAD_lin_6)
      OpenAD_lin_7 = OpenAD_lin_6
      OpenAD_lin_9 = T%v
      OpenAD_lin_10 = X(4)%v
      OpenAD_lin_8 = X(5)%v
      T%v = OpenAD_dly_0
      Y(2)%v = SIN(T%v)
      OpenAD_lin_11 = COS(T%v)
      OpenAD_acc_2 = (OpenAD_lin_9*OpenAD_lin_8)
      OpenAD_acc_3 = (OpenAD_lin_10*OpenAD_lin_8)
      CALL setderiv(OpenAD_prp_0,T)
      CALL sax(OpenAD_lin_7,X(5),T)
      CALL saxpy(OpenAD_acc_2,X(4),T)
      CALL saxpy(OpenAD_acc_3,OpenAD_prp_0,T)
      CALL sax(OpenAD_lin_11,T,Y(2))
      Y(3)%v = COS(T%v)
      OpenAD_lin_12 = (-SIN(T%v))
      CALL sax(OpenAD_lin_12,T,Y(3))
      END SUBROUTINE
