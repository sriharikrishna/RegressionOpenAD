
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      INTENT(IN)  X
      type(active) :: Y(1:2)
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
      IF (X(1)%v.LE.X(2)%v) THEN
        IF (X(1)%v.eq.X(2)%v) THEN
          Y(1)%v = (X(1)%v*X(1)%v)
          OpenAD_Symbol_0 = X(1)%v
          OpenAD_Symbol_1 = X(1)%v
          CALL sax(OpenAD_Symbol_0,X(1),Y(1))
          CALL saxpy(OpenAD_Symbol_1,X(1),Y(1))
        ELSE
          Y(1)%v = (X(2)%v-X(1)%v)
          CALL setderiv(Y(1),X(2))
          CALL dec_deriv(Y(1),X(1))
        ENDIF
      ELSE
        Y(1)%v = (X(1)%v-X(2)%v)
        CALL setderiv(Y(1),X(1))
        CALL dec_deriv(Y(1),X(2))
      ENDIF
      Y(2)%v = Y(1)%v
      CALL setderiv(OpenAD_Symbol_2,Y(1))
      CALL setderiv(Y(2),OpenAD_Symbol_2)
      END SUBROUTINE
