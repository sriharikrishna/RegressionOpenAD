

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      type(active) :: X
      INTENT(IN)  X
      type(active) :: Y
      INTENT(OUT)  Y
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_0 = (X%v*X%v)
      Y%v = SIN(OpenAD_tmp_0)
      OpenAD_lin_1 = X%v
      OpenAD_lin_2 = X%v
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      OpenAD_acc_0 = (OpenAD_lin_1*OpenAD_lin_0)
      OpenAD_acc_1 = (OpenAD_lin_2*OpenAD_lin_0)
      CALL sax(OpenAD_acc_0,X,Y)
      CALL saxpy(OpenAD_acc_1,X,Y)
      END SUBROUTINE
