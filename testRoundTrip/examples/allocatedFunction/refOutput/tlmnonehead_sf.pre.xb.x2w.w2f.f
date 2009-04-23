
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
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) A(:)
      ALLOCATABLE A
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      ALLOCATE(A(2))
      __value__(A(1)) = (__value__(X(1)) * 2.0D00)
      CALL sax(2.0D00, __deriv__(X(1)), __deriv__(A(1)))
      __value__(A(2)) = (__value__(X(2)) * 2.0D00)
      CALL sax(2.0D00, __deriv__(X(2)), __deriv__(A(2)))
      IF(ALLOCATED(A)) THEN
        __value__(Y(1)) = (__value__(A(1)) * __value__(A(2)))
        OpenAD_lin_2 = __value__(A(2))
        OpenAD_lin_3 = __value__(A(1))
        CALL sax(OpenAD_lin_2, __deriv__(A(1)), __deriv__(Y(1)))
        CALL saxpy(OpenAD_lin_3, __deriv__(A(2)), __deriv__(Y(1)))
      ELSE
        __value__(Y(1)) = 0
        CALL zero_deriv(__deriv__(Y(1)))
      ENDIF
      DEALLOCATE(A)
      END SUBROUTINE
