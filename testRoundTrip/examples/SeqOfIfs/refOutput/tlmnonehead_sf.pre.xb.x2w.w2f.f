
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
      TYPE (OpenADTy_active) OpenAD_Symbol_4
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 2)
      INTENT(OUT)  Y
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      IF(__value__(X(1)) .LE. __value__(X(2))) THEN
        __value__(Y(1)) = (__value__(X(2)) - __value__(X(1)))
        OpenAD_Symbol_0 = 1_w2f__i8
        OpenAD_Symbol_1 = (-1_w2f__i8)
        CALL sax(1_w2f__i8, __deriv__(X(2)), __deriv__(Y(1)))
        CALL saxpy(-1_w2f__i8, __deriv__(X(1)), __deriv__(Y(1)))
      ELSE
        __value__(Y(1)) = (__value__(X(1)) - __value__(X(2)))
        OpenAD_Symbol_2 = 1_w2f__i8
        OpenAD_Symbol_3 = (-1_w2f__i8)
        CALL sax(1_w2f__i8, __deriv__(X(1)), __deriv__(Y(1)))
        CALL saxpy(-1_w2f__i8, __deriv__(X(2)), __deriv__(Y(1)))
      ENDIF
      IF(__value__(Y(1)) .eq. 0.0D00) THEN
        __value__(Y(2)) = __value__(X(1))
        CALL setderiv(__deriv__(Y(2)), __deriv__(X(1)))
      ELSE
        __value__(Y(2)) = __value__(Y(1))
        CALL setderiv(__deriv__(OpenAD_Symbol_4), __deriv__(Y(1)))
        CALL setderiv(__deriv__(Y(2)), __deriv__(OpenAD_Symbol_4))
      ENDIF
      END SUBROUTINE