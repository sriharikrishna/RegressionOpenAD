
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Top Level Pragmas ****
C
      interface  OAD_S_MAX
        module procedure  OAD_S_MAX_D

      end interface 
      
      interface  OAD_S_MIN
        module procedure  OAD_S_MIN_D

      end interface 
      
C
C     **** Statements ****
C
      CONTAINS

        SUBROUTINE OAD_S_MAX_D(A, B, R)
        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        REAL(w2f__8) A
        INTENT(IN)  A
        REAL(w2f__8) B
        INTENT(IN)  B
        REAL(w2f__8) R
        INTENT(OUT)  R
C
C       **** Statements ****
C
        IF(A .GT. B) THEN
          R = A
        ELSE
          R = B
        ENDIF
        END SUBROUTINE

        SUBROUTINE OAD_S_MIN_D(A, B, R)
        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        TYPE (OpenADTy_active) A
        INTENT(IN)  A
        TYPE (OpenADTy_active) B
        INTENT(IN)  B
        TYPE (OpenADTy_active) R
        INTENT(OUT)  R
C
C       **** Statements ****
C
        IF(__value__(A) .LT. __value__(B)) THEN
          __value__(R) = __value__(A)
          CALL setderiv(__deriv__(R), __deriv__(A))
        ELSE
          __value__(R) = __value__(B)
          CALL setderiv(__deriv__(R), __deriv__(B))
        ENDIF
        END SUBROUTINE
      END

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
      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1
      REAL(w2f__8) P1
      REAL(w2f__8) P2
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      P1 = 2.39999999999999991118D00
      P2 = (-3.0D+01)
      CALL OAD_S_MIN_D(__deriv__(X(1)), __deriv__(X(2)), __deriv__(
     > OAD_CTMP0))
      CALL OAD_S_MAX_D(P1, P2, OAD_CTMP1)
      __value__(Y(1)) = (__value__(OAD_CTMP0) * OAD_CTMP1)
      OpenAD_lin_0 = OAD_CTMP1
      CALL sax(OpenAD_lin_0, __deriv__(OAD_CTMP0), __deriv__(Y(1)))
      END SUBROUTINE
