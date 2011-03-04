
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use OAD_active
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL foo(X(1),X(2),Y(1))
      OpenAD_lin_0 = (X(1)%v*X(2)%v)
      Y(2)%v = SIN(OpenAD_lin_0)
      OpenAD_lin_2 = X(2)%v
      OpenAD_lin_3 = X(1)%v
      OpenAD_lin_1 = COS(OpenAD_lin_0)
      OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
      CALL sax(OpenAD_acc_0,X(1),Y(2))
      CALL saxpy(OpenAD_acc_1,X(2),Y(2))
      Y(3)%v = SIN(X(3)%v)
      OpenAD_lin_4 = COS(X(3)%v)
      CALL sax(OpenAD_lin_4,X(3),Y(3))
      Y(4)%v = COS(X(4)%v)
      OpenAD_lin_5 = (-SIN(X(4)%v))
      CALL sax(OpenAD_lin_5,X(4),Y(4))
      END SUBROUTINE

      SUBROUTINE foo(A, B, C)
      use OAD_active
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL bar(B)
      C%v = (B%v+A%v*A%v)
      OpenAD_lin_6 = A%v
      OpenAD_lin_7 = A%v
      CALL setderiv(C,B)
      CALL saxpy(OpenAD_lin_6,A,C)
      CALL saxpy(OpenAD_lin_7,A,C)
      END SUBROUTINE

      SUBROUTINE bar(A)
      use OAD_active
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: A
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_8 = (A%v*A%v)
      OpenAD_dly_0 = COS(OpenAD_lin_8)
      OpenAD_lin_10 = A%v
      OpenAD_lin_11 = A%v
      OpenAD_lin_9 = (-SIN(OpenAD_lin_8))
      A%v = OpenAD_dly_0
      OpenAD_acc_2 = (OpenAD_lin_10*OpenAD_lin_9)
      OpenAD_acc_3 = (OpenAD_lin_11*OpenAD_lin_9)
      CALL setderiv(OpenAD_prp_0,A)
      CALL setderiv(OpenAD_prp_1,A)
      CALL sax(OpenAD_acc_2,OpenAD_prp_0,A)
      CALL saxpy(OpenAD_acc_3,OpenAD_prp_1,A)
      END SUBROUTINE
