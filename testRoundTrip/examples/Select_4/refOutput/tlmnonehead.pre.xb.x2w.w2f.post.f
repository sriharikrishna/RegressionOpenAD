

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_3
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
      INTEGER(w2f__i4) select_expr_temp_0
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
      Y(1)%v = (X(1)%v*3.0D00)
      CALL sax(3.0D00,X(1),Y(1))
      goto 11
 7    CONTINUE
      select_expr_temp_0 = I
      goto 8
 8    CONTINUE
      IF (select_expr_temp_0.ne.0) THEN
        goto 10
      ELSE
        goto 9
      ENDIF
 9    CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_3 = I
      CALL sax(OpenAD_lin_3,X(1),Y(1))
      RETURN
      goto 11
 10   CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_1 = I
      CALL sax(OpenAD_lin_1,X(1),Y(1))
      RETURN
      goto 11
 11   CONTINUE
      END SUBROUTINE
