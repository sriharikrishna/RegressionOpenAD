
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
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i4) G
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(A, N)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      type(active) :: A(1:INT((N+G)))
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_dly_0
      type(active) :: OpenAD_prp_0
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO I = 1, (N + 1), 1
        OpenAD_dly_0 = (A(I)%v*2.0D00)
        A(INT(I))%v = OpenAD_dly_0
        CALL setderiv(OpenAD_prp_0,A(I))
        CALL sax(2.0D00,OpenAD_prp_0,A(I))
      END DO
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) I
      type(active) :: OpenAD_prp_1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      G = 1
      I = 2
      CALL foo(X,2)
      CALL foo(X,I)
      Y(1)%v = 0
      CALL zero_deriv(Y(1))
      DO I = 1,3,1
        Y(1)%v = (X(I)%v+Y(1)%v)
        CALL setderiv(OpenAD_prp_1,Y(1))
        CALL setderiv(Y(1),X(I))
        CALL inc_deriv(Y(1),OpenAD_prp_1)
      END DO
      END SUBROUTINE
