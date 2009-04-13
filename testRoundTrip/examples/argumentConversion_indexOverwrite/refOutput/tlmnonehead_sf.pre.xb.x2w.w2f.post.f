
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      MODULE globals
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i4) I
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(P, Q)
      use w2f__types
      use OAD_active
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      type(active) :: OpenAD_Symbol_6
C
C     **** Parameters and Result ****
C
      type(active) :: P
      INTENT(IN)  P
      type(active) :: Q
C
C     **** Statements ****
C
      OpenAD_Symbol_2 = (P%v*Q%v)
      OpenAD_Symbol_0 = Q%v
      OpenAD_Symbol_1 = P%v
      Q%v = OpenAD_Symbol_2
      I = (I + 1)
      CALL setderiv(OpenAD_Symbol_6,Q)
      CALL sax(OpenAD_Symbol_0,P,Q)
      CALL saxpy(OpenAD_Symbol_1,OpenAD_Symbol_6,Q)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      type(active) :: OpenAD_Symbol_7
      type(active) :: OpenAD_Symbol_8
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      type(active) :: V(1:2)
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
      Y(1)%v = 1.0D00
      V(1)%v = 9.085830301E-03
      V(2)%v = (-2.9846420512E-04)
      CALL zero_deriv(Y(1))
      CALL zero_deriv(V(1))
      CALL zero_deriv(V(2))
      CALL foo(X(1),Y(1))
      CALL foo(X(I),V(I))
      OpenAD_Symbol_5 = (Y(1)%v*V(2)%v)
      OpenAD_Symbol_3 = V(2)%v
      OpenAD_Symbol_4 = Y(1)%v
      Y(1)%v = OpenAD_Symbol_5
      CALL setderiv(OpenAD_Symbol_7,Y(1))
      CALL setderiv(OpenAD_Symbol_8,V(2))
      CALL sax(OpenAD_Symbol_3,OpenAD_Symbol_7,Y(1))
      CALL saxpy(OpenAD_Symbol_4,OpenAD_Symbol_8,Y(1))
      END SUBROUTINE