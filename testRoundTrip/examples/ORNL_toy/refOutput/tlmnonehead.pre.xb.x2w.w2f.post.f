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
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      real(w2f__8) :: P
      real(w2f__8) :: Q
      external sq
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
      subroutine sq(N,U,V)
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_acc_2
      real(w2f__8) :: OpenAD_acc_3
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_10
      real(w2f__8) :: OpenAD_lin_11
      real(w2f__8) :: OpenAD_lin_13
      real(w2f__8) :: OpenAD_lin_14
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_5
      real(w2f__8) :: OpenAD_lin_7
      real(w2f__8) :: OpenAD_lin_8
      real(w2f__8) :: OpenAD_lin_9
      real(w2f__8) :: OpenAD_tmp_0
      real(w2f__8) :: OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      integer(w2f__i4) :: N
      type(active) :: U(1:2)
      type(active) :: V(1:2)
C
C     **** Statements ****
C
      OpenAD_tmp_0 = SQRT((U(1)%v**2)+(U(2)%v**2))
      OpenAD_lin_1 = (2*(U(1)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_3 = (2*(U(2)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_0 = (5.0D-01/OpenAD_tmp_0)
      V(1)%v = OpenAD_tmp_0
      OpenAD_acc_0 = (OpenAD_lin_3*OpenAD_lin_0)
      OpenAD_acc_1 = (OpenAD_lin_1*OpenAD_lin_0)
      CALL sax(OpenAD_acc_0,U(2),V(1))
      CALL saxpy(OpenAD_acc_1,U(1),V(1))
      OpenAD_tmp_1 = (U(1)%v*2.0D00)
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*OpenAD_tmp_1)
      OpenAD_lin_5 = (3*(U(1)%v**(3-INT(1_w2f__i8))))
      OpenAD_lin_7 = COS(U(2)%v)
      OpenAD_lin_8 = (INT(1_w2f__i8)/U(1)%v)
      OpenAD_lin_9 = (-(U(2)%v/(U(1)%v*U(1)%v)))
      OpenAD_lin_10 = (-SIN(U(1)%v))
      OpenAD_lin_11 = (3*(U(2)%v**(3-INT(1_w2f__i8))))
      OpenAD_lin_13 = OpenAD_tmp_1
      OpenAD_lin_14 = U(2)%v
      OpenAD_acc_2 = (OpenAD_lin_10*INT((-1_w2f__i8)))
      OpenAD_acc_3 = (2.0D00*OpenAD_lin_14)
      CALL sax(OpenAD_lin_11,U(2),V(2))
      CALL saxpy(OpenAD_lin_5,U(1),V(2))
      CALL saxpy(OpenAD_acc_2,U(1),V(2))
      CALL saxpy(OpenAD_lin_7,U(2),V(2))
      CALL saxpy(OpenAD_lin_8,U(2),V(2))
      CALL saxpy(OpenAD_lin_9,U(1),V(2))
      CALL saxpy(OpenAD_lin_13,U(2),V(2))
      CALL saxpy(OpenAD_acc_3,U(1),V(2))
      END SUBROUTINE
