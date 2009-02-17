
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
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      INTENT(IN)  X
      type(active) :: Y(1:2)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      IF (X(1)%v.LT.X(2)%v) THEN
        DO I = 1, 2, 1
          Y(INT(I))%v = (X(I)%v*X(I)%v)
          OpenAD_Symbol_0 = X(I)%v
          OpenAD_Symbol_1 = X(I)%v
          CALL sax(OpenAD_Symbol_0,X(I),Y(I))
          CALL saxpy(OpenAD_Symbol_1,X(I),Y(I))
        END DO
      ELSE
        DO I = 1, 2, 1
          Y(INT(I))%v = (X(I)%v*X(I)%v)
          OpenAD_Symbol_2 = X(I)%v
          OpenAD_Symbol_3 = X(I)%v
          CALL sax(OpenAD_Symbol_2,X(I),Y(I))
          CALL saxpy(OpenAD_Symbol_3,X(I),Y(I))
        END DO
      ENDIF
      END SUBROUTINE
