
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
      REAL(w2f__8) OpenAD_lin_0
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
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
      OpenAD_Symbol_0 = LOG10(X(1)%v)
      OpenAD_lin_0 = (INT(1_w2f__i8)/(X(1)%v*LOG(1.0D+01)))
      Y(1)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,X(1))
      CALL sax(OpenAD_lin_0,OpenAD_prop_0,Y(1))
      END SUBROUTINE
