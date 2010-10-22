
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
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL FOO()
      CALL BAR()
      CONTAINS

        SUBROUTINE FOO()
        use w2f__types
        IMPLICIT NONE
C
C       **** Local Variables and Functions ****
C
        REAL(w2f__8) OpenAD_lin_0
        REAL(w2f__8) OpenAD_lin_1
C
C       **** Statements ****
C
        Y(1)%v = (X(1)%v*X(2)%v)
        OpenAD_lin_0 = X(2)%v
        OpenAD_lin_1 = X(1)%v
        CALL sax(OpenAD_lin_0,X(1),Y(1))
        CALL saxpy(OpenAD_lin_1,X(2),Y(1))
        END SUBROUTINE

        SUBROUTINE BAR()
        use w2f__types
        IMPLICIT NONE
C
C       **** Local Variables and Functions ****
C
        REAL(w2f__8) OpenAD_acc_0
        REAL(w2f__8) OpenAD_acc_1
        REAL(w2f__8) OpenAD_acc_2
        REAL(w2f__8) OpenAD_dly_0
        REAL(w2f__8) OpenAD_lin_10
        REAL(w2f__8) OpenAD_lin_2
        REAL(w2f__8) OpenAD_lin_3
        REAL(w2f__8) OpenAD_lin_4
        REAL(w2f__8) OpenAD_lin_5
        REAL(w2f__8) OpenAD_lin_6
        REAL(w2f__8) OpenAD_lin_7
        REAL(w2f__8) OpenAD_lin_8
        REAL(w2f__8) OpenAD_lin_9
        type(active) :: OpenAD_prp_0
        type(active) :: OpenAD_prp_1
        type(active) :: OpenAD_prp_2
C
C       **** Statements ****
C
        OpenAD_lin_2 = COS(X(2)%v)
        OpenAD_lin_7 = SIN(X(1)%v)
        OpenAD_lin_3 = (Y(1)%v*OpenAD_lin_7)
        OpenAD_dly_0 = (OpenAD_lin_2*OpenAD_lin_3)
        OpenAD_lin_6 = (-SIN(X(2)%v))
        OpenAD_lin_4 = OpenAD_lin_3
        OpenAD_lin_8 = OpenAD_lin_7
        OpenAD_lin_10 = COS(X(1)%v)
        OpenAD_lin_9 = Y(1)%v
        OpenAD_lin_5 = OpenAD_lin_2
        Y(1)%v = OpenAD_dly_0
        OpenAD_acc_0 = (OpenAD_lin_6*OpenAD_lin_4)
        OpenAD_acc_1 = (OpenAD_lin_8*OpenAD_lin_5)
        OpenAD_acc_2 = (OpenAD_lin_10*OpenAD_lin_9*OpenAD_lin_5)
        CALL setderiv(OpenAD_prp_0,X(2))
        CALL setderiv(OpenAD_prp_1,Y(1))
        CALL setderiv(OpenAD_prp_2,X(1))
        CALL sax(OpenAD_acc_0,OpenAD_prp_0,Y(1))
        CALL saxpy(OpenAD_acc_1,OpenAD_prp_1,Y(1))
        CALL saxpy(OpenAD_acc_2,OpenAD_prp_2,Y(1))
        END SUBROUTINE
      END
