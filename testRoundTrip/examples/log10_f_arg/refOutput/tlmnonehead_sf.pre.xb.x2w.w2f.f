
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
      TYPE (OpenADTy_active) OpenAD_prop_0
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
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = LOG10(__value__(X(1)))
      OpenAD_lin_0 = (INT(1_w2f__i8) /(__value__(X(1)) * LOG(1.0D+01)))
      __value__(Y(1)) = OpenAD_Symbol_0
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(X(1)))
      CALL sax(OpenAD_lin_0, __deriv__(OpenAD_prop_0), __deriv__(Y(1)))
      END SUBROUTINE