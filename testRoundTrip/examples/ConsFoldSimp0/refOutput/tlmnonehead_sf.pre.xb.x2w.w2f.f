
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
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) T1
      TYPE (OpenADTy_active) T2
      TYPE (OpenADTy_active) Y1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(T1) = (__value__(X(1)) + __value__(X(1)))
      __value__(T2) = (__value__(T1) * 2.0D00)
      __value__(Y1) = __value__(T2)
      __value__(Y(1)) = __value__(Y1)
      CALL sax(1_w2f__i8, __deriv__(X(1)), __deriv__(T1))
      CALL saxpy(1_w2f__i8, __deriv__(X(1)), __deriv__(T1))
      CALL sax(2.0D00, __deriv__(T1), __deriv__(Y(1)))
      END SUBROUTINE
