      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      subroutine head(X,Y)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      type(active) :: C
      type(active) :: D
      external foo
      real(w2f__8) :: P
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      P = 2.0D00
      CALL foo(X(1),X(2),C,D)
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(OpenAD_Symbol_0,P)
      CALL foo(X(1),OpenAD_Symbol_0,C,D)
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(P,OpenAD_Symbol_0)
      Y(3)%v = (C%v*D%v)
      OpenAD_lin_0 = D%v
      OpenAD_lin_1 = C%v
      CALL sax(OpenAD_lin_0,C,Y(3))
      CALL saxpy(OpenAD_lin_1,D,Y(3))
      Y(4)%v = (C%v+D%v)
      CALL setderiv(Y(4),C)
      CALL inc_deriv(Y(4),D)
      Y(1)%v = X(3)%v
      CALL setderiv(Y(1),X(3))
      Y(2)%v = X(4)%v
      CALL setderiv(Y(2),X(4))
      END SUBROUTINE
      subroutine foo(A,B,C,D)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_4
      real(w2f__8) :: OpenAD_lin_5
      type(active) :: OpenAD_prop_0
      real(w2f__8) :: OpenAD_tmp_0
      real(w2f__8) :: OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
      type(active) :: D
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_0 = (A%v*B%v)
      C%v = SIN(OpenAD_tmp_0)
      OpenAD_lin_3 = B%v
      OpenAD_lin_4 = A%v
      OpenAD_lin_2 = COS(OpenAD_tmp_0)
      OpenAD_tmp_1 = (A%v+B%v)
      D%v = COS(OpenAD_tmp_1)
      OpenAD_lin_5 = (-SIN(OpenAD_tmp_1))
      OpenAD_acc_0 = (OpenAD_lin_3*OpenAD_lin_2)
      OpenAD_acc_1 = (OpenAD_lin_4*OpenAD_lin_2)
      CALL setderiv(OpenAD_prop_0,A)
      CALL inc_deriv(OpenAD_prop_0,B)
      CALL sax(OpenAD_acc_0,A,C)
      CALL saxpy(OpenAD_acc_1,B,C)
      CALL sax(OpenAD_lin_5,OpenAD_prop_0,D)
      END SUBROUTINE
