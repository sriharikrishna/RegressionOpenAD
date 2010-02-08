
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
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN) X
      type(active) :: Y(1:1)
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y(1)%v = X(1)%v
      CALL setderiv(Y(1),X(1))
C$OPENAD XXX Simple loop
      DO I = 2,6,1
        OpenAD_Symbol_0 = (X(1)%v*Y(1)%v)
        OpenAD_Symbol_5 = (I*OpenAD_Symbol_0)
        OpenAD_Symbol_3 = Y(1)%v
        OpenAD_Symbol_4 = X(1)%v
        OpenAD_Symbol_2 = I
        Y(1)%v = OpenAD_Symbol_5
        OpenAD_acc_0 = (OpenAD_Symbol_3*OpenAD_Symbol_2)
        OpenAD_acc_1 = (OpenAD_Symbol_4*OpenAD_Symbol_2)
        CALL setderiv(OpenAD_prop_0,Y(1))
        CALL sax(OpenAD_acc_0,X(1),Y(1))
        CALL saxpy(OpenAD_acc_1,OpenAD_prop_0,Y(1))
      END DO
      CALL setderiv(OpenAD_prop_1,Y(1))
      CALL setderiv(Y(1),OpenAD_prop_1)
      END SUBROUTINE
