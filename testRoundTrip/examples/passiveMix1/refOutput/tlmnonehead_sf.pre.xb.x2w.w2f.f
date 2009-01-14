
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
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      TYPE (OpenADTy_active) OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      TYPE (OpenADTy_active) T
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
      __value__(T) = __value__(X(I))
      CALL setderiv(__deriv__(T), __deriv__(X(I)))
      I = 2
      OpenAD_Symbol_2 = (__value__(X(I)) * __value__(T))
      OpenAD_Symbol_0 = __value__(T)
      OpenAD_Symbol_1 = __value__(X(I))
      __value__(T) = OpenAD_Symbol_2
      CALL setderiv(__deriv__(OpenAD_Symbol_5), __deriv__(T))
      CALL sax(OpenAD_Symbol_0, __deriv__(X(I)), __deriv__(T))
      CALL saxpy(OpenAD_Symbol_1, __deriv__(OpenAD_Symbol_5), __deriv__
     > (T))
      I = 3
      __value__(Y(1)) = SIN(__value__(T))
      OpenAD_Symbol_3 = COS(__value__(T))
      CALL sax(OpenAD_Symbol_3, __deriv__(T), __deriv__(Y(1)))
      __value__(Y(2)) = COS(__value__(T))
      OpenAD_Symbol_4 = (- SIN(__value__(T)))
      CALL sax(OpenAD_Symbol_4, __deriv__(T), __deriv__(Y(2)))
      END SUBROUTINE