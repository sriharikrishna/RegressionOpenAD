
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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
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
      GO TO 3
3     CONTINUE
      OpenAD_Symbol_0 = (__value__(X(1)) * __value__(X(1)))
      OpenAD_lin_0 = __value__(X(1))
      OpenAD_lin_1 = __value__(X(1))
      __value__(X(1)) = OpenAD_Symbol_0
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(X(1)))
      CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(X(1)))
      CALL sax(OpenAD_lin_0, __deriv__(OpenAD_prop_0), __deriv__(X(1)))
      CALL saxpy(OpenAD_lin_1, __deriv__(OpenAD_prop_1), __deriv__(X(1)
     > ))
      GO TO 4
4     CONTINUE
      OpenAD_Symbol_1 = (__value__(X(1)) * 3.0D00)
      __value__(X(1)) = OpenAD_Symbol_1
      CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(X(1)))
      CALL sax(3.0D00, __deriv__(OpenAD_prop_2), __deriv__(X(1)))
      GO TO 5
5     CONTINUE
      OpenAD_Symbol_2 = (__value__(X(1)) * 2.0D00)
      __value__(X(1)) = OpenAD_Symbol_2
      CALL setderiv(__deriv__(OpenAD_prop_3), __deriv__(X(1)))
      CALL sax(2.0D00, __deriv__(OpenAD_prop_3), __deriv__(X(1)))
      GO TO 6
6     CONTINUE
      __value__(Y(1)) = __value__(X(1))
      CALL setderiv(__deriv__(Y(1)), __deriv__(X(1)))
      GO TO 7
7     CONTINUE
      END SUBROUTINE
