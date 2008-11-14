

      SUBROUTINE foo(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      type(active) :: Y
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_Symbol_2 = X(2)%v
      OpenAD_Symbol_3 = X(1)%v
      CALL sax(OpenAD_Symbol_2,X(1),Y)
      CALL saxpy(OpenAD_Symbol_3,X(2),Y)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0(1 : 2, 1 : 3)
      type(active) :: OpenAD_Symbol_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) APX(1 : 2, 1 : 3)
      type(active) :: AX(1 : 2, 1 : 3)
      EXTERNAL foo
      INTEGER(w2f__i4) I
      REAL(w2f__8) PY
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO I = 1, 2, 1
        AX(INT(I),2)%v = X(I)%v
        CALL setderiv(AX(I,2),X(I))
      END DO
      CALL foo(AX(1,2),Y)
C     $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
      CALL convert_p2a_matrix(OpenAD_Symbol_0,APX)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
      CALL foo(OpenAD_Symbol_0(1,2),OpenAD_Symbol_1)
C     $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
      CALL convert_a2p_matrix(APX,OpenAD_Symbol_0)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)
      END SUBROUTINE
