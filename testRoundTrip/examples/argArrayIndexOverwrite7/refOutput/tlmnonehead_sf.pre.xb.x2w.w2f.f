
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
      SUBROUTINE foo(A)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      TYPE (OpenADTy_active) OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (__value__(A) * 2.0D00)
      __value__(A) = OpenAD_Symbol_0
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(A))
      CALL sax(2.0D00, __deriv__(OpenAD_prop_0), __deriv__(A))
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) A(1 : 4)
      EXTERNAL foo
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
      A(1) = 2
      A(2) = 1
      A(3) = 2
      A(4) = 3
      I = 1
      CALL foo(__deriv__(X(A(A(A(A(A(A(A(A(A(A(A(4))))))))))))))
      __value__(Y) = (__value__(X(1)) * __value__(X(2)))
      OpenAD_lin_1 = __value__(X(2))
      OpenAD_lin_2 = __value__(X(1))
      CALL sax(OpenAD_lin_1, __deriv__(X(1)), __deriv__(Y))
      CALL saxpy(OpenAD_lin_2, __deriv__(X(2)), __deriv__(Y))
      END SUBROUTINE
