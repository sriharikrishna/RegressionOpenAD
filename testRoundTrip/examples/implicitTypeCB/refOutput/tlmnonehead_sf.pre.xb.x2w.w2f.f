
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo()
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      SAVE /cb/
      COMMON /cb/ S, T
      TYPE (OpenADTy_active) S
      TYPE (OpenADTy_active) T
      REAL(w2f__8) OpenAD_lin_0
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(T) = SIN(__value__(S))
      OpenAD_lin_0 = COS(__value__(S))
      CALL sax(OpenAD_lin_0, __deriv__(S), __deriv__(T))
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      SAVE /cb/
      COMMON /cb/ S, T
      TYPE (OpenADTy_active) S
      TYPE (OpenADTy_active) T
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(S) = __value__(X(1))
      CALL setderiv(__deriv__(S), __deriv__(X(1)))
      CALL foo()
      __value__(Y(1)) = __value__(T)
      CALL setderiv(__deriv__(Y(1)), __deriv__(T))
      END SUBROUTINE
