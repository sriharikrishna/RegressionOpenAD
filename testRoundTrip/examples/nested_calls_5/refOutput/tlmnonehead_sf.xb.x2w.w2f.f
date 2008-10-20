
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
      CALL foo(__deriv__(X(I)), __deriv__(X(I + 1)), __deriv__(Y(1)))
      END SUBROUTINE

      SUBROUTINE foo(A, B, C)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
      TYPE (OpenADTy_active) B
      TYPE (OpenADTy_active) C
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(C) = (__value__(B) + __value__(A) * __value__(A))
      OpenAD_Symbol_0 = 1_w2f__i8
      OpenAD_Symbol_2 = __value__(A)
      OpenAD_Symbol_3 = __value__(A)
      OpenAD_Symbol_1 = 1_w2f__i8
      CALL sax(OpenAD_Symbol_2, __deriv__(A), __deriv__(C))
      CALL saxpy(OpenAD_Symbol_3, __deriv__(A), __deriv__(C))
      CALL saxpy(1_w2f__i8, __deriv__(B), __deriv__(C))
      END SUBROUTINE