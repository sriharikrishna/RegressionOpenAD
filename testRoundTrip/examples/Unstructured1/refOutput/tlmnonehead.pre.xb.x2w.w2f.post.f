
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
      INTENT(IN) X
      type(active) :: Y(1:1)
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) OpenAD_lin_0
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
      I = 2
      IF (X(1)%v.LT.1.0D00) THEN
        Y(1)%v = (I*X(1)%v)
        OpenAD_lin_0 = I
        CALL sax(OpenAD_lin_0,X(1),Y(1))
        Y(1)%v = (Y(1)%v*3.0D00)
        CALL setderiv(OpenAD_prp_0,Y(1))
        CALL sax(3.0D00,OpenAD_prp_0,Y(1))
      ENDIF
      Y(1)%v = (Y(1)%v*2.0D00)
      CALL setderiv(OpenAD_prp_1,Y(1))
      CALL sax(2.0D00,OpenAD_prp_1,Y(1))
      END SUBROUTINE
