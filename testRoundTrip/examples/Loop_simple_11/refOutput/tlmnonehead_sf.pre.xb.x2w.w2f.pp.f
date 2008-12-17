
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
      type(active) :: OpenAD_Symbol_3
      type(active) :: OpenAD_Symbol_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 1)
      INTENT(IN)  X
      type(active) :: Y(1 : 1)
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
      Y(1)%v = 1.0D00
      CALL zero_deriv(Y(1))
      DO I = 1, 2, 1
        IF (X(1)%v .GE. 1.0D00) THEN
          OpenAD_Symbol_2 = (X(1)%v*Y(1)%v)
          OpenAD_Symbol_0 = Y(1)%v
          OpenAD_Symbol_1 = X(1)%v
          Y(1)%v = OpenAD_Symbol_2
          CALL setderiv(OpenAD_Symbol_3,Y(1))
          CALL sax(OpenAD_Symbol_0,X(1),Y(1))
          CALL saxpy(OpenAD_Symbol_1,OpenAD_Symbol_3,Y(1))
        ELSE
          Y(1)%v = (Y(1)%v-X(1)%v)
          CALL setderiv(OpenAD_Symbol_4,Y(1))
          CALL sax(1 _w2f__i8,OpenAD_Symbol_4,Y(1))
          CALL saxpy(-1 _w2f__i8,X(1),Y(1))
        ENDIF
      END DO
      END SUBROUTINE
