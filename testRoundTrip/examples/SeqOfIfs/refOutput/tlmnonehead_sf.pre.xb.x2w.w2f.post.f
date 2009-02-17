
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
      type(active) :: OpenAD_Symbol_0
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
        Y(1)%v = (X(2)%v-X(1)%v)
        CALL sax(1_w2f__i8,X(2),Y(1))
        CALL saxpy(-1_w2f__i8,X(1),Y(1))
      ELSE
        Y(1)%v = (X(1)%v-X(2)%v)
        CALL sax(1_w2f__i8,X(1),Y(1))
        CALL saxpy(-1_w2f__i8,X(2),Y(1))
      ENDIF
      IF (Y(1)%v.eq.0.0D00) THEN
        Y(2)%v = X(1)%v
        CALL setderiv(Y(2),X(1))
      ELSE
        Y(2)%v = Y(1)%v
        CALL setderiv(OpenAD_Symbol_0,Y(1))
        CALL setderiv(Y(2),OpenAD_Symbol_0)
      ENDIF
      END SUBROUTINE
