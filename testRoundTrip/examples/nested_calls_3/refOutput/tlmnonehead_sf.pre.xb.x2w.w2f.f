
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
      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 4)
      TYPE (OpenADTy_active) Y(1 : 4)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) C
      TYPE (OpenADTy_active) D
      EXTERNAL foo
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(Y(1)) = __value__(X(3))
      CALL setderiv(__deriv__(Y(1)), __deriv__(X(3)))
      __value__(Y(2)) = __value__(X(4))
      CALL setderiv(__deriv__(Y(2)), __deriv__(X(4)))
      CALL foo(__deriv__(X(1)), __deriv__(X(2)), __deriv__(C),
     >  __deriv__(D))
      __value__(Y(3)) = (__value__(C) * __value__(D))
      OpenAD_Symbol_0 = __value__(D)
      OpenAD_Symbol_1 = __value__(C)
      CALL sax(OpenAD_Symbol_0, __deriv__(C), __deriv__(Y(3)))
      CALL saxpy(OpenAD_Symbol_1, __deriv__(D), __deriv__(Y(3)))
      __value__(Y(4)) = (__value__(C) + __value__(D))
      CALL setderiv(__deriv__(Y(4)), __deriv__(C))
      CALL inc_deriv(__deriv__(Y(4)), __deriv__(D))
      END SUBROUTINE

      SUBROUTINE foo(A, B, C, D)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
      TYPE (OpenADTy_active) B
      TYPE (OpenADTy_active) C
      TYPE (OpenADTy_active) D
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_2 = (__value__(A) * __value__(B))
      __value__(C) = SIN(OpenAD_Symbol_2)
      OpenAD_Symbol_4 = __value__(B)
      OpenAD_Symbol_5 = __value__(A)
      OpenAD_Symbol_3 = COS(OpenAD_Symbol_2)
      OpenAD_Symbol_6 = (__value__(A) + __value__(B))
      __value__(D) = COS(OpenAD_Symbol_6)
      OpenAD_Symbol_7 = (- SIN(OpenAD_Symbol_6))
      OpenAD_Symbol_8 = (OpenAD_Symbol_4 * OpenAD_Symbol_3)
      OpenAD_Symbol_9 = (OpenAD_Symbol_5 * OpenAD_Symbol_3)
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(A))
      CALL inc_deriv(__deriv__(OpenAD_prop_0), __deriv__(B))
      CALL sax(OpenAD_Symbol_8, __deriv__(A), __deriv__(C))
      CALL saxpy(OpenAD_Symbol_9, __deriv__(B), __deriv__(C))
      CALL sax(OpenAD_Symbol_7, __deriv__(OpenAD_prop_0), __deriv__(D))
      END SUBROUTINE
