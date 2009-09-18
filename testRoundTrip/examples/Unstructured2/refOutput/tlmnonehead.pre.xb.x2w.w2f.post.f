

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
      goto 2
 2    CONTINUE
      goto 3
 3    CONTINUE
      J = 1
      goto 17
 4    CONTINUE
      J = J+1
 17   CONTINUE
      IF (J.LE.5) THEN
        goto 5
      ELSE
        goto 15
      ENDIF
 5    CONTINUE
      goto 6
 6    CONTINUE
      II = 1
      goto 18
 7    CONTINUE
      II = II+1
 18   CONTINUE
      IF (II.LE.5) THEN
        goto 8
      ELSE
        goto 9
      ENDIF
 8    CONTINUE
      goto 9
 9    CONTINUE
      goto 10
 10   CONTINUE
      II = 1
      goto 19
 11   CONTINUE
      II = II+1
 19   CONTINUE
      IF (II.LE.5) THEN
        goto 12
      ELSE
        goto 14
      ENDIF
 12   CONTINUE
      Y(1)%v = X(1)%v
      CALL setderiv(Y(1),X(1))
      goto 13
 13   CONTINUE
      goto 11
 14   CONTINUE
      goto 4
 15   CONTINUE
      goto 16
 16   CONTINUE
      END SUBROUTINE
