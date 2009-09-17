

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) PI
      PARAMETER ( PI = 3.141592653589793116D00)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_1 = (X(1)%v*2.0D00)
      OpenAD_tmp_0 = (OpenAD_tmp_1*3.141592653589793116D00)
      Y(1)%v = SIN(OpenAD_tmp_0)
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      OpenAD_acc_0 = (2.0D00*3.141592653589793116D00*OpenAD_lin_0)
      CALL sax(OpenAD_acc_0,X(1),Y(1))
      END SUBROUTINE
