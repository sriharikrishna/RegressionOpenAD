
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
      type(active) :: OpenAD_Symbol_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
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
      CALL zero_deriv(Y(1))
      CALL zero_deriv(Y(2))
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        J = 1
        IF(J .LT. 2) THEN
          Y(INT(I))%v = (Y(I)%v+X(I)%v*X(J)%v)
          OpenAD_Symbol_0 = X(J)%v
          OpenAD_Symbol_1 = X(I)%v
          CALL setderiv(OpenAD_Symbol_2,Y(I))
          CALL sax(OpenAD_Symbol_0,X(I),Y(I))
          CALL saxpy(OpenAD_Symbol_1,X(J),Y(I))
          CALL saxpy(1_w2f__i8,OpenAD_Symbol_2,Y(I))
          J = (J + 1)
        ENDIF
      END DO
      END SUBROUTINE
