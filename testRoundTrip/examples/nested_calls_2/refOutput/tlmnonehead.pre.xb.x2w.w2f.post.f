
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_dly_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1
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
      OpenAD_lin_0 = (X(1)%v*X(2)%v)
      Y(2)%v = SIN(OpenAD_lin_0)
      OpenAD_lin_2 = X(2)%v
      OpenAD_lin_3 = X(1)%v
      OpenAD_lin_1 = COS(OpenAD_lin_0)
      OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
      CALL sax(OpenAD_acc_0,X(1),Y(2))
      CALL saxpy(OpenAD_acc_1,X(2),Y(2))
      OpenAD_dly_0 = SIN(X(3)%v)
      OpenAD_lin_4 = COS(X(3)%v)
      Y(3)%v = OpenAD_dly_0
      CALL setderiv(OpenAD_prp_0,X(3))
      CALL sax(OpenAD_lin_4,OpenAD_prp_0,Y(3))
      OpenAD_dly_1 = COS(X(4)%v)
      OpenAD_lin_5 = (-SIN(X(4)%v))
      Y(4)%v = OpenAD_dly_1
      CALL setderiv(OpenAD_prp_1,X(4))
      CALL sax(OpenAD_lin_5,OpenAD_prp_1,Y(4))
      END SUBROUTINE

      SUBROUTINE foo(A, B, C)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
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
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL bar(B)
      C%v = (B%v+A%v*A%v)
      OpenAD_lin_6 = A%v
      OpenAD_lin_7 = A%v
      CALL setderiv(C,B)
      CALL saxpy(OpenAD_lin_6,A,C)
      CALL saxpy(OpenAD_lin_7,A,C)
      END SUBROUTINE

      SUBROUTINE bar(A)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: A
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_dly_2
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prp_2
      type(active) :: OpenAD_prp_3
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_8 = (A%v*A%v)
      OpenAD_dly_2 = COS(OpenAD_lin_8)
      OpenAD_lin_10 = A%v
      OpenAD_lin_11 = A%v
      OpenAD_lin_9 = (-SIN(OpenAD_lin_8))
      A%v = OpenAD_dly_2
      OpenAD_acc_2 = (OpenAD_lin_10*OpenAD_lin_9)
      OpenAD_acc_3 = (OpenAD_lin_11*OpenAD_lin_9)
      CALL setderiv(OpenAD_prp_2,A)
      CALL setderiv(OpenAD_prp_3,A)
      CALL sax(OpenAD_acc_2,OpenAD_prp_2,A)
      CALL saxpy(OpenAD_acc_3,OpenAD_prp_3,A)
      END SUBROUTINE
