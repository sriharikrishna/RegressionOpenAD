
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
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) OAD_CTMP0
      EXTERNAL oad_s_min_d
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL oad_s_min_d(__deriv__(X(1)), __deriv__(X(2)), __deriv__(
     > OAD_CTMP0))
      __value__(Y(1)) = __value__(OAD_CTMP0)
      CALL setderiv(__deriv__(Y(1)), __deriv__(OAD_CTMP0))
      END SUBROUTINE

      SUBROUTINE oad_s_min_d(A, B, R)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
      INTENT(IN)  A
      TYPE (OpenADTy_active) B
      INTENT(IN)  B
      TYPE (OpenADTy_active) R
      INTENT(OUT)  R
C
C     **** Statements ****
C
      IF(__value__(A) .LT. __value__(B)) THEN
        __value__(R) = __value__(A)
        CALL setderiv(__deriv__(R), __deriv__(A))
      ELSE
        __value__(R) = __value__(B)
        CALL setderiv(__deriv__(R), __deriv__(B))
      ENDIF
      END SUBROUTINE
