      module all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
1     CONTINUE
      goto 2
2     CONTINUE
C$OPENAD XXX Template ad_template.f
      goto 3
3     CONTINUE
      OpenAD_Symbol_0 = (X(1)%v*X(1)%v)
      OpenAD_lin_0 = X(1)%v
      OpenAD_lin_1 = X(1)%v
      X(1)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,X(1))
      CALL setderiv(OpenAD_prop_1,X(1))
      CALL sax(OpenAD_lin_0,OpenAD_prop_0,X(1))
      CALL saxpy(OpenAD_lin_1,OpenAD_prop_1,X(1))
      goto 4
4     CONTINUE
      OpenAD_Symbol_1 = (X(1)%v*3.0D00)
      X(1)%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_prop_2,X(1))
      CALL sax(3.0D00,OpenAD_prop_2,X(1))
      goto 5
5     CONTINUE
      OpenAD_Symbol_2 = (X(1)%v*2.0D00)
      X(1)%v = OpenAD_Symbol_2
      CALL setderiv(OpenAD_prop_3,X(1))
      CALL sax(2.0D00,OpenAD_prop_3,X(1))
      goto 6
6     CONTINUE
      Y(1)%v = X(1)%v
      CALL setderiv(Y(1),X(1))
      goto 7
7     CONTINUE
      END SUBROUTINE
