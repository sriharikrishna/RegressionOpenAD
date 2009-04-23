
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(A)
      use w2f__types
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

      SUBROUTINE bar(A, K)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_lin_2
      TYPE (OpenADTy_active) OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
      INTEGER(w2f__i4) K
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      K = (K * 2)
      OpenAD_Symbol_1 = (K * __value__(A))
      OpenAD_lin_2 = K
      __value__(A) = OpenAD_Symbol_1
      CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(A))
      CALL sax(OpenAD_lin_2, __deriv__(OpenAD_prop_1), __deriv__(A))
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
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
      I = 1
      CALL foo(__deriv__(X(I)))
      CALL bar(__deriv__(X(I + 1)), I)
      __value__(Y) = (__value__(X(1)) * __value__(X(2)))
      OpenAD_lin_3 = __value__(X(2))
      OpenAD_lin_4 = __value__(X(1))
      CALL sax(OpenAD_lin_3, __deriv__(X(1)), __deriv__(Y))
      CALL saxpy(OpenAD_lin_4, __deriv__(X(2)), __deriv__(Y))
      END SUBROUTINE
