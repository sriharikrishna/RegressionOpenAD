
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_3
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 1)
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
1     CONTINUE
      GO TO 2
2     CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 3
3     CONTINUE
      IF(__value__(X(1)) .LT. 1.0D00) THEN
        GO TO 7
      ELSE
        GO TO 4
      ENDIF
4     CONTINUE
      GO TO 5
5     CONTINUE
      GO TO 6
6     CONTINUE
      __value__(Y(1)) = (__value__(X(1)) * 3.0D00)
      CALL sax(3.0D00, __deriv__(X(1)), __deriv__(Y(1)))
      GO TO 11
7     CONTINUE
      select_expr_temp_0 = I
      GO TO 8
8     CONTINUE
      IF(select_expr_temp_0 .ne. 0) THEN
        GO TO 10
      ELSE
        GO TO 9
      ENDIF
9     CONTINUE
      __value__(Y(1)) = (I * __value__(X(1)))
      OpenAD_lin_3 = I
      CALL sax(OpenAD_lin_3, __deriv__(X(1)), __deriv__(Y(1)))
      RETURN
      GO TO 11
10    CONTINUE
      __value__(Y(1)) = (I * __value__(X(1)))
      OpenAD_lin_1 = I
      CALL sax(OpenAD_lin_1, __deriv__(X(1)), __deriv__(Y(1)))
      RETURN
      GO TO 11
11    CONTINUE
      END SUBROUTINE
