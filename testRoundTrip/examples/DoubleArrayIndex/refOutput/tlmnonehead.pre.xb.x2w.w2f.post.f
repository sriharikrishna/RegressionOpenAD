
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(A)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: A
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (A%v*2.0D00)
      A%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,A)
      CALL sax(2.0D00,OpenAD_prop_0,A)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
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
      CALL foo(X(I))
      CALL foo(X(I))
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_lin_1 = X(2)%v
      OpenAD_lin_2 = X(1)%v
      CALL sax(OpenAD_lin_1,X(1),Y)
      CALL saxpy(OpenAD_lin_2,X(2),Y)
      END SUBROUTINE
