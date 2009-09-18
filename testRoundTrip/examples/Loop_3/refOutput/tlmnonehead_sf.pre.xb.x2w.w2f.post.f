
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
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      INTENT(IN)  X
      type(active) :: Y(1:3)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO I = 1,3,1
        Y(INT(I))%v = X(I)%v
        CALL setderiv(Y(I),X(I))
      END DO
      DO I = 1,3,1
        Y(INT(I))%v = X(I)%v
        CALL setderiv(Y(I),X(I))
        DO J = 1,3,1
          Y(INT(I))%v = X(I)%v
          CALL setderiv(Y(I),X(I))
          DO K = 1,3,1
            OpenAD_Symbol_0 = (X(J)%v*Y(I)%v)
            OpenAD_lin_0 = Y(I)%v
            OpenAD_lin_1 = X(J)%v
            Y(INT(I))%v = OpenAD_Symbol_0
            CALL setderiv(OpenAD_prop_0,Y(I))
            CALL sax(OpenAD_lin_0,X(J),Y(I))
            CALL saxpy(OpenAD_lin_1,OpenAD_prop_0,Y(I))
          END DO
        END DO
      END DO
      END SUBROUTINE
