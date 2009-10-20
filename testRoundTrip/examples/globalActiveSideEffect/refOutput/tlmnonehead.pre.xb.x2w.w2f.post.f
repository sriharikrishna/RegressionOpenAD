

      MODULE globals
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: AGLOBALACTIVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(P)
      use w2f__types
      use OAD_active
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: P
C
C     **** Statements ****
C
      OpenAD_Symbol_1 = (P%v*AGLOBALACTIVE%v)
      OpenAD_lin_0 = AGLOBALACTIVE%v
      OpenAD_lin_1 = P%v
      AGLOBALACTIVE%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_prop_0,AGLOBALACTIVE)
      CALL sax(OpenAD_lin_0,P,AGLOBALACTIVE)
      CALL saxpy(OpenAD_lin_1,OpenAD_prop_0,AGLOBALACTIVE)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_lin_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      INTENT(IN) X
      type(active) :: Y(1:1)
      INTENT(OUT) Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) ANINACTIVE
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
      ANINACTIVE = 4.445600128173828125D+01
      AGLOBALACTIVE%v = 1.61803400516510009766D00
      CALL zero_deriv(AGLOBALACTIVE)
      CALL foo(X(1))
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_0,ANINACTIVE)
      CALL foo(OpenAD_Symbol_0)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(ANINACTIVE,OpenAD_Symbol_0)
      Y(1)%v = SIN(AGLOBALACTIVE%v)
      OpenAD_lin_2 = COS(AGLOBALACTIVE%v)
      CALL sax(OpenAD_lin_2,AGLOBALACTIVE,Y(1))
      END SUBROUTINE
