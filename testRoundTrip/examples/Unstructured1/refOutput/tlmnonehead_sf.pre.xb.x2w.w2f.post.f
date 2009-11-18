
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
 2    CONTINUE
      GO TO 3
 3    CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 4
 4    CONTINUE
      IF (X(1)%v.LT.1.0D00) THEN
        GO TO 8
      ELSE
        GO TO 5
      ENDIF
 5    CONTINUE
      GO TO 6
 6    CONTINUE
      GO TO 7
 7    CONTINUE
      OpenAD_Symbol_1 = (Y(1)%v*2.0D00)
      Y(1)%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_prop_1,Y(1))
      CALL sax(2.0D00,OpenAD_prop_1,Y(1))
      GO TO 10
 8    CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_1 = I
      CALL sax(OpenAD_lin_1,X(1),Y(1))
      GO TO 9
 9    CONTINUE
      OpenAD_Symbol_0 = (Y(1)%v*3.0D00)
      Y(1)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,Y(1))
      CALL sax(3.0D00,OpenAD_prop_0,Y(1))
      GO TO 10
 10   CONTINUE
      GO TO 11
 11   CONTINUE
      GO TO 1
 1    CONTINUE
      END SUBROUTINE
