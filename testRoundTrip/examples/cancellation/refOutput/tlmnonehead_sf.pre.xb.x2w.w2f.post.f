
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
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_9
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
      OpenAD_Symbol_0 = (X1%v/X2%v)
      A%v = (1.0D00/OpenAD_Symbol_0)
      OpenAD_Symbol_3 = (INT(1_w2f__i8)/X2%v)
      OpenAD_Symbol_4 = (-(X1%v/(X2%v*X2%v)))
      OpenAD_Symbol_2 = (-(1.0D00/(OpenAD_Symbol_0*OpenAD_Symbol_0)))
      B%v = (X2%v*A%v)
      OpenAD_Symbol_5 = A%v
      OpenAD_Symbol_6 = X2%v
      C%v = X2%v
      OpenAD_acc_0 = (OpenAD_Symbol_3*OpenAD_Symbol_2)
      OpenAD_acc_1 = (OpenAD_Symbol_4*OpenAD_Symbol_2)
      CALL setderiv(C,X2)
      CALL sax(OpenAD_acc_0,X1,A)
      CALL saxpy(OpenAD_acc_1,X2,A)
      CALL sax(OpenAD_Symbol_5,X2,B)
      CALL saxpy(OpenAD_Symbol_6,A,B)
      OpenAD_Symbol_8 = SIN(C%v)
      OpenAD_Symbol_7 = COS(C%v)
      C%v = OpenAD_Symbol_8
      D%v = A%v
      F%v = A%v
      CALL setderiv(OpenAD_prop_0,C)
      CALL sax(OpenAD_Symbol_7,OpenAD_prop_0,C)
      CALL setderiv(D,A)
      CALL setderiv(F,A)
      OpenAD_Symbol_9 = (F%v-A%v)
      F%v = (OpenAD_Symbol_9*5.0D-01)
      OpenAD_Symbol_11 = (D%v-A%v)
      E%v = (OpenAD_Symbol_11*5.0D-01)
      Y%v = (B%v*F%v+C%v*E%v)
      OpenAD_Symbol_13 = F%v
      OpenAD_Symbol_14 = B%v
      OpenAD_Symbol_15 = E%v
      OpenAD_Symbol_16 = C%v
      OpenAD_acc_2 = (5.0D-01*OpenAD_Symbol_14)
      OpenAD_acc_3 = (5.0D-01*OpenAD_Symbol_16)
      CALL setderiv(OpenAD_prop_1,F)
      CALL dec_deriv(OpenAD_prop_1,A)
      CALL setderiv(OpenAD_prop_2,D)
      CALL dec_deriv(OpenAD_prop_2,A)
      CALL sax(OpenAD_Symbol_13,B,Y)
      CALL saxpy(OpenAD_acc_2,OpenAD_prop_1,Y)
      CALL saxpy(OpenAD_Symbol_15,C,Y)
      CALL saxpy(OpenAD_acc_3,OpenAD_prop_2,Y)
      END SUBROUTINE
