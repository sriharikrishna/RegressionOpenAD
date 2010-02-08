
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_6
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      I = 1
      DO WHILE(I .LT. 3)
        IF(I .LT. 2) THEN
          OpenAD_Symbol_1 = SIN(X(1)%v)
          OpenAD_Symbol_0 = COS(X(1)%v)
          Y(2)%v = OpenAD_Symbol_1
          CALL setderiv(OpenAD_prop_0,X(1))
          CALL sax(OpenAD_Symbol_0,OpenAD_prop_0,Y(2))
        ELSE
          OpenAD_Symbol_3 = COS(X(2)%v)
          OpenAD_Symbol_2 = (-SIN(X(2)%v))
          Y(1)%v = OpenAD_Symbol_3
          CALL setderiv(OpenAD_prop_1,X(2))
          CALL sax(OpenAD_Symbol_2,OpenAD_prop_1,Y(1))
        ENDIF
        I = (I+1)
      END DO
      OpenAD_Symbol_6 = (Y(1)%v*Y(2)%v)
      OpenAD_Symbol_4 = Y(2)%v
      OpenAD_Symbol_5 = Y(1)%v
      Y(2)%v = OpenAD_Symbol_6
      CALL setderiv(OpenAD_prop_2,Y(1))
      CALL setderiv(OpenAD_prop_3,Y(2))
      CALL sax(OpenAD_Symbol_4,OpenAD_prop_2,Y(2))
      CALL saxpy(OpenAD_Symbol_5,OpenAD_prop_3,Y(2))
      END SUBROUTINE
