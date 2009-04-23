
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
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
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
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = 1.0D00
      CALL zero_deriv(__deriv__(Y(1)))
      DO I = 1, 2, 1
        IF(__value__(X(1)) .GE. 1.0D00) THEN
          OpenAD_Symbol_0 = (__value__(X(1)) * __value__(Y(1)))
          OpenAD_lin_0 = __value__(Y(1))
          OpenAD_lin_1 = __value__(X(1))
          __value__(Y(1)) = OpenAD_Symbol_0
          CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(Y(1)))
          CALL sax(OpenAD_lin_0, __deriv__(X(1)), __deriv__(Y(1)))
          CALL saxpy(OpenAD_lin_1, __deriv__(OpenAD_prop_0), __deriv__(
     > Y(1)))
        ELSE
          __value__(Y(1)) = (__value__(Y(1)) - __value__(X(1)))
          CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(Y(1)))
          CALL setderiv(__deriv__(Y(1)), __deriv__(OpenAD_prop_1))
          CALL dec_deriv(__deriv__(Y(1)), __deriv__(X(1)))
        ENDIF
      END DO
      END SUBROUTINE
