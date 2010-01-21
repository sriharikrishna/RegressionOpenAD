
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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      INTENT(IN) X
      type(active) :: Y(1:3)
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) select_expr_temp_0
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO I = 1, 3, 1
        select_expr_temp_0 = I
        IF ( select_expr_temp_0 .EQ. 1) GO TO 19
        IF ( select_expr_temp_0 .EQ. 2) GO TO 23
        GO TO 24
 24     CONTINUE
        Y(INT(I))%v = (X(I)%v*2.0D00)
        CALL sax(2.0D00,X(I),Y(I))
        GO TO 21
 19     CONTINUE
        OpenAD_Symbol_0 = SIN(X(I)%v)
        OpenAD_lin_0 = COS(X(I)%v)
        Y(INT(I))%v = OpenAD_Symbol_0
        CALL setderiv(OpenAD_prop_0,X(I))
        CALL sax(OpenAD_lin_0,OpenAD_prop_0,Y(I))
        GO TO 21
 23     CONTINUE
        OpenAD_Symbol_1 = COS(X(I)%v)
        OpenAD_lin_1 = (-SIN(X(I)%v))
        Y(INT(I))%v = OpenAD_Symbol_1
        CALL setderiv(OpenAD_prop_1,X(I))
        CALL sax(OpenAD_lin_1,OpenAD_prop_1,Y(I))
        GO TO 21
 21     CONTINUE
      END DO
      END SUBROUTINE
