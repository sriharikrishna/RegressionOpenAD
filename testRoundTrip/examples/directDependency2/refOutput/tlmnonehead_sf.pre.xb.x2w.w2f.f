
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo()
      use w2f__types
      IMPLICIT NONE
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      TYPE (OpenADTy_active) T
      TYPE (OpenADTy_active) T1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(T) = (__value__(X(1)) + __value__(X(2)))
      OpenAD_Symbol_0 = 1_w2f__i8
      OpenAD_Symbol_1 = 1_w2f__i8
      __value__(T1) = (__value__(T) * 2.0D00)
      OpenAD_Symbol_2 = 2.0D00
      CALL sax(1_w2f__i8, __deriv__(X(1)), __deriv__(T))
      CALL saxpy(1_w2f__i8, __deriv__(X(2)), __deriv__(T))
      CALL sax(2.0D00, __deriv__(X(1)), __deriv__(T1))
      CALL saxpy(2.0D00, __deriv__(X(2)), __deriv__(T1))
      CALL foo()
      __value__(Y) = (__value__(T) * 2.0D00 + __value__(T1) * 3.0D00)
      OpenAD_Symbol_6 = 2.0D00
      OpenAD_Symbol_4 = 1_w2f__i8
      OpenAD_Symbol_8 = 3.0D00
      OpenAD_Symbol_5 = 1_w2f__i8
      CALL sax(2.0D00, __deriv__(T), __deriv__(Y))
      CALL saxpy(3.0D00, __deriv__(T1), __deriv__(Y))
      END SUBROUTINE
