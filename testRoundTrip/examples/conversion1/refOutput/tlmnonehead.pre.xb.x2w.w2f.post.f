
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_lin_0
      INTEGER(w2f__i8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
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
      OpenAD_lin_0 = DBLE(X(1)%v)
      OpenAD_lin_1 = DBLE(2)
      Y(1)%v = (OpenAD_lin_0*INT(OpenAD_lin_1))
      OpenAD_lin_2 = OpenAD_lin_1
      CALL setderiv(OpenAD_prp_0,X(1))
      CALL sax(OpenAD_lin_2,OpenAD_prp_0,Y(1))
      END SUBROUTINE
