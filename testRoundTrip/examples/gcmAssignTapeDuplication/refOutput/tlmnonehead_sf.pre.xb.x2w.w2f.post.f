
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_2
      REAL(w2f__8) OpenAD_tmp_3
      REAL(w2f__8) OpenAD_tmp_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:12)
      INTENT(IN) X
      type(active) :: Y(1:1)
      INTENT(OUT) Y
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_3 = (X(8)%v+X(7)%v+X(5)%v+X(6)%v)
      OpenAD_tmp_1 = (X(1)%v*OpenAD_tmp_3+X(2)%v*X(4)%v)
      OpenAD_tmp_4 = (X(12)%v+X(11)%v+X(9)%v+X(10)%v)
      OpenAD_tmp_2 = (X(2)%v+X(1)%v*OpenAD_tmp_4)
      OpenAD_tmp_0 = (OpenAD_tmp_1/OpenAD_tmp_2)
      Y(1)%v = (X(3)%v*OpenAD_tmp_0)
      OpenAD_lin_0 = OpenAD_tmp_0
      OpenAD_lin_4 = OpenAD_tmp_3
      OpenAD_lin_5 = X(1)%v
      OpenAD_lin_6 = X(4)%v
      OpenAD_lin_7 = X(2)%v
      OpenAD_lin_2 = (INT(1_w2f__i8)/OpenAD_tmp_2)
      OpenAD_lin_8 = OpenAD_tmp_4
      OpenAD_lin_9 = X(1)%v
      OpenAD_lin_3 = (-(OpenAD_tmp_1/(OpenAD_tmp_2*OpenAD_tmp_2)))
      OpenAD_lin_1 = X(3)%v
      OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
      OpenAD_acc_2 = (OpenAD_lin_8*OpenAD_acc_1)
      OpenAD_acc_3 = (OpenAD_lin_9*OpenAD_acc_1)
      OpenAD_acc_4 = (OpenAD_lin_4*OpenAD_acc_0)
      OpenAD_acc_5 = (OpenAD_lin_5*OpenAD_acc_0)
      OpenAD_acc_6 = (OpenAD_lin_6*OpenAD_acc_0)
      OpenAD_acc_7 = (OpenAD_lin_7*OpenAD_acc_0)
      CALL setderiv(OpenAD_prop_0,X(8))
      CALL inc_deriv(OpenAD_prop_0,X(7))
      CALL inc_deriv(OpenAD_prop_0,X(5))
      CALL inc_deriv(OpenAD_prop_0,X(6))
      CALL setderiv(OpenAD_prop_1,X(12))
      CALL inc_deriv(OpenAD_prop_1,X(11))
      CALL inc_deriv(OpenAD_prop_1,X(9))
      CALL inc_deriv(OpenAD_prop_1,X(10))
      CALL sax(OpenAD_lin_0,X(3),Y(1))
      CALL saxpy(OpenAD_acc_2,X(1),Y(1))
      CALL saxpy(OpenAD_acc_3,OpenAD_prop_1,Y(1))
      CALL saxpy(OpenAD_acc_1,X(2),Y(1))
      CALL saxpy(OpenAD_acc_4,X(1),Y(1))
      CALL saxpy(OpenAD_acc_5,OpenAD_prop_0,Y(1))
      CALL saxpy(OpenAD_acc_6,X(2),Y(1))
      CALL saxpy(OpenAD_acc_7,X(4),Y(1))
      END SUBROUTINE
