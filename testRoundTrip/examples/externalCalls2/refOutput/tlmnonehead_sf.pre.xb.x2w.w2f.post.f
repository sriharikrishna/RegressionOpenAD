      module all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine foo(X,Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL barext
      type(active) :: T
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      T%v = X(1)%v
      CALL setderiv(T,X(1))
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(OpenAD_Symbol_0,T)
      CALL barext(OpenAD_Symbol_0)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(T,OpenAD_Symbol_0)
      Y%v = (X(2)%v*T%v)
      OpenAD_lin_0 = T%v
      OpenAD_lin_1 = X(2)%v
      CALL sax(OpenAD_lin_0,X(2),Y)
      CALL saxpy(OpenAD_lin_1,T,Y)
      END SUBROUTINE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL barext
      EXTERNAL foo
      INTEGER(w2f__i4) I
      REAL(w2f__8) T(1 : 2)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      I = 2
      CALL barext(T(I))
      I = 1
      CALL foo(X,Y(I))
      END SUBROUTINE
