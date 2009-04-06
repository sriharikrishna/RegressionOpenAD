
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
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
      type(active) :: OpenAD_Symbol_23
      type(active) :: OpenAD_Symbol_24
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
      type(active) :: X(1:12)
      INTENT(IN)  X
      type(active) :: Y(1:1)
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
      OpenAD_Symbol_7 = (X(8)%v+X(7)%v+X(5)%v+X(6)%v)
      OpenAD_Symbol_3 = (X(1)%v*OpenAD_Symbol_7+X(2)%v*X(4)%v)
      OpenAD_Symbol_12 = (X(12)%v+X(11)%v+X(9)%v+X(10)%v)
      OpenAD_Symbol_4 = (X(2)%v+X(1)%v*OpenAD_Symbol_12)
      OpenAD_Symbol_0 = (OpenAD_Symbol_3 / OpenAD_Symbol_4)
      Y(1)%v = (X(3)%v*OpenAD_Symbol_0)
      OpenAD_Symbol_1 = OpenAD_Symbol_0
      OpenAD_Symbol_8 = OpenAD_Symbol_7
      OpenAD_Symbol_9 = X(1)%v
      OpenAD_Symbol_10 = X(4)%v
      OpenAD_Symbol_11 = X(2)%v
      OpenAD_Symbol_5 = (INT(1_w2f__i8) / OpenAD_Symbol_4)
      OpenAD_Symbol_13 = OpenAD_Symbol_12
      OpenAD_Symbol_14 = X(1)%v
      OpenAD_Symbol_6 = (-(OpenAD_Symbol_3 /(OpenAD_Symbol_4 *
     >  OpenAD_Symbol_4)))
      OpenAD_Symbol_2 = X(3)%v
      OpenAD_Symbol_15 = (OpenAD_Symbol_5 * OpenAD_Symbol_2)
      OpenAD_Symbol_16 = (OpenAD_Symbol_6 * OpenAD_Symbol_2)
      OpenAD_Symbol_17 = (OpenAD_Symbol_13 * OpenAD_Symbol_16)
      OpenAD_Symbol_18 = (OpenAD_Symbol_14 * OpenAD_Symbol_16)
      OpenAD_Symbol_19 = (OpenAD_Symbol_8 * OpenAD_Symbol_15)
      OpenAD_Symbol_20 = (OpenAD_Symbol_9 * OpenAD_Symbol_15)
      OpenAD_Symbol_21 = (OpenAD_Symbol_10 * OpenAD_Symbol_15)
      OpenAD_Symbol_22 = (OpenAD_Symbol_11 * OpenAD_Symbol_15)
      CALL sax(1_w2f__i8,X(8),OpenAD_Symbol_23)
      CALL saxpy(1_w2f__i8,X(7),OpenAD_Symbol_23)
      CALL saxpy(1_w2f__i8,X(5),OpenAD_Symbol_23)
      CALL saxpy(1_w2f__i8,X(6),OpenAD_Symbol_23)
      CALL sax(1_w2f__i8,X(12),OpenAD_Symbol_24)
      CALL saxpy(1_w2f__i8,X(11),OpenAD_Symbol_24)
      CALL saxpy(1_w2f__i8,X(9),OpenAD_Symbol_24)
      CALL saxpy(1_w2f__i8,X(10),OpenAD_Symbol_24)
      CALL sax(OpenAD_Symbol_1,X(3),Y(1))
      CALL saxpy(OpenAD_Symbol_17,X(1),Y(1))
      CALL saxpy(OpenAD_Symbol_18,OpenAD_Symbol_24,Y(1))
      CALL saxpy(OpenAD_Symbol_16,X(2),Y(1))
      CALL saxpy(OpenAD_Symbol_19,X(1),Y(1))
      CALL saxpy(OpenAD_Symbol_20,OpenAD_Symbol_23,Y(1))
      CALL saxpy(OpenAD_Symbol_21,X(2),Y(1))
      CALL saxpy(OpenAD_Symbol_22,X(4),Y(1))
      END SUBROUTINE
