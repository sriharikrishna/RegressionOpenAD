
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
C
C     **** Parameters and Result ****
C
      type(active) :: X
      INTENT(IN) X
      type(active) :: Y
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (X%v*X%v)
      Y%v = SIN(OpenAD_Symbol_0)
      OpenAD_Symbol_2 = X%v
      OpenAD_Symbol_3 = X%v
      OpenAD_Symbol_1 = COS(OpenAD_Symbol_0)
      OpenAD_acc_0 = (OpenAD_Symbol_2*OpenAD_Symbol_1)
      OpenAD_acc_1 = (OpenAD_Symbol_3*OpenAD_Symbol_1)
      CALL sax(OpenAD_acc_0,X,Y)
      CALL saxpy(OpenAD_acc_1,X,Y)
      END SUBROUTINE
