
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(A, K)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      type(active) :: OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      type(active) :: A
      INTEGER(w2f__i4) K
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_2 = (K*A%v)
      OpenAD_Symbol_1 = K
      A%v = OpenAD_Symbol_2
      K = (K * 2)
      CALL setderiv(OpenAD_Symbol_5,A)
      CALL sax(OpenAD_Symbol_1,OpenAD_Symbol_5,A)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
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
      J = 1
      CALL foo(X(I+J),I)
      CALL foo(X(I-J),I)
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_Symbol_3 = X(2)%v
      OpenAD_Symbol_4 = X(1)%v
      CALL sax(OpenAD_Symbol_3,X(1),Y)
      CALL saxpy(OpenAD_Symbol_4,X(2),Y)
      END SUBROUTINE
