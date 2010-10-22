
C$OPENAD XXX File_start [head.f]
      MODULE anothermodule
      use OAD_active
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
      SAVE
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) PI2
      PARAMETER ( PI2 = 3.141592653589793116D00)
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use OAD_active
      use w2f__types
      use oad_intrinsics
      use anothermodule
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_2 = (X(1)%v*3.141592653589793116D00)
      OpenAD_lin_0 = (OpenAD_lin_2*2.0D00)
      Y(1)%v = SIN(OpenAD_lin_0)
      OpenAD_lin_1 = COS(OpenAD_lin_0)
      OpenAD_acc_0 = (3.141592653589793116D00*2.0D00*OpenAD_lin_1)
      CALL sax(OpenAD_acc_0,X(1),Y(1))
      END SUBROUTINE
