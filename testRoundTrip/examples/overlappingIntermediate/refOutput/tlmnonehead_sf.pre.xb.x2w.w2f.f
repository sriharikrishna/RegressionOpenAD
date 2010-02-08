
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
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      TYPE (OpenADTy_active) OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 5)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 3)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) T
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (__value__(X(1)) * __value__(X(2)))
      __value__(T) = (__value__(X(3)) * OpenAD_Symbol_0)
      OpenAD_Symbol_1 = OpenAD_Symbol_0
      OpenAD_Symbol_3 = __value__(X(2))
      OpenAD_Symbol_4 = __value__(X(1))
      OpenAD_Symbol_2 = __value__(X(3))
      __value__(Y(1)) = SIN(__value__(T))
      OpenAD_Symbol_5 = COS(__value__(T))
      OpenAD_acc_0 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
      OpenAD_acc_1 = (OpenAD_Symbol_4 * OpenAD_Symbol_2)
      CALL sax(OpenAD_Symbol_1, __deriv__(X(3)), __deriv__(T))
      CALL saxpy(OpenAD_acc_0, __deriv__(X(1)), __deriv__(T))
      CALL saxpy(OpenAD_acc_1, __deriv__(X(2)), __deriv__(T))
      CALL sax(OpenAD_Symbol_5, __deriv__(T), __deriv__(Y(1)))
      OpenAD_Symbol_6 = (__value__(X(4)) * __value__(T))
      OpenAD_Symbol_11 = (__value__(X(5)) * OpenAD_Symbol_6)
      OpenAD_Symbol_7 = OpenAD_Symbol_6
      OpenAD_Symbol_9 = __value__(T)
      OpenAD_Symbol_10 = __value__(X(4))
      OpenAD_Symbol_8 = __value__(X(5))
      __value__(T) = OpenAD_Symbol_11
      __value__(Y(2)) = SIN(__value__(T))
      OpenAD_Symbol_12 = COS(__value__(T))
      OpenAD_acc_2 = (OpenAD_Symbol_9 * OpenAD_Symbol_8)
      OpenAD_acc_3 = (OpenAD_Symbol_10 * OpenAD_Symbol_8)
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(T))
      CALL sax(OpenAD_Symbol_7, __deriv__(X(5)), __deriv__(T))
      CALL saxpy(OpenAD_acc_2, __deriv__(X(4)), __deriv__(T))
      CALL saxpy(OpenAD_acc_3, __deriv__(OpenAD_prop_0), __deriv__(T))
      CALL sax(OpenAD_Symbol_12, __deriv__(T), __deriv__(Y(2)))
      __value__(Y(3)) = COS(__value__(T))
      OpenAD_Symbol_13 = (- SIN(__value__(T)))
      CALL sax(OpenAD_Symbol_13, __deriv__(T), __deriv__(Y(3)))
      END SUBROUTINE
