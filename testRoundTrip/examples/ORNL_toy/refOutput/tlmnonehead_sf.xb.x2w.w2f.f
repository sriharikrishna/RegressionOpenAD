
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
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) P
      REAL(w2f__8) Q
      EXTERNAL sq
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
      CALL sq(2, __deriv__(X), __deriv__(Y))
      P = 2.0D00
      Q = (P * P)
      END SUBROUTINE

      SUBROUTINE sq(N, U, V)
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
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      TYPE (OpenADTy_active) U(1 : 2)
      TYPE (OpenADTy_active) V(1 : 2)
C
C     **** Statements ****
C
      OpenAD_Symbol_0 = SQRT((__value__(U(1)) ** 2) +(__value__(U(2))
     >  ** 2))
      OpenAD_Symbol_4 = (2 *(__value__(U(1)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_2 = 1_w2f__i8
      OpenAD_Symbol_6 = (2 *(__value__(U(2)) **(2 - INT(1_w2f__i8))))
      OpenAD_Symbol_3 = 1_w2f__i8
      OpenAD_Symbol_1 = (5.0D-01 / OpenAD_Symbol_0)
      __value__(V(1)) = OpenAD_Symbol_0
      OpenAD_Symbol_31 = (OpenAD_Symbol_4 * OpenAD_Symbol_1)
      OpenAD_Symbol_32 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
      CALL sax(OpenAD_Symbol_31, __deriv__(U(1)), __deriv__(V(1)))
      CALL saxpy(OpenAD_Symbol_32, __deriv__(U(2)), __deriv__(V(1)))
      OpenAD_Symbol_26 = (__value__(U(1)) * 2.0D00)
      __value__(V(2)) = ((__value__(U(1)) ** 3) + SIN(__value__(U(2)))
     >  +(__value__(U(2)) / __value__(U(1))) - COS(__value__(U(1))) +(
     > __value__(U(2)) ** 3) + __value__(U(2)) * OpenAD_Symbol_26)
      OpenAD_Symbol_14 = (3 *(__value__(U(1)) **(3 - INT(1_w2f__i8))))
      OpenAD_Symbol_12 = 1_w2f__i8
      OpenAD_Symbol_20 = COS(__value__(U(2)))
      OpenAD_Symbol_18 = 1_w2f__i8
      OpenAD_Symbol_21 = (INT(1_w2f__i8) / __value__(U(1)))
      OpenAD_Symbol_22 = (-(__value__(U(2)) /(__value__(U(1)) *
     >  __value__(U(1)))))
      OpenAD_Symbol_19 = 1_w2f__i8
      OpenAD_Symbol_16 = 1_w2f__i8
      OpenAD_Symbol_23 = (- SIN(__value__(U(1))))
      OpenAD_Symbol_17 = (-1_w2f__i8)
      OpenAD_Symbol_13 = 1_w2f__i8
      OpenAD_Symbol_10 = 1_w2f__i8
      OpenAD_Symbol_24 = (3 *(__value__(U(2)) **(3 - INT(1_w2f__i8))))
      OpenAD_Symbol_11 = 1_w2f__i8
      OpenAD_Symbol_8 = 1_w2f__i8
      OpenAD_Symbol_27 = OpenAD_Symbol_26
      OpenAD_Symbol_29 = 2.0D00
      OpenAD_Symbol_28 = __value__(U(2))
      OpenAD_Symbol_9 = 1_w2f__i8
      OpenAD_Symbol_33 = (2.0D00 * OpenAD_Symbol_28)
      OpenAD_Symbol_34 = (OpenAD_Symbol_23 * INT((-1_w2f__i8)))
      CALL sax(OpenAD_Symbol_27, __deriv__(U(2)), __deriv__(V(2)))
      CALL saxpy(OpenAD_Symbol_33, __deriv__(U(1)), __deriv__(V(2)))
      CALL saxpy(OpenAD_Symbol_24, __deriv__(U(2)), __deriv__(V(2)))
      CALL saxpy(OpenAD_Symbol_34, __deriv__(U(1)), __deriv__(V(2)))
      CALL saxpy(OpenAD_Symbol_21, __deriv__(U(2)), __deriv__(V(2)))
      CALL saxpy(OpenAD_Symbol_22, __deriv__(U(1)), __deriv__(V(2)))
      CALL saxpy(OpenAD_Symbol_20, __deriv__(U(2)), __deriv__(V(2)))
      CALL saxpy(OpenAD_Symbol_14, __deriv__(U(1)), __deriv__(V(2)))
      END SUBROUTINE
