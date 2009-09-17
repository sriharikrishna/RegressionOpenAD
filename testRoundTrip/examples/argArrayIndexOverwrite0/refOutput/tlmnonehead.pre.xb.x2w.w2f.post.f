

      SUBROUTINE foo(X, Y, K)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      type(active) :: X
      type(active) :: Y
      INTEGER(w2f__i4) K
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y%v = (K*X%v)
      OpenAD_lin_1 = K
      K = (K+2)
      CALL sax(OpenAD_lin_1,X,Y)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) K
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      K = 1
      CALL foo(X(K),Y,K)
      END SUBROUTINE
