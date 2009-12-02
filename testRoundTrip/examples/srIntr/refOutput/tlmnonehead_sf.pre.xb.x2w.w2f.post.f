
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Top Level Pragmas ****
!
interface OAD_S_MIN
  module procedure OAD_S_MIN_D

end interface

!
!     **** Statements ****
!
CONTAINS

  SUBROUTINE OAD_S_MIN_D(A, B, R)
  use w2f__types
  use OAD_active
  IMPLICIT NONE
!
!       **** Parameters and Result ****
!
  type(active) :: A
  INTENT(IN) A
  type(active) :: B
  INTENT(IN) B
  type(active) :: R
  INTENT(OUT) R
!
!       **** Statements ****
!
  IF (A%v.LT.B%v) THEN
    R%v = A%v
    CALL setderiv(R,A)
  ELSE
    R%v = B%v
    CALL setderiv(R,B)
  ENDIF
  END SUBROUTINE
END

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
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL OAD_S_MIN_D(X(1),X(2),OAD_CTMP0)
      Y(1)%v = OAD_CTMP0%v
      CALL setderiv(Y(1),OAD_CTMP0)
      END SUBROUTINE
