

      SUBROUTINE head(X1, X2, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      type(active) :: OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
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
      type(active) :: X1
      INTENT(IN)  X1
      type(active) :: X2
      INTENT(IN)  X2
      type(active) :: Y
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
      type(active) :: D
      type(active) :: E
      type(active) :: F
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (X1%v/X2%v)
      A%v = (1.0D00/OpenAD_Symbol_0)
      OpenAD_Symbol_3 = (INT(1 _w2f__i8)/X2%v)
      OpenAD_Symbol_4 = (-(X1%v/(X2%v*X2%v)))
      OpenAD_Symbol_2 = (-(1.0D00 /(OpenAD_Symbol_0 * OpenAD_Symbol_0))
     > )
      B%v = (X2%v*A%v)
      OpenAD_Symbol_5 = A%v
      OpenAD_Symbol_6 = X2%v
      C%v = X2%v
      OpenAD_Symbol_17 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
      OpenAD_Symbol_18 = (OpenAD_Symbol_4 * OpenAD_Symbol_2)
      OpenAD_Symbol_19 = (OpenAD_Symbol_17 * OpenAD_Symbol_6)
      OpenAD_Symbol_20 = (OpenAD_Symbol_18 * OpenAD_Symbol_6)
      CALL setderiv(C,X2)
      CALL sax(OpenAD_Symbol_17,X1,A)
      CALL saxpy(OpenAD_Symbol_18,X2,A)
      CALL sax(OpenAD_Symbol_19,X1,B)
      CALL saxpy(OpenAD_Symbol_20,X2,B)
      CALL saxpy(OpenAD_Symbol_5,X2,B)
      OpenAD_Symbol_8 = SIN(C%v)
      OpenAD_Symbol_7 = COS(C%v)
      C%v = OpenAD_Symbol_8
      D%v = A%v
      F%v = A%v
      CALL setderiv(OpenAD_Symbol_21,C)
      CALL sax(OpenAD_Symbol_7,OpenAD_Symbol_21,C)
      CALL setderiv(D,A)
      CALL setderiv(F,A)
      OpenAD_Symbol_9 = (F%v-A%v)
      F%v = (OpenAD_Symbol_9*5.0D-01)
      OpenAD_Symbol_11 = (D%v-A%v)
      E%v = (OpenAD_Symbol_11*5.0D-01)
      Y%v = (B%v*F%v+C%v*E%v)
      OpenAD_Symbol_13 = F%v
      OpenAD_Symbol_14 = B%v
      OpenAD_Symbol_15 = E%v
      OpenAD_Symbol_16 = C%v
      OpenAD_Symbol_22 = (5.0D-01 * OpenAD_Symbol_16)
      OpenAD_Symbol_23 = (5.0D-01 * OpenAD_Symbol_14)
      OpenAD_Symbol_24 = (INT((-1_w2f__i8)) * OpenAD_Symbol_22 + INT((
     > -1_w2f__i8)) * OpenAD_Symbol_23)
      CALL sax(OpenAD_Symbol_15,C,Y)
      CALL saxpy(OpenAD_Symbol_13,B,Y)
      CALL saxpy(OpenAD_Symbol_22,D,Y)
      CALL saxpy(OpenAD_Symbol_23,F,Y)
      CALL saxpy(OpenAD_Symbol_24,A,Y)
      END SUBROUTINE
