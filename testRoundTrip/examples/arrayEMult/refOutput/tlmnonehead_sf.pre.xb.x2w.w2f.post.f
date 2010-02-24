
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) N
      SAVE N
      type(active) :: Z(1:INT(SIZE(X)))
      REAL(w2f__8) OpenAD_Symbol_0(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_1(1 : 2)
C
C     **** Initializers ****
C
      DATA N / 2 /
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Z(1:INT(SIZE(X)))%v = X(1:2)%v
      CALL setderiv(Z(1:INT(SIZE(X))),X(1:2))
      Y(1:2)%v = (X(1:2)%v*Z(1:INT(SIZE(X)))%v)
      OpenAD_Symbol_0 = Z(1:INT(SIZE(X)))%v
      OpenAD_Symbol_1 = X(1:2)%v
      CALL sax(OpenAD_Symbol_0,X(1:2),Y(1:2))
      CALL saxpy(OpenAD_Symbol_1,Z(1:INT(SIZE(X))),Y(1:2))
      END SUBROUTINE
