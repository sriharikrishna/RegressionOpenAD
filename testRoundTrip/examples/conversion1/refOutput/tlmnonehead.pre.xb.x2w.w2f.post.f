

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_0
      type(active) :: OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_0 = DBLE(X(1)%v)
      OpenAD_tmp_1 = DBLE(2)
      Y(1)%v = (OpenAD_tmp_0*OpenAD_tmp_1)
      OpenAD_lin_0 = OpenAD_tmp_1
      CALL setderiv(OpenAD_prop_0,X(1))
      CALL sax(OpenAD_lin_0,OpenAD_prop_0,Y(1))
      END SUBROUTINE
