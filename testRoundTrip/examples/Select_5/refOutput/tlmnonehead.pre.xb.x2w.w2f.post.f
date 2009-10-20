

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_8
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
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
      INTEGER(w2f__i4) select_expr_temp_0
      INTEGER(w2f__i4) select_expr_temp_1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
 1    CONTINUE
      GO TO 2
 2    CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 3
 3    CONTINUE
      IF (X(1)%v.LT.1.0D00) THEN
        GO TO 5
      ELSE
        GO TO 4
      ENDIF
 4    CONTINUE
      GO TO 10
 5    CONTINUE
      select_expr_temp_0 = I
      GO TO 6
 6    CONTINUE
      IF (select_expr_temp_0.ne.0) THEN
        GO TO 17
      ELSE
        GO TO 7
      ENDIF
 7    CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_3 = I
      CALL sax(OpenAD_lin_3,X(1),Y(1))
      GO TO 8
 8    CONTINUE
      GO TO 9
 9    CONTINUE
      GO TO 10
 10   CONTINUE
      GO TO 11
 11   CONTINUE
      OpenAD_Symbol_0 = (Y(1)%v*4.0D00)
      Y(1)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,Y(1))
      CALL sax(4.0D00,OpenAD_prop_0,Y(1))
      select_expr_temp_1 = I
      GO TO 12
 12   CONTINUE
      IF (select_expr_temp_1.ne.0) THEN
        GO TO 16
      ELSE
        GO TO 13
      ENDIF
 13   CONTINUE
      OpenAD_Symbol_2 = (I*Y(1)%v)
      OpenAD_lin_8 = I
      Y(1)%v = OpenAD_Symbol_2
      CALL setderiv(OpenAD_prop_2,Y(1))
      CALL sax(OpenAD_lin_8,OpenAD_prop_2,Y(1))
      GO TO 14
 14   CONTINUE
      GO TO 15
 15   CONTINUE
      GO TO 18
 16   CONTINUE
      OpenAD_Symbol_1 = (I*Y(1)%v)
      OpenAD_lin_6 = I
      Y(1)%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_prop_1,Y(1))
      CALL sax(OpenAD_lin_6,OpenAD_prop_1,Y(1))
      RETURN
      GO TO 18
 17   CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_1 = I
      CALL sax(OpenAD_lin_1,X(1),Y(1))
      RETURN
      GO TO 18
 18   CONTINUE
      END SUBROUTINE
