

      SUBROUTINE foo(X, T)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X
      INTENT(IN)  X
      type(active) :: T
C
C     **** Statements ****
C
      OpenAD_Symbol_0 = (X%v*T%v)
      OpenAD_lin_0 = T%v
      OpenAD_lin_1 = X%v
      T%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,T)
      CALL sax(OpenAD_lin_0,X,T)
      CALL saxpy(OpenAD_lin_1,OpenAD_prop_0,T)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN)  X
      type(active) :: Y(1:1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) I
      type(active) :: T
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
      T%v = X(I)%v
      CALL setderiv(T,X(I))
      CALL foo(X(I),T)
      Y(INT(I))%v = T%v
      CALL setderiv(Y(I),T)
      END SUBROUTINE
