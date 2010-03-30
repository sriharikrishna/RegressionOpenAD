
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
      INTEGER(w2f__i4) I
      REAL(w2f__8) S
      REAL(w2f__8) OpenAD_dly_0
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
      I = 1
      Y(1)%v = 0.0
      Y(2)%v = 0.0
      S = 1.0D00
      CALL zero_deriv(Y(1))
      CALL zero_deriv(Y(2))
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        IF (S.LT.0.0D00) THEN
          OpenAD_dly_0 = (X(I)%v*2.0D00)
          X(INT(I))%v = OpenAD_dly_0
          CALL setderiv(OpenAD_prp_0,X(I))
          CALL sax(2.0D00,OpenAD_prp_0,X(I))
        ELSE
          S = 0.0D00
        ENDIF
        Y(INT(I))%v = (X(I)%v+S)
        CALL setderiv(Y(I),X(I))
      END DO
      END SUBROUTINE
