
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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 4)
      TYPE (OpenADTy_active) Y(1 : 4)
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
      CALL foo(__deriv__(X(1)), __deriv__(X(2)), __deriv__(Y(1)))
      CALL foo(__deriv__(X(1)), __deriv__(X(2)), __deriv__(Y(1)))
      OpenAD_tmp_0 = (__value__(X(1)) * __value__(X(2)))
      __value__(Y(2)) = SIN(OpenAD_tmp_0)
      OpenAD_lin_1 = __value__(X(2))
      OpenAD_lin_2 = __value__(X(1))
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      OpenAD_acc_0 = (OpenAD_lin_1 * OpenAD_lin_0)
      OpenAD_acc_1 = (OpenAD_lin_2 * OpenAD_lin_0)
      CALL sax(OpenAD_acc_0, __deriv__(X(1)), __deriv__(Y(2)))
      CALL saxpy(OpenAD_acc_1, __deriv__(X(2)), __deriv__(Y(2)))
      OpenAD_Symbol_0 = SIN(__value__(X(3)))
      OpenAD_lin_3 = COS(__value__(X(3)))
      __value__(Y(3)) = OpenAD_Symbol_0
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(X(3)))
      CALL sax(OpenAD_lin_3, __deriv__(OpenAD_prop_0), __deriv__(Y(3)))
      OpenAD_Symbol_1 = COS(__value__(X(4)))
      OpenAD_lin_4 = (- SIN(__value__(X(4))))
      __value__(Y(4)) = OpenAD_Symbol_1
      CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(X(4)))
      CALL sax(OpenAD_lin_4, __deriv__(OpenAD_prop_1), __deriv__(Y(4)))
      END SUBROUTINE

      SUBROUTINE foo(A, B, C)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
      TYPE (OpenADTy_active) B
      TYPE (OpenADTy_active) C
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL bar(__deriv__(B))
      __value__(C) = (__value__(B) + __value__(A) * __value__(A))
      OpenAD_lin_5 = __value__(A)
      OpenAD_lin_6 = __value__(A)
      CALL setderiv(__deriv__(C), __deriv__(B))
      CALL saxpy(OpenAD_lin_5, __deriv__(A), __deriv__(C))
      CALL saxpy(OpenAD_lin_6, __deriv__(A), __deriv__(C))
      END SUBROUTINE

      SUBROUTINE bar(A)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      TYPE (OpenADTy_active) OpenAD_prop_2
      TYPE (OpenADTy_active) OpenAD_prop_3
      REAL(w2f__8) OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) A
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_1 = (__value__(A) * __value__(A))
      OpenAD_Symbol_2 = COS(OpenAD_tmp_1)
      OpenAD_lin_8 = __value__(A)
      OpenAD_lin_9 = __value__(A)
      OpenAD_lin_7 = (- SIN(OpenAD_tmp_1))
      __value__(A) = OpenAD_Symbol_2
      OpenAD_acc_2 = (OpenAD_lin_8 * OpenAD_lin_7)
      OpenAD_acc_3 = (OpenAD_lin_9 * OpenAD_lin_7)
      CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(A))
      CALL setderiv(__deriv__(OpenAD_prop_3), __deriv__(A))
      CALL sax(OpenAD_acc_2, __deriv__(OpenAD_prop_2), __deriv__(A))
      CALL saxpy(OpenAD_acc_3, __deriv__(OpenAD_prop_3), __deriv__(A))
      END SUBROUTINE
