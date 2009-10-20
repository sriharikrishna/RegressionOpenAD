

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) II
      INTEGER(w2f__i4) J
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
 1    CONTINUE
      GO TO 2
 2    CONTINUE
      GO TO 3
 3    CONTINUE
      J = 1
      GO TO 17
 4    CONTINUE
      J = J+1
 17   CONTINUE
      IF (J.LE.5) THEN
        GO TO 5
      ELSE
        GO TO 15
      ENDIF
 5    CONTINUE
      GO TO 6
 6    CONTINUE
      II = 1
      GO TO 18
 7    CONTINUE
      II = II+1
 18   CONTINUE
      IF (II.LE.5) THEN
        GO TO 8
      ELSE
        GO TO 9
      ENDIF
 8    CONTINUE
      GO TO 9
 9    CONTINUE
      GO TO 10
 10   CONTINUE
      II = 1
      GO TO 19
 11   CONTINUE
      II = II+1
 19   CONTINUE
      IF (II.LE.5) THEN
        GO TO 12
      ELSE
        GO TO 14
      ENDIF
 12   CONTINUE
      Y(1)%v = X(1)%v
      CALL setderiv(Y(1),X(1))
      GO TO 13
 13   CONTINUE
      GO TO 11
 14   CONTINUE
      GO TO 4
 15   CONTINUE
      GO TO 16
 16   CONTINUE
      END SUBROUTINE
