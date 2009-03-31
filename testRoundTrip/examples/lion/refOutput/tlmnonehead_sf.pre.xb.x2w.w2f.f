
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
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 4)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) T1
      TYPE (OpenADTy_active) T2
      TYPE (OpenADTy_active) Y1
      TYPE (OpenADTy_active) Y2
      TYPE (OpenADTy_active) Y3
      TYPE (OpenADTy_active) Y4
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(T1) = (__value__(X(1)) / __value__(X(2)))
      OpenAD_Symbol_0 = (INT(1_w2f__i8) / __value__(X(2)))
      OpenAD_Symbol_1 = (-(__value__(X(1)) /(__value__(X(2)) *
     >  __value__(X(2)))))
      __value__(T2) = COS(__value__(T1))
      OpenAD_Symbol_2 = (- SIN(__value__(T1)))
      __value__(Y1) = EXP(__value__(T2))
      OpenAD_Symbol_3 = EXP(__value__(T2))
      __value__(Y2) = (__value__(T2) * 3.14000010490417480469D00)
      __value__(Y3) = SIN(__value__(T2))
      OpenAD_Symbol_5 = COS(__value__(T2))
      __value__(Y4) = (__value__(T1) * __value__(T2))
      OpenAD_Symbol_6 = __value__(T2)
      OpenAD_Symbol_7 = __value__(T1)
      __value__(Y(1)) = __value__(Y1)
      OpenAD_Symbol_8 = (OpenAD_Symbol_6 + OpenAD_Symbol_2 *
     >  OpenAD_Symbol_7)
      OpenAD_Symbol_9 = (OpenAD_Symbol_2 * 3.14000010490417480469D00)
      OpenAD_Symbol_10 = (OpenAD_Symbol_2 * OpenAD_Symbol_5)
      OpenAD_Symbol_11 = (OpenAD_Symbol_2 * OpenAD_Symbol_3)
      CALL sax(OpenAD_Symbol_0, __deriv__(X(1)), __deriv__(T1))
      CALL saxpy(OpenAD_Symbol_1, __deriv__(X(2)), __deriv__(T1))
      CALL sax(OpenAD_Symbol_9, __deriv__(T1), __deriv__(Y2))
      CALL sax(OpenAD_Symbol_10, __deriv__(T1), __deriv__(Y3))
      CALL sax(OpenAD_Symbol_8, __deriv__(T1), __deriv__(Y4))
      CALL sax(OpenAD_Symbol_11, __deriv__(T1), __deriv__(Y(1)))
      __value__(Y(2)) = __value__(Y2)
      CALL setderiv(__deriv__(Y(2)), __deriv__(Y2))
      __value__(Y(3)) = __value__(Y3)
      CALL setderiv(__deriv__(Y(3)), __deriv__(Y3))
      __value__(Y(4)) = __value__(Y4)
      CALL setderiv(__deriv__(Y(4)), __deriv__(Y4))
      END SUBROUTINE
