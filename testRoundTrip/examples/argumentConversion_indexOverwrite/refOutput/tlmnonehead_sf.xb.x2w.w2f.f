
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      MODULE globals
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i4) I
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(P, Q)
      use w2f__types
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      TYPE (OpenADTy_active) OpenAD_Symbol_8
      TYPE (OpenADTy_active) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) P
      INTENT(IN)  P
      TYPE (OpenADTy_active) Q
C
C     **** Statements ****
C
      OpenAD_Symbol_4 = (__value__(P) * __value__(Q))
      OpenAD_Symbol_2 = __value__(Q)
      OpenAD_Symbol_3 = __value__(P)
      __value__(Q) = OpenAD_Symbol_4
      CALL setderiv(__deriv__(OpenAD_Symbol_8), __deriv__(P))
      CALL setderiv(__deriv__(OpenAD_Symbol_9), __deriv__(Q))
      CALL sax(OpenAD_Symbol_2, __deriv__(OpenAD_Symbol_8), __deriv__(Q
     > ))
      CALL saxpy(OpenAD_Symbol_3, __deriv__(OpenAD_Symbol_9), __deriv__
     > (Q))
      I = I + 1
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_0
      TYPE (OpenADTy_active) OpenAD_Symbol_10
      TYPE (OpenADTy_active) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__8) V(1 : 2)
      INTEGER(w2f__i8) OpenAD_Symbol_1
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
      V(1) = 9.085830301E-03
      V(2) = (-2.9846420512E-04)
      CALL foo(__deriv__(Y(1)), __deriv__(X(1)))
      OpenAD_Symbol_1 = I
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(__deriv__(OpenAD_Symbol_0), V(I))
      CALL foo(__deriv__(X(I)), __deriv__(OpenAD_Symbol_0))
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(V(INT(OpenAD_Symbol_1)), __deriv__(
     > OpenAD_Symbol_0))
      OpenAD_Symbol_7 = (__value__(X(2)) * __value__(Y(1)))
      OpenAD_Symbol_5 = __value__(Y(1))
      OpenAD_Symbol_6 = __value__(X(2))
      __value__(Y(1)) = OpenAD_Symbol_7
      CALL setderiv(__deriv__(OpenAD_Symbol_10), __deriv__(X(2)))
      CALL setderiv(__deriv__(OpenAD_Symbol_11), __deriv__(Y(1)))
      CALL sax(OpenAD_Symbol_5, __deriv__(OpenAD_Symbol_10), __deriv__(
     > Y(1)))
      CALL saxpy(OpenAD_Symbol_6, __deriv__(OpenAD_Symbol_11),
     >  __deriv__(Y(1)))
      END SUBROUTINE
