
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
      MODULE globals
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: AGLOBAL
      REAL(w2f__8) APASSIVEGLOBAL
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      APASSIVEGLOBAL = 2.0D00
      AGLOBAL%v = (X(1)%v*X(2)%v)
      OpenAD_Symbol_0 = X(2)%v
      OpenAD_Symbol_1 = X(1)%v
      Y(1)%v = (AGLOBAL%v*APASSIVEGLOBAL)
      OpenAD_Symbol_2 = APASSIVEGLOBAL
      CALL sax(OpenAD_Symbol_0,X(1),AGLOBAL)
      CALL saxpy(OpenAD_Symbol_1,X(2),AGLOBAL)
      CALL sax(OpenAD_Symbol_2,AGLOBAL,Y(1))
      END SUBROUTINE
