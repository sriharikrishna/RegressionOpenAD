
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
      REAL(w2f__8) OpenAD_lin_0
      TYPE (OpenADTy_active) OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
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
      OpenAD_tmp_0 = DBLE(__value__(X(1)))
      OpenAD_tmp_1 = DBLE(2)
      __value__(Y(1)) = (OpenAD_tmp_0 * OpenAD_tmp_1)
      OpenAD_lin_0 = OpenAD_tmp_1
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(X(1)))
      CALL sax(OpenAD_lin_0, __deriv__(OpenAD_prop_0), __deriv__(Y(1)))
      END SUBROUTINE