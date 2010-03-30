
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
      SUBROUTINE head(X1, X2, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X1
      INTENT(IN) X1
      type(active) :: X2
      INTENT(IN) X2
      type(active) :: Y
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
      type(active) :: D
      type(active) :: E
      type(active) :: F
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1
      type(active) :: OpenAD_prp_2
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_0 = (X1%v/X2%v)
      A%v = (1.0D00/OpenAD_lin_0)
      OpenAD_lin_3 = (INT(1_w2f__i8)/X2%v)
      OpenAD_lin_4 = (-(X1%v/(X2%v*X2%v)))
      OpenAD_lin_2 = (-(1.0D00/(OpenAD_lin_0*OpenAD_lin_0)))
      B%v = (X2%v*A%v)
      OpenAD_lin_5 = A%v
      OpenAD_lin_6 = X2%v
      C%v = X2%v
      OpenAD_acc_0 = (OpenAD_lin_3*OpenAD_lin_2)
      OpenAD_acc_1 = (OpenAD_lin_4*OpenAD_lin_2)
      CALL setderiv(C,X2)
      CALL sax(OpenAD_acc_0,X1,A)
      CALL saxpy(OpenAD_acc_1,X2,A)
      CALL sax(OpenAD_lin_5,X2,B)
      CALL saxpy(OpenAD_lin_6,A,B)
      OpenAD_dly_0 = SIN(C%v)
      OpenAD_lin_7 = COS(C%v)
      C%v = OpenAD_dly_0
      D%v = A%v
      F%v = A%v
      CALL setderiv(OpenAD_prp_0,C)
      CALL sax(OpenAD_lin_7,OpenAD_prp_0,C)
      CALL setderiv(D,A)
      CALL setderiv(F,A)
      OpenAD_lin_8 = (F%v-A%v)
      F%v = (OpenAD_lin_8*5.0D-01)
      OpenAD_lin_10 = (D%v-A%v)
      E%v = (OpenAD_lin_10*5.0D-01)
      Y%v = (B%v*F%v+C%v*E%v)
      OpenAD_lin_12 = F%v
      OpenAD_lin_13 = B%v
      OpenAD_lin_14 = E%v
      OpenAD_lin_15 = C%v
      OpenAD_acc_2 = (5.0D-01*OpenAD_lin_13)
      OpenAD_acc_3 = (5.0D-01*OpenAD_lin_15)
      CALL setderiv(OpenAD_prp_1,F)
      CALL dec_deriv(OpenAD_prp_1,A)
      CALL setderiv(OpenAD_prp_2,D)
      CALL dec_deriv(OpenAD_prp_2,A)
      CALL sax(OpenAD_lin_12,B,Y)
      CALL saxpy(OpenAD_acc_2,OpenAD_prp_1,Y)
      CALL saxpy(OpenAD_lin_14,C,Y)
      CALL saxpy(OpenAD_acc_3,OpenAD_prp_2,Y)
      END SUBROUTINE
