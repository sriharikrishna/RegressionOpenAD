
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(A)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: A
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_dly_0
      type(active) :: OpenAD_prp_0
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_dly_0 = (A%v*2.0D00)
      A%v = OpenAD_dly_0
      CALL setderiv(OpenAD_prp_0,A)
      CALL sax(2.0D00,OpenAD_prp_0,A)
      END SUBROUTINE

      SUBROUTINE bar(A, K)
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
      REAL(w2f__8) OpenAD_dly_1
      REAL(w2f__8) OpenAD_lin_2
      type(active) :: OpenAD_prp_1
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      K = (K * 2)
      OpenAD_dly_1 = (K*A%v)
      OpenAD_lin_2 = K
      A%v = OpenAD_dly_1
      CALL setderiv(OpenAD_prp_1,A)
      CALL sax(OpenAD_lin_2,OpenAD_prp_1,A)
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
      EXTERNAL bar
      EXTERNAL foo
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
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
      CALL bar(X(I+1),I)
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_lin_3 = X(2)%v
      OpenAD_lin_4 = X(1)%v
      CALL sax(OpenAD_lin_3,X(1),Y)
      CALL saxpy(OpenAD_lin_4,X(2),Y)
      END SUBROUTINE
