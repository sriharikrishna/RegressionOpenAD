

      SUBROUTINE foo(A, B)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
C
C     **** Parameters and Result ****
C
      type(active) :: A
      type(active) :: B
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      B%v = (A%v*A%v)
      OpenAD_Symbol_0 = A%v
      OpenAD_Symbol_1 = A%v
      CALL sax(OpenAD_Symbol_0,A,B)
      CALL saxpy(OpenAD_Symbol_1,A,B)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
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
      CALL foo(X(1),Y(1))
      END SUBROUTINE
