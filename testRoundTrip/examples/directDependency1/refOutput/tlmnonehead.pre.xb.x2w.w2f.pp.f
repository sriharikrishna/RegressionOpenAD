

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
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_6
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      type(active) :: Y(1 : 1)
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
      T%v = X(1)%v
      T1%v = (T%v*2.0D00)
      OpenAD_Symbol_0 = 2.0D00
      CALL setderiv(T,X(1))
      CALL sax(2.0D00,X(1),T1)
      CALL foo()
      Y(1)%v = (T%v*2.0D00+T1%v*3.0D00)
      OpenAD_Symbol_4 = 2.0D00
      OpenAD_Symbol_2 = 1_w2f__i8
      OpenAD_Symbol_6 = 3.0D00
      OpenAD_Symbol_3 = 1_w2f__i8
      CALL sax(2.0D00,T,Y(1))
      CALL saxpy(3.0D00,T1,Y(1))
      END SUBROUTINE
