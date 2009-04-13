

      SUBROUTINE foo(A)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_7
C
C     **** Parameters and Result ****
C
      type(active) :: A
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_1 = (A%v*2.0D00)
      A%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_Symbol_7,A)
      CALL sax(2.0D00,OpenAD_Symbol_7,A)
      END SUBROUTINE

      SUBROUTINE bar(A, K)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      type(active) :: OpenAD_Symbol_8
C
C     **** Parameters and Result ****
C
      type(active) :: A
      INTEGER(w2f__i4) K
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      K = (K * 2)
      OpenAD_Symbol_4 = (K*A%v)
      OpenAD_Symbol_3 = K
      A%v = OpenAD_Symbol_4
      CALL setderiv(OpenAD_Symbol_8,A)
      CALL sax(OpenAD_Symbol_3,OpenAD_Symbol_8,A)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
      EXTERNAL foo
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
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
      DO J = 1, 2, 1
        CALL foo(X(J))
        CALL bar(X(J),I)
      END DO
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_Symbol_5 = X(2)%v
      OpenAD_Symbol_6 = X(1)%v
      CALL sax(OpenAD_Symbol_5,X(1),Y)
      CALL saxpy(OpenAD_Symbol_6,X(2),Y)
      END SUBROUTINE
