
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
      SUBROUTINE head(X1, X2, Y1, Y2)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X1
      TYPE (OpenADTy_active) X2
      TYPE (OpenADTy_active) Y1
      TYPE (OpenADTy_active) Y2
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) V3
      TYPE (OpenADTy_active) V4
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
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
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y1)
C$OPENAD DEPENDENT(Y2)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(V3) = (__value__(X1) * __value__(X2))
      OpenAD_Symbol_0 = __value__(X2)
      OpenAD_Symbol_1 = __value__(X1)
      __value__(V4) = (__value__(X1) * __value__(V3))
      OpenAD_Symbol_2 = __value__(V3)
      OpenAD_Symbol_3 = __value__(X1)
      OpenAD_Symbol_4 = (__value__(X2) * __value__(V3))
      __value__(Y1) = (__value__(V4) * OpenAD_Symbol_4)
      OpenAD_Symbol_5 = OpenAD_Symbol_4
      OpenAD_Symbol_7 = __value__(V3)
      OpenAD_Symbol_8 = __value__(X2)
      OpenAD_Symbol_6 = __value__(V4)
      __value__(Y2) = SIN(__value__(V4))
      OpenAD_Symbol_9 = COS(__value__(V4))
      OpenAD_Symbol_10 = (OpenAD_Symbol_7 * OpenAD_Symbol_6)
      OpenAD_Symbol_11 = (OpenAD_Symbol_8 * OpenAD_Symbol_6 +
     >  OpenAD_Symbol_3 * OpenAD_Symbol_5)
      OpenAD_Symbol_12 = (OpenAD_Symbol_3 * OpenAD_Symbol_9)
      OpenAD_Symbol_13 = (OpenAD_Symbol_2 * OpenAD_Symbol_5)
      OpenAD_Symbol_14 = (OpenAD_Symbol_2 * OpenAD_Symbol_9)
      CALL sax(OpenAD_Symbol_0, __deriv__(X1), __deriv__(V3))
      CALL saxpy(OpenAD_Symbol_1, __deriv__(X2), __deriv__(V3))
      CALL sax(OpenAD_Symbol_12, __deriv__(V3), __deriv__(Y2))
      CALL saxpy(OpenAD_Symbol_14, __deriv__(X1), __deriv__(Y2))
      CALL sax(OpenAD_Symbol_10, __deriv__(X2), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_11, __deriv__(V3), __deriv__(Y1))
      CALL saxpy(OpenAD_Symbol_13, __deriv__(X1), __deriv__(Y1))
      END SUBROUTINE
