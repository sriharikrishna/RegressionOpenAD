
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(A, K)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: A
      INTEGER(w2f__i4) K
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prp_0
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      K = (K * 2)
      OpenAD_dly_0 = (K*A%v)
      OpenAD_lin_1 = K
      A%v = OpenAD_dly_0
      CALL setderiv(OpenAD_prp_0,A)
      CALL sax(OpenAD_lin_1,OpenAD_prp_0,A)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
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
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
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
      CALL foo(X(K),K)
      K = 1
      CALL foo(X(K),K)
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_lin_2 = X(2)%v
      OpenAD_lin_3 = X(1)%v
      CALL sax(OpenAD_lin_2,X(1),Y)
      CALL saxpy(OpenAD_lin_3,X(2),Y)
      END SUBROUTINE
