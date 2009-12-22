
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
  type(active) :: A
  INTENT(IN) A
  REAL(w2f__8) B
  INTENT(IN) B
  type(active) :: R
  INTENT(OUT) R
!
!       **** Statements ****
!
  IF (A%v.GT.B) THEN
    R%v = A%v
    CALL setderiv(R,A)
  ELSE
    R%v = B
    CALL zero_deriv(R)
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
      MODULE foo
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      CONTAINS

        Function BAR(X)
        use w2f__types
        use OAD_active
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        REAL(w2f__8) X
        INTENT(IN) X
        REAL(w2f__8) BAR
C
C       **** Statements ****
C
        BAR = MAX(X,4.0D00)
        RETURN
        END FUNCTION

        SUBROUTINE OAD_S_BAR(X, BAR)
        use w2f__types
        use OAD_active
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        type(active) :: X
        INTENT(IN) X
        type(active) :: BAR
        INTENT(OUT) BAR
C
C       **** Local Variables and Functions ****
C
        type(active) :: OAD_CTMP0
C
C       **** Statements ****
C
        CALL OAD_S_MAX_D(X,4.0D00,OAD_CTMP0)
        BAR%v = OAD_CTMP0%v
        CALL setderiv(BAR,OAD_CTMP0)
        END SUBROUTINE
      END

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      use foo
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1
      REAL(w2f__8) T
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL OAD_S_BAR(X(1),OAD_CTMP0)
      Y(1)%v = (OAD_CTMP0%v*2.0D00)
      CALL sax(2.0D00,OAD_CTMP0,Y(1))
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_0,OAD_CTMP1)
      CALL OAD_S_BAR(Y(1),OpenAD_Symbol_0)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(OAD_CTMP1,OpenAD_Symbol_0)
      T = OAD_CTMP1
      END SUBROUTINE
