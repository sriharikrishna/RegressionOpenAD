

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_10
      type(active) :: OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:10)
      INTENT(IN)  X
      type(active) :: Y(1:10)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) PI
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      PI = 3.14149999618530273438D00
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          OpenAD_Symbol_0 = SIN(X(I)%v)
          Y(INT(I))%v = (PI*OpenAD_Symbol_0)
          OpenAD_Symbol_3 = COS(X(I)%v)
          OpenAD_Symbol_2 = PI
          OpenAD_Symbol_9 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
          CALL sax(OpenAD_Symbol_9,X(I),Y(I))
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
          OpenAD_Symbol_5 = (-SIN(X(I)%v))
          CALL sax(OpenAD_Symbol_5,X(I),Y(I))
        ENDIF
      END DO
      OpenAD_Symbol_8 = (Y(1)%v*Y(9)%v)
      OpenAD_Symbol_6 = Y(9)%v
      OpenAD_Symbol_7 = Y(1)%v
      Y(10)%v = OpenAD_Symbol_8
      CALL setderiv(OpenAD_Symbol_10,Y(1))
      CALL setderiv(OpenAD_Symbol_11,Y(9))
      CALL sax(OpenAD_Symbol_6,OpenAD_Symbol_10,Y(10))
      CALL saxpy(OpenAD_Symbol_7,OpenAD_Symbol_11,Y(10))
      END SUBROUTINE
