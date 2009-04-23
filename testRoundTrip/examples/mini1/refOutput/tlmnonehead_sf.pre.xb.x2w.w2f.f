
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
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y
      INTENT(OUT)  Y
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_0 = (__value__(X) * __value__(X))
      __value__(Y) = SIN(OpenAD_tmp_0)
      OpenAD_lin_1 = __value__(X)
      OpenAD_lin_2 = __value__(X)
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      OpenAD_acc_0 = (OpenAD_lin_1 * OpenAD_lin_0)
      OpenAD_acc_1 = (OpenAD_lin_2 * OpenAD_lin_0)
      CALL sax(OpenAD_acc_0, __deriv__(X), __deriv__(Y))
      CALL saxpy(OpenAD_acc_1, __deriv__(X), __deriv__(Y))
      END SUBROUTINE
