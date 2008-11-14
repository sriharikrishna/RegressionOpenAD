
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(X, Y, K)
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
      type(active) :: OpenAD_Symbol_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      INTENT(IN)  X
      type(active) :: Y(1 : 2)
      INTEGER(w2f__i4) K
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      J = K
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        Y(INT(J))%v = (Y(J)%v+X(I)%v*X(I)%v)
        OpenAD_Symbol_0 = 1_w2f__i8
        OpenAD_Symbol_2 = X(I)%v
        OpenAD_Symbol_3 = X(I)%v
        OpenAD_Symbol_1 = 1_w2f__i8
        CALL setderiv(OpenAD_Symbol_4,Y(J))
        CALL sax(OpenAD_Symbol_2,X(I),Y(J))
        CALL saxpy(OpenAD_Symbol_3,X(I),Y(J))
        CALL saxpy(1 _w2f__i8,OpenAD_Symbol_4,Y(J))
      END DO
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      INTENT(IN)  X
      type(active) :: Y(1 : 2)
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
      Y(1)%v = 1.0
      Y(2)%v = 1.0
      CALL zero_deriv(Y(1))
      CALL zero_deriv(Y(2))
      CALL foo(X,Y,1)
      CALL foo(X,Y,2)
      END SUBROUTINE