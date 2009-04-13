
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
      REAL(w2f__8) OpenAD_Symbol_3
      type(active) :: OpenAD_Symbol_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (-X(2)%v)
      OpenAD_Symbol_3 = DSIGN(X(1)%v,OpenAD_Symbol_0)
      OpenAD_Symbol_1 = (SIGN(1.0D00,X(1)%v)*SIGN(1.0D00,OpenAD_Symbol_0
     +))
      Y(1)%v = OpenAD_Symbol_3
      CALL setderiv(OpenAD_Symbol_4,X(1))
      CALL sax(OpenAD_Symbol_1,OpenAD_Symbol_4,Y(1))
      END SUBROUTINE