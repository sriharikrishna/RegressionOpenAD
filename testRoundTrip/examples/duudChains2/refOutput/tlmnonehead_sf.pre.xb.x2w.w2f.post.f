
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

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
      LOGICAL(w2f__i4) L
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      L = .TRUE.
      IF(L) THEN
        Y(1)%v = (X(1)%v*4.0D00)
        CALL sax(4.0D00,X(1),Y(1))
      ELSE
        Y(1)%v = (X(1)%v*2.0D00)
        CALL sax(2.0D00,X(1),Y(1))
      ENDIF
      END SUBROUTINE