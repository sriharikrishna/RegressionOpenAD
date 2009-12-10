
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
      MODULE m
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Top Level Pragmas ****
C
      interface  FOO
        module procedure  OpenAD_FOO_I

      end interface 
      
C
C     **** Statements ****
C
      CONTAINS

        SUBROUTINE OpenAD_FOO_I(X)
        use w2f__types
        use oad_intrinsics
        IMPLICIT NONE
C
C       **** Global Variables & Derived Type Definitions ****
C
        REAL(w2f__8) OpenAD_Symbol_0
        TYPE (OpenADTy_active) OpenAD_prop_0
C
C       **** Parameters and Result ****
C
        TYPE (OpenADTy_active) X
C
C       **** Statements ****
C
        OpenAD_Symbol_0 = (__value__(X) * 2.0D00)
        __value__(X) = OpenAD_Symbol_0
        CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(X))
        CALL sax(2.0D00, __deriv__(OpenAD_prop_0), __deriv__(X))
        END SUBROUTINE
      END

      SUBROUTINE OpenAD_head(X, Y)
      use w2f__types
      use oad_intrinsics
      use m
      IMPLICIT NONE
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
      CALL OpenAD_FOO_I(__deriv__(X(1)))
      __value__(Y(1)) = __value__(X(1))
      CALL setderiv(__deriv__(Y(1)), __deriv__(X(1)))
      END SUBROUTINE
