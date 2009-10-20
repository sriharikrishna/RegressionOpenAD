

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN) X
      type(active) :: Y(1:1)
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y(1)%v = 1.0D00
      CALL zero_deriv(Y(1))
      DO I = 1,2,1
        IF (X(1)%v.GE.1.0D00) THEN
          OpenAD_Symbol_0 = (X(1)%v*Y(1)%v)
          OpenAD_lin_0 = Y(1)%v
          OpenAD_lin_1 = X(1)%v
          Y(1)%v = OpenAD_Symbol_0
          CALL setderiv(OpenAD_prop_0,Y(1))
          CALL sax(OpenAD_lin_0,X(1),Y(1))
          CALL saxpy(OpenAD_lin_1,OpenAD_prop_0,Y(1))
        ELSE
          Y(1)%v = (Y(1)%v-X(1)%v)
          CALL setderiv(OpenAD_prop_1,Y(1))
          CALL setderiv(Y(1),OpenAD_prop_1)
          CALL dec_deriv(Y(1),X(1))
        ENDIF
      END DO
      END SUBROUTINE
