
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
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
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
      __value__(T) = (__value__(X(1)) * __value__(X(2)))
      OpenAD_Symbol_0 = __value__(X(2))
      OpenAD_Symbol_1 = __value__(X(1))
      __value__(Y(1)) = SIN(__value__(T))
      OpenAD_Symbol_2 = COS(__value__(T))
      CALL sax(OpenAD_Symbol_0, __deriv__(X(1)), __deriv__(T))
      CALL saxpy(OpenAD_Symbol_1, __deriv__(X(2)), __deriv__(T))
      CALL sax(OpenAD_Symbol_2, __deriv__(T), __deriv__(Y(1)))
      __value__(Y(2)) = COS(__value__(T))
      OpenAD_Symbol_3 = (- SIN(__value__(T)))
      CALL sax(OpenAD_Symbol_3, __deriv__(T), __deriv__(Y(2)))
      END SUBROUTINE
