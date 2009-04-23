

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      type(active) :: S
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      I = 1
      Y(1)%v = 0.0
      Y(2)%v = 0.0
      CALL zero_deriv(Y(1))
      CALL zero_deriv(Y(2))
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        S%v = X(I)%v
        CALL setderiv(S,X(I))
        IF (S%v.LT.0.0D00) THEN
          OpenAD_Symbol_0 = (X(I)%v*2.0D00)
          X(INT(I))%v = OpenAD_Symbol_0
          CALL setderiv(OpenAD_prop_0,X(I))
          CALL sax(2.0D00,OpenAD_prop_0,X(I))
        ELSE
          S%v = 0.0D00
          CALL zero_deriv(S)
        ENDIF
        Y(INT(I))%v = (X(I)%v+S%v)
        CALL setderiv(Y(I),X(I))
        CALL inc_deriv(Y(I),S)
      END DO
      END SUBROUTINE
