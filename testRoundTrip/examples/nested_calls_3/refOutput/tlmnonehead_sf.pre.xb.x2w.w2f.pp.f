
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
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 4)
      type(active) :: Y(1 : 4)
C
C     **** Local Variables and Functions ****
C
      type(active) :: C
      type(active) :: D
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
      Y(1)%v = X(3)%v
      CALL setderiv(Y(1),X(3))
      Y(2)%v = X(4)%v
      CALL setderiv(Y(2),X(4))
      CALL foo(X(1),X(2),C,D)
      Y(3)%v = (C%v*D%v)
      OpenAD_Symbol_0 = D%v
      OpenAD_Symbol_1 = C%v
      CALL sax(OpenAD_Symbol_0,C,Y(3))
      CALL saxpy(OpenAD_Symbol_1,D,Y(3))
      Y(4)%v = (C%v+D%v)
      CALL sax(1 _w2f__i8,C,Y(4))
      CALL saxpy(1 _w2f__i8,D,Y(4))
      END SUBROUTINE

      SUBROUTINE foo(A, B, C, D)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
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
      type(active) :: A
      type(active) :: B
      type(active) :: C
      type(active) :: D
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_2 = (A%v*B%v)
      C%v = SIN(OpenAD_Symbol_2)
      OpenAD_Symbol_4 = B%v
      OpenAD_Symbol_5 = A%v
      OpenAD_Symbol_3 = COS(OpenAD_Symbol_2)
      OpenAD_Symbol_6 = (A%v+B%v)
      D%v = COS(OpenAD_Symbol_6)
      OpenAD_Symbol_7 = (- SIN(OpenAD_Symbol_6))
      OpenAD_Symbol_8 = (OpenAD_Symbol_4 * OpenAD_Symbol_3)
      OpenAD_Symbol_9 = (OpenAD_Symbol_5 * OpenAD_Symbol_3)
      CALL sax(OpenAD_Symbol_8,A,C)
      CALL saxpy(OpenAD_Symbol_9,B,C)
      CALL sax(OpenAD_Symbol_7,A,D)
      CALL saxpy(OpenAD_Symbol_7,B,D)
      END SUBROUTINE
