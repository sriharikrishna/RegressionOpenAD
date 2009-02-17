
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(X, Y, L, U, S)
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
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      INTENT(IN)  X
      type(active) :: Y
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) U
      INTEGER(w2f__i4) S
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = L, U, S
        OpenAD_Symbol_2 = (X(I)%v*Y%v)
        OpenAD_Symbol_0 = Y%v
        OpenAD_Symbol_1 = X(I)%v
        Y%v = OpenAD_Symbol_2
        CALL setderiv(OpenAD_Symbol_3,Y)
        CALL sax(OpenAD_Symbol_0,X(I),Y)
        CALL saxpy(OpenAD_Symbol_1,OpenAD_Symbol_3,Y)
      END DO
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      INTENT(IN)  X
      type(active) :: Y(1:4)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y(1:4)%v = X(1:4)%v
      CALL setderiv(Y(1:4),X(1:4))
      CALL foo(X,Y(1),1,3,1)
      CALL foo(X,Y(2),3,1,-1)
      CALL foo(X,Y(3),1,5,2)
      CALL foo(X,Y(4),5,1,-2)
      END SUBROUTINE
