
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Top Level Pragmas ****
!
interface OAD_S_MAX
  module procedure OAD_S_MAX_D

end interface
      
interface OAD_S_MIN
  module procedure OAD_S_MIN_D

end interface

!
!     **** Statements ****
!
CONTAINS

  SUBROUTINE OAD_S_MAX_D(A, B, R)
  use w2f__types
  use OAD_active
  IMPLICIT NONE
!
!       **** Parameters and Result ****
!
  REAL(w2f__8) A
  INTENT(IN) A
  REAL(w2f__8) B
  INTENT(IN) B
  REAL(w2f__8) R
  INTENT(OUT) R
!
!       **** Statements ****
!
  IF(A .GT. B) THEN
    R = A
  ELSE
    R = B
  ENDIF
  END SUBROUTINE

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
      REAL(w2f__8) OAD_CTMP1
      REAL(w2f__8) P1
      REAL(w2f__8) P2
      REAL(w2f__8) OpenAD_lin_0
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      P1 = 2.39999999999999991118D00
      P2 = (-3.0D+01)
      CALL OAD_S_MIN_D(X(1),X(2),OAD_CTMP0)
      CALL OAD_S_MAX_D(P1,P2,OAD_CTMP1)
      Y(1)%v = (OAD_CTMP0%v*OAD_CTMP1)
      OpenAD_lin_0 = OAD_CTMP1
      CALL sax(OpenAD_lin_0,OAD_CTMP0,Y(1))
      END SUBROUTINE
