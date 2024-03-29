
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use OAD_active
      use w2f__types
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
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      type(active) :: OpenAD_prp_0
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
      I = 1
      DO WHILE(I .LT. 3)
        IF(I .LT. 2) THEN
          OpenAD_lin_0 = COS(X(1)%v)
          Y(2)%v = SIN(X(1)%v)
          CALL sax(OpenAD_lin_0,X(1),Y(2))
        ELSE
          OpenAD_lin_1 = (-SIN(X(2)%v))
          Y(1)%v = COS(X(2)%v)
          CALL sax(OpenAD_lin_1,X(2),Y(1))
        ENDIF
        I = (I+1)
      END DO
      OpenAD_lin_2 = Y(2)%v
      OpenAD_lin_3 = Y(1)%v
      Y(2)%v = (Y(1)%v*Y(2)%v)
      CALL setderiv(OpenAD_prp_0,Y(1))
      CALL setderiv(OpenAD_prp_1,Y(2))
      CALL sax(OpenAD_lin_2,OpenAD_prp_0,Y(2))
      CALL saxpy(OpenAD_lin_3,OpenAD_prp_1,Y(2))
      END SUBROUTINE
