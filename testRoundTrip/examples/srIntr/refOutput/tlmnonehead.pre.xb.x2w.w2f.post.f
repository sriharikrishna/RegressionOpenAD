

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      EXTERNAL oad_s_min_d
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL oad_s_min_d(X(1),X(2),OAD_CTMP0)
      Y(1)%v = OAD_CTMP0%v
      CALL setderiv(Y(1),OAD_CTMP0)
      END SUBROUTINE

      SUBROUTINE oad_s_min_d(A, B, R)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: A
      INTENT(IN) A
      type(active) :: B
      INTENT(IN) B
      type(active) :: R
      INTENT(OUT) R
C
C     **** Statements ****
C
      IF (A%v.LT.B%v) THEN
        R%v = A%v
        CALL setderiv(R,A)
      ELSE
        R%v = B%v
        CALL setderiv(R,B)
      ENDIF
      END SUBROUTINE
