
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
      REAL(w2f__8) OpenAD_Symbol_4
      type(active) :: OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      type(active) :: T
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
      T%v = X(I)%v
      CALL setderiv(T,X(I))
      I = 2
      OpenAD_Symbol_2 = (X(I)%v*T%v)
      OpenAD_Symbol_0 = T%v
      OpenAD_Symbol_1 = X(I)%v
      T%v = OpenAD_Symbol_2
      CALL setderiv(OpenAD_Symbol_5,T)
      CALL sax(OpenAD_Symbol_0,X(I),T)
      CALL saxpy(OpenAD_Symbol_1,OpenAD_Symbol_5,T)
      I = 3
      Y(1)%v = SIN(T%v)
      OpenAD_Symbol_3 = COS(T%v)
      CALL sax(OpenAD_Symbol_3,T,Y(1))
      Y(2)%v = COS(T%v)
      OpenAD_Symbol_4 = (-SIN(T%v))
      CALL sax(OpenAD_Symbol_4,T,Y(2))
      END SUBROUTINE
