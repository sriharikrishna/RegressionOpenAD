

      SUBROUTINE foo()
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
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
      type(active) :: X(1 : 2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      type(active) :: T
      type(active) :: T1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T%v = (X(1)%v+X(2)%v)
      OpenAD_Symbol_0 = 1_w2f__i8
      OpenAD_Symbol_1 = 1_w2f__i8
      T1%v = (T%v*2.0D00)
      OpenAD_Symbol_2 = 2.0D00
      CALL sax(1 _w2f__i8,X(1),T)
      CALL saxpy(1 _w2f__i8,X(2),T)
      CALL sax(2.0D00,X(1),T1)
      CALL saxpy(2.0D00,X(2),T1)
      CALL foo()
      Y%v = (T%v*2.0D00+T1%v*3.0D00)
      OpenAD_Symbol_6 = 2.0D00
      OpenAD_Symbol_4 = 1_w2f__i8
      OpenAD_Symbol_8 = 3.0D00
      OpenAD_Symbol_5 = 1_w2f__i8
      CALL sax(2.0D00,T,Y)
      CALL saxpy(3.0D00,T1,Y)
      END SUBROUTINE
