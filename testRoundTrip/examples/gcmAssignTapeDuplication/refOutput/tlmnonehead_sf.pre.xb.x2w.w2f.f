
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
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      TYPE (OpenADTy_active) OpenAD_Symbol_23
      TYPE (OpenADTy_active) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 12)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 1)
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
      OpenAD_Symbol_7 = (__value__(X(8)) + __value__(X(7)) + __value__(
     > X(5)) + __value__(X(6)))
      OpenAD_Symbol_3 = (__value__(X(1)) * OpenAD_Symbol_7 + __value__(
     > X(2)) * __value__(X(4)))
      OpenAD_Symbol_12 = (__value__(X(12)) + __value__(X(11)) +
     >  __value__(X(9)) + __value__(X(10)))
      OpenAD_Symbol_4 = (__value__(X(2)) + __value__(X(1)) *
     >  OpenAD_Symbol_12)
      OpenAD_Symbol_0 = (OpenAD_Symbol_3 / OpenAD_Symbol_4)
      __value__(Y(1)) = (__value__(X(3)) * OpenAD_Symbol_0)
      OpenAD_Symbol_1 = OpenAD_Symbol_0
      OpenAD_Symbol_8 = OpenAD_Symbol_7
      OpenAD_Symbol_9 = __value__(X(1))
      OpenAD_Symbol_10 = __value__(X(4))
      OpenAD_Symbol_11 = __value__(X(2))
      OpenAD_Symbol_5 = (INT(1_w2f__i8) / OpenAD_Symbol_4)
      OpenAD_Symbol_13 = OpenAD_Symbol_12
      OpenAD_Symbol_14 = __value__(X(1))
      OpenAD_Symbol_6 = (-(OpenAD_Symbol_3 /(OpenAD_Symbol_4 *
     >  OpenAD_Symbol_4)))
      OpenAD_Symbol_2 = __value__(X(3))
      OpenAD_Symbol_15 = (OpenAD_Symbol_5 * OpenAD_Symbol_2)
      OpenAD_Symbol_16 = (OpenAD_Symbol_6 * OpenAD_Symbol_2)
      OpenAD_Symbol_17 = (OpenAD_Symbol_13 * OpenAD_Symbol_16)
      OpenAD_Symbol_18 = (OpenAD_Symbol_14 * OpenAD_Symbol_16)
      OpenAD_Symbol_19 = (OpenAD_Symbol_8 * OpenAD_Symbol_15)
      OpenAD_Symbol_20 = (OpenAD_Symbol_9 * OpenAD_Symbol_15)
      OpenAD_Symbol_21 = (OpenAD_Symbol_10 * OpenAD_Symbol_15)
      OpenAD_Symbol_22 = (OpenAD_Symbol_11 * OpenAD_Symbol_15)
      CALL sax(1_w2f__i8, __deriv__(X(8)), __deriv__(OpenAD_Symbol_23))
      CALL saxpy(1_w2f__i8, __deriv__(X(7)), __deriv__(OpenAD_Symbol_23
     > ))
      CALL saxpy(1_w2f__i8, __deriv__(X(5)), __deriv__(OpenAD_Symbol_23
     > ))
      CALL saxpy(1_w2f__i8, __deriv__(X(6)), __deriv__(OpenAD_Symbol_23
     > ))
      CALL sax(1_w2f__i8, __deriv__(X(12)), __deriv__(OpenAD_Symbol_24)
     > )
      CALL saxpy(1_w2f__i8, __deriv__(X(11)), __deriv__(
     > OpenAD_Symbol_24))
      CALL saxpy(1_w2f__i8, __deriv__(X(9)), __deriv__(OpenAD_Symbol_24
     > ))
      CALL saxpy(1_w2f__i8, __deriv__(X(10)), __deriv__(
     > OpenAD_Symbol_24))
      CALL sax(OpenAD_Symbol_1, __deriv__(X(3)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_Symbol_17, __deriv__(X(1)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_Symbol_18, __deriv__(OpenAD_Symbol_24),
     >  __deriv__(Y(1)))
      CALL saxpy(OpenAD_Symbol_16, __deriv__(X(2)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_Symbol_19, __deriv__(X(1)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_Symbol_20, __deriv__(OpenAD_Symbol_23),
     >  __deriv__(Y(1)))
      CALL saxpy(OpenAD_Symbol_21, __deriv__(X(2)), __deriv__(Y(1)))
      CALL saxpy(OpenAD_Symbol_22, __deriv__(X(4)), __deriv__(Y(1)))
      END SUBROUTINE
