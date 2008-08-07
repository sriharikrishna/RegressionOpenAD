

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
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      type(active) :: OpenAD_Symbol_8
      type(active) :: OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: P
      INTENT(IN)  P
      type(active) :: Q
C
C     **** Statements ****
C
      OpenAD_Symbol_4 = (P%v*Q%v)
      OpenAD_Symbol_2 = Q%v
      OpenAD_Symbol_3 = P%v
      Q%v = OpenAD_Symbol_4
      CALL setderiv(OpenAD_Symbol_8,P)
      CALL setderiv(OpenAD_Symbol_9,Q)
      CALL sax(OpenAD_Symbol_2,OpenAD_Symbol_8,Q)
      CALL saxpy(OpenAD_Symbol_3,OpenAD_Symbol_9,Q)
      I = I + 1
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_10
      type(active) :: OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      INTENT(IN)  X
      type(active) :: Y(1 : 1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__8) V(1 : 2)
      INTEGER(w2f__i8) OpenAD_Symbol_1
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
      V(1) = 9.085830301E-03
      V(2) = (-2.9846420512E-04)
      CALL foo(Y(1),X(1))
      OpenAD_Symbol_1 = I
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_0,V(I))
      CALL foo(X(I),OpenAD_Symbol_0)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(V(INT(OpenAD_Symbol_1)),OpenAD_Symbol_0)
      OpenAD_Symbol_7 = (X(2)%v*Y(1)%v)
      OpenAD_Symbol_5 = Y(1)%v
      OpenAD_Symbol_6 = X(2)%v
      Y(1)%v = OpenAD_Symbol_7
      CALL setderiv(OpenAD_Symbol_10,X(2))
      CALL setderiv(OpenAD_Symbol_11,Y(1))
      CALL sax(OpenAD_Symbol_5,OpenAD_Symbol_10,Y(1))
      CALL saxpy(OpenAD_Symbol_6,OpenAD_Symbol_11,Y(1))
      END SUBROUTINE
