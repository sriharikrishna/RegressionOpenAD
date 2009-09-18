

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
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
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
 1    CONTINUE
      goto 2
 2    CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      goto 3
 3    CONTINUE
      IF (X(1)%v.LT.1.0D00) THEN
        goto 7
      ELSE
        goto 4
      ENDIF
 4    CONTINUE
      goto 5
 5    CONTINUE
      goto 6
 6    CONTINUE
      OpenAD_Symbol_1 = (Y(1)%v*2.0D00)
      Y(1)%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_prop_1,Y(1))
      CALL sax(2.0D00,OpenAD_prop_1,Y(1))
      goto 9
 7    CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_1 = I
      CALL sax(OpenAD_lin_1,X(1),Y(1))
      goto 8
 8    CONTINUE
      OpenAD_Symbol_0 = (Y(1)%v*3.0D00)
      Y(1)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,Y(1))
      CALL sax(3.0D00,OpenAD_prop_0,Y(1))
      goto 9
 9    CONTINUE
      goto 10
 10   CONTINUE
      END SUBROUTINE
