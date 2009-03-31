
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      MODULE aglobalmodule
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      CHARACTER(3) GLOBALSTRING
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(X, Y)
      use w2f__types
      use aglobalmodule
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      TYPE (OpenADTy_active) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      TYPE (OpenADTy_active) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      CHARACTER(3) LOCALSTRING
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        IF(GLOBALSTRING .EQ. 'yes') THEN
          __value__(Y(INT(I))) = (__value__(Y(I)) + __value__(X(I)) *
     >  __value__(X(I)))
          OpenAD_Symbol_0 = __value__(X(I))
          OpenAD_Symbol_1 = __value__(X(I))
          CALL setderiv(__deriv__(OpenAD_Symbol_6), __deriv__(Y(I)))
          CALL sax(1_w2f__i8, __deriv__(OpenAD_Symbol_6), __deriv__(Y(I
     > )))
          CALL saxpy(OpenAD_Symbol_0, __deriv__(X(I)), __deriv__(Y(I)))
          CALL saxpy(OpenAD_Symbol_1, __deriv__(X(I)), __deriv__(Y(I)))
        ENDIF
        IF(GLOBALSTRING .EQ. 'no') THEN
          OpenAD_Symbol_2 = (__value__(X(I)) * __value__(X(I)))
          __value__(Y(INT(I))) = (__value__(Y(I)) + OpenAD_Symbol_2 *
     >  2.0D00)
          OpenAD_Symbol_4 = __value__(X(I))
          OpenAD_Symbol_5 = __value__(X(I))
          OpenAD_Symbol_7 = (OpenAD_Symbol_4 * 2.0D00)
          OpenAD_Symbol_8 = (OpenAD_Symbol_5 * 2.0D00)
          CALL setderiv(__deriv__(OpenAD_Symbol_9), __deriv__(Y(I)))
          CALL sax(1_w2f__i8, __deriv__(OpenAD_Symbol_9), __deriv__(Y(I
     > )))
          CALL saxpy(OpenAD_Symbol_7, __deriv__(X(I)), __deriv__(Y(I)))
          CALL saxpy(OpenAD_Symbol_8, __deriv__(X(I)), __deriv__(Y(I)))
        ENDIF
      END DO
      GLOBALSTRING = 'either'
      LOCALSTRING = GLOBALSTRING
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use aglobalmodule
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 2)
      INTENT(OUT)  Y
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
      __value__(Y(1)) = 1.0
      __value__(Y(2)) = 1.0
      CALL zero_deriv(__deriv__(Y(1)))
      CALL zero_deriv(__deriv__(Y(2)))
      GLOBALSTRING = 'yes'
      CALL foo(__deriv__(X), __deriv__(Y))
      GLOBALSTRING = 'both'
      END SUBROUTINE
