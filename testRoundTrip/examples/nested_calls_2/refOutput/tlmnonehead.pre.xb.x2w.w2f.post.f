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
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:4)
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
      CALL foo(X(1),X(2),Y(1))
      CALL foo(X(1),X(2),Y(1))
      OpenAD_tmp_0 = (X(1)%v*X(2)%v)
      Y(2)%v = SIN(OpenAD_tmp_0)
      OpenAD_lin_1 = X(2)%v
      OpenAD_lin_2 = X(1)%v
      OpenAD_lin_0 = COS(OpenAD_tmp_0)
      OpenAD_acc_0 = (OpenAD_lin_1*OpenAD_lin_0)
      OpenAD_acc_1 = (OpenAD_lin_2*OpenAD_lin_0)
      CALL sax(OpenAD_acc_0,X(1),Y(2))
      CALL saxpy(OpenAD_acc_1,X(2),Y(2))
      OpenAD_Symbol_0 = SIN(X(3)%v)
      OpenAD_lin_3 = COS(X(3)%v)
      Y(3)%v = OpenAD_Symbol_0
      CALL setderiv(OpenAD_prop_0,X(3))
      CALL sax(OpenAD_lin_3,OpenAD_prop_0,Y(3))
      OpenAD_Symbol_1 = COS(X(4)%v)
      OpenAD_lin_4 = (-SIN(X(4)%v))
      Y(4)%v = OpenAD_Symbol_1
      CALL setderiv(OpenAD_prop_1,X(4))
      CALL sax(OpenAD_lin_4,OpenAD_prop_1,Y(4))
      END SUBROUTINE
      subroutine foo(A,B,C)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
C
C     **** Parameters and Result ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL bar(B)
      C%v = (B%v+A%v*A%v)
      OpenAD_lin_5 = A%v
      OpenAD_lin_6 = A%v
      CALL setderiv(C,B)
      CALL saxpy(OpenAD_lin_5,A,C)
      CALL saxpy(OpenAD_lin_6,A,C)
      END SUBROUTINE
      subroutine bar(A)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
      REAL(w2f__8) OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      type(active) :: A
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_1 = (A%v*A%v)
      OpenAD_Symbol_2 = COS(OpenAD_tmp_1)
      OpenAD_lin_8 = A%v
      OpenAD_lin_9 = A%v
      OpenAD_lin_7 = (-SIN(OpenAD_tmp_1))
      A%v = OpenAD_Symbol_2
      OpenAD_acc_2 = (OpenAD_lin_8*OpenAD_lin_7)
      OpenAD_acc_3 = (OpenAD_lin_9*OpenAD_lin_7)
      CALL setderiv(OpenAD_prop_2,A)
      CALL setderiv(OpenAD_prop_3,A)
      CALL sax(OpenAD_acc_2,OpenAD_prop_2,A)
      CALL saxpy(OpenAD_acc_3,OpenAD_prop_3,A)
      END SUBROUTINE
