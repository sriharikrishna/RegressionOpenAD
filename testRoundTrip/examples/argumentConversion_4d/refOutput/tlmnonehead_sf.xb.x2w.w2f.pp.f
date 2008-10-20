
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

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
      type(active) :: X(1 : 4)
      type(active) :: Y
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      Y%v = (X(2)%v*X(4)%v)
      OpenAD_Symbol_2 = X(4)%v
      OpenAD_Symbol_3 = X(2)%v
      CALL sax(OpenAD_Symbol_2,X(2),Y)
      CALL saxpy(OpenAD_Symbol_3,X(4),Y)
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0(1 : 2, 1 : 2)
      type(active) :: OpenAD_Symbol_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__8) P(1 : 2, 1 : 2)
      REAL(w2f__8) PY
      type(active) :: T(1 : 2, 1 : 2)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T(2,1)%v = X(1)%v
      CALL setderiv(T(2,1),X(1))
      T(2,2)%v = X(2)%v
      CALL setderiv(T(2,2),X(2))
      CALL foo(T,Y)
C     $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
      CALL convert_p2a_matrix(OpenAD_Symbol_0,P)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
      CALL foo(OpenAD_Symbol_0,OpenAD_Symbol_1)
C     $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
      CALL convert_a2p_matrix(P,OpenAD_Symbol_0)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)
      END SUBROUTINE