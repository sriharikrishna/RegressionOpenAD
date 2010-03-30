
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) P
      REAL(w2f__8) Q
      EXTERNAL sq
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
      CALL sq(2,X,Y)
      P = 2.0D00
      Q = (P*P)
      END SUBROUTINE

      SUBROUTINE sq(N, U, V)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      type(active) :: U(1:2)
      type(active) :: V(1:2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
C
C     **** Statements ****
C
      OpenAD_lin_0 = SQRT((U(1)%v**2)+(U(2)%v**2))
      OpenAD_lin_2 = (2*(U(1)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_4 = (2*(U(2)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_1 = (5.0D-01/OpenAD_lin_0)
      V(1)%v = OpenAD_lin_0
      OpenAD_acc_0 = (OpenAD_lin_4*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_2*OpenAD_lin_1)
      CALL sax(OpenAD_acc_0,U(2),V(1))
      CALL saxpy(OpenAD_acc_1,U(1),V(1))
      OpenAD_lin_14 = (U(1)%v*2.0D00)
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*OpenAD_lin_14)
      OpenAD_lin_6 = (3*(U(1)%v**(3-INT(1_w2f__i8))))
      OpenAD_lin_8 = COS(U(2)%v)
      OpenAD_lin_9 = (INT(1_w2f__i8)/U(1)%v)
      OpenAD_lin_10 = (-(U(2)%v/(U(1)%v*U(1)%v)))
      OpenAD_lin_11 = (-SIN(U(1)%v))
      OpenAD_lin_12 = (3*(U(2)%v**(3-INT(1_w2f__i8))))
      OpenAD_lin_15 = OpenAD_lin_14
      OpenAD_lin_16 = U(2)%v
      OpenAD_acc_2 = (OpenAD_lin_11*INT((-1_w2f__i8)))
      OpenAD_acc_3 = (2.0D00*OpenAD_lin_16)
      CALL sax(OpenAD_lin_12,U(2),V(2))
      CALL saxpy(OpenAD_lin_6,U(1),V(2))
      CALL saxpy(OpenAD_acc_2,U(1),V(2))
      CALL saxpy(OpenAD_lin_8,U(2),V(2))
      CALL saxpy(OpenAD_lin_9,U(2),V(2))
      CALL saxpy(OpenAD_lin_10,U(1),V(2))
      CALL saxpy(OpenAD_lin_15,U(2),V(2))
      CALL saxpy(OpenAD_acc_3,U(1),V(2))
      END SUBROUTINE
