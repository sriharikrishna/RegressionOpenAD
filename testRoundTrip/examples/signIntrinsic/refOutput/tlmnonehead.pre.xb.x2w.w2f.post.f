
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
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prp_0
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_0 = (-X(2)%v)
      OpenAD_dly_0 = SIGN(X(1)%v,OpenAD_lin_0)
      OpenAD_lin_1 = (SIGN(1.0D00,X(1)%v)*SIGN(1.0D00,OpenAD_lin_0))
      Y(1)%v = OpenAD_dly_0
      CALL setderiv(OpenAD_prp_0,X(1))
      CALL sax(OpenAD_lin_1,OpenAD_prp_0,Y(1))
      END SUBROUTINE
