
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(X, Y, L, U, S)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      TYPE (OpenADTy_active) OpenAD_Symbol_3
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 5)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) U
      INTEGER(w2f__i4) S
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = L, U, S
        OpenAD_Symbol_2 = (__value__(X(I)) * __value__(Y))
        OpenAD_Symbol_0 = __value__(Y)
        OpenAD_Symbol_1 = __value__(X(I))
        __value__(Y) = OpenAD_Symbol_2
        CALL setderiv(__deriv__(OpenAD_Symbol_3), __deriv__(Y))
        CALL sax(OpenAD_Symbol_0, __deriv__(X(I)), __deriv__(Y))
        CALL saxpy(OpenAD_Symbol_1, __deriv__(OpenAD_Symbol_3),
     >  __deriv__(Y))
      END DO
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 5)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 4)
      INTENT(OUT)  Y
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
      __value__(Y(1 : 4)) = __value__(X(1 : 4))
      CALL setderiv(__deriv__(Y(1 : 4)), __deriv__(X(1 : 4)))
      CALL foo(__deriv__(X), __deriv__(Y(1)), 1, 3, 1)
      CALL foo(__deriv__(X), __deriv__(Y(2)), 3, 1, -1)
      CALL foo(__deriv__(X), __deriv__(Y(3)), 1, 5, 2)
      CALL foo(__deriv__(X), __deriv__(Y(4)), 5, 1, -2)
      END SUBROUTINE
