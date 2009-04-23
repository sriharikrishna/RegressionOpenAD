
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
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
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
      I = 1
      DO WHILE(I .LT. 3)
        IF(I .LT. 2) THEN
          OpenAD_Symbol_0 = SIN(__value__(X(1)))
          OpenAD_lin_0 = COS(__value__(X(1)))
          __value__(Y(2)) = OpenAD_Symbol_0
          CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(X(1)))
          CALL sax(OpenAD_lin_0, __deriv__(OpenAD_prop_0), __deriv__(Y(
     > 2)))
        ELSE
          OpenAD_Symbol_1 = COS(__value__(X(2)))
          OpenAD_lin_1 = (- SIN(__value__(X(2))))
          __value__(Y(1)) = OpenAD_Symbol_1
          CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(X(2)))
          CALL sax(OpenAD_lin_1, __deriv__(OpenAD_prop_1), __deriv__(Y(
     > 1)))
        ENDIF
        I = (I + 1)
      END DO
      OpenAD_Symbol_2 = (__value__(Y(1)) * __value__(Y(2)))
      OpenAD_lin_2 = __value__(Y(2))
      OpenAD_lin_3 = __value__(Y(1))
      __value__(Y(2)) = OpenAD_Symbol_2
      CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(Y(1)))
      CALL setderiv(__deriv__(OpenAD_prop_3), __deriv__(Y(2)))
      CALL sax(OpenAD_lin_2, __deriv__(OpenAD_prop_2), __deriv__(Y(2)))
      CALL saxpy(OpenAD_lin_3, __deriv__(OpenAD_prop_3), __deriv__(Y(2)
     > ))
      END SUBROUTINE
