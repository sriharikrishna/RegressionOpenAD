
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
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_6
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
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
      __value__(T) = __value__(X(1))
      __value__(T1) = (__value__(T) * 2.0D00)
      OpenAD_Symbol_0 = 2.0D00
      CALL setderiv(__deriv__(T), __deriv__(X(1)))
      CALL sax(2.0D00, __deriv__(X(1)), __deriv__(T1))
      CALL foo()
      __value__(Y(1)) = (__value__(T) * 2.0D00 + __value__(T1) * 3.0D00
     > )
      OpenAD_Symbol_4 = 2.0D00
      OpenAD_Symbol_2 = 1_w2f__i8
      OpenAD_Symbol_6 = 3.0D00
      OpenAD_Symbol_3 = 1_w2f__i8
      CALL sax(2.0D00, __deriv__(T), __deriv__(Y(1)))
      CALL saxpy(3.0D00, __deriv__(T1), __deriv__(Y(1)))
      END SUBROUTINE
