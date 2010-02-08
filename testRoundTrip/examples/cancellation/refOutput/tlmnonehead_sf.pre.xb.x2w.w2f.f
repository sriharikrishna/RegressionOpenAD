
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
      SUBROUTINE head(X1, X2, Y)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      TYPE (OpenADTy_active) OpenAD_prop_0
      TYPE (OpenADTy_active) OpenAD_prop_1
      TYPE (OpenADTy_active) OpenAD_prop_2
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X1
      INTENT(IN)  X1
      TYPE (OpenADTy_active) X2
      INTENT(IN)  X2
      TYPE (OpenADTy_active) Y
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) A
      TYPE (OpenADTy_active) B
      TYPE (OpenADTy_active) C
      TYPE (OpenADTy_active) D
      TYPE (OpenADTy_active) E
      TYPE (OpenADTy_active) F
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (__value__(X1) / __value__(X2))
      __value__(A) = (1.0D00 / OpenAD_Symbol_0)
      OpenAD_Symbol_3 = (INT(1_w2f__i8) / __value__(X2))
      OpenAD_Symbol_4 = (-(__value__(X1) /(__value__(X2) * __value__(X2
     > ))))
      OpenAD_Symbol_2 = (-(1.0D00 /(OpenAD_Symbol_0 * OpenAD_Symbol_0))
     > )
      __value__(B) = (__value__(X2) * __value__(A))
      OpenAD_Symbol_5 = __value__(A)
      OpenAD_Symbol_6 = __value__(X2)
      __value__(C) = __value__(X2)
      OpenAD_acc_0 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
      OpenAD_acc_1 = (OpenAD_Symbol_4 * OpenAD_Symbol_2)
      CALL setderiv(__deriv__(C), __deriv__(X2))
      CALL sax(OpenAD_acc_0, __deriv__(X1), __deriv__(A))
      CALL saxpy(OpenAD_acc_1, __deriv__(X2), __deriv__(A))
      CALL sax(OpenAD_Symbol_5, __deriv__(X2), __deriv__(B))
      CALL saxpy(OpenAD_Symbol_6, __deriv__(A), __deriv__(B))
      OpenAD_Symbol_8 = SIN(__value__(C))
      OpenAD_Symbol_7 = COS(__value__(C))
      __value__(C) = OpenAD_Symbol_8
      __value__(D) = __value__(A)
      __value__(F) = __value__(A)
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(C))
      CALL sax(OpenAD_Symbol_7, __deriv__(OpenAD_prop_0), __deriv__(C))
      CALL setderiv(__deriv__(D), __deriv__(A))
      CALL setderiv(__deriv__(F), __deriv__(A))
      OpenAD_Symbol_9 = (__value__(F) - __value__(A))
      __value__(F) = (OpenAD_Symbol_9 * 5.0D-01)
      OpenAD_Symbol_11 = (__value__(D) - __value__(A))
      __value__(E) = (OpenAD_Symbol_11 * 5.0D-01)
      __value__(Y) = (__value__(B) * __value__(F) + __value__(C) *
     >  __value__(E))
      OpenAD_Symbol_13 = __value__(F)
      OpenAD_Symbol_14 = __value__(B)
      OpenAD_Symbol_15 = __value__(E)
      OpenAD_Symbol_16 = __value__(C)
      OpenAD_acc_2 = (5.0D-01 * OpenAD_Symbol_14)
      OpenAD_acc_3 = (5.0D-01 * OpenAD_Symbol_16)
      CALL setderiv(__deriv__(OpenAD_prop_1), __deriv__(F))
      CALL dec_deriv(__deriv__(OpenAD_prop_1), __deriv__(A))
      CALL setderiv(__deriv__(OpenAD_prop_2), __deriv__(D))
      CALL dec_deriv(__deriv__(OpenAD_prop_2), __deriv__(A))
      CALL sax(OpenAD_Symbol_13, __deriv__(B), __deriv__(Y))
      CALL saxpy(OpenAD_acc_2, __deriv__(OpenAD_prop_1), __deriv__(Y))
      CALL saxpy(OpenAD_Symbol_15, __deriv__(C), __deriv__(Y))
      CALL saxpy(OpenAD_acc_3, __deriv__(OpenAD_prop_2), __deriv__(Y))
      END SUBROUTINE
