C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use oad_intrinsics
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
      INTEGER(w2f__i4) OAD_CTMP0
      REAL(w2f__8) P
      REAL(w2f__8) Q
      EXTERNAL sq


          integer iaddr
          external iaddr
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
      OAD_CTMP0 = 2
      CALL sq(OAD_CTMP0,X,Y)
      P = 2.0D00
      Q = (P*P)
          end if
          if (our_rev_mode%tape) then
C taping
      OAD_CTMP0 = 2
      CALL sq(OAD_CTMP0,X,Y)
      P = 2.0D00
      Q = (P*P)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL sq(OAD_CTMP0,X,Y)
          end if
        end subroutine head
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE sq(N, U, V)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      type(active) :: U(1:2)
      type(active) :: V(1:2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
      V(1)%v = SQRT((U(1)%v**2)+(U(2)%v**2))
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*U(1)%v*2.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
      OpenAD_Symbol_0 = SQRT((U(1)%v**2)+(U(2)%v**2))
      OpenAD_Symbol_2 = (2*(U(1)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_4 = (2*(U(2)%v**(2-INT(1_w2f__i8))))
      OpenAD_Symbol_1 = (5.0D-01/OpenAD_Symbol_0)
      V(1)%v = OpenAD_Symbol_0
      OpenAD_acc_0 = (OpenAD_Symbol_4*OpenAD_Symbol_1)
      OpenAD_acc_1 = (OpenAD_Symbol_2*OpenAD_Symbol_1)
      double_tape(double_tape_pointer) = OpenAD_acc_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_14 = (U(1)%v*2.0D00)
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*OpenAD_Symbol_14)
      OpenAD_Symbol_6 = (3*(U(1)%v**(3-INT(1_w2f__i8))))
      OpenAD_Symbol_8 = COS(U(2)%v)
      OpenAD_Symbol_9 = (INT(1_w2f__i8)/U(1)%v)
      OpenAD_Symbol_10 = (-(U(2)%v/(U(1)%v*U(1)%v)))
      OpenAD_Symbol_11 = (-SIN(U(1)%v))
      OpenAD_Symbol_12 = (3*(U(2)%v**(3-INT(1_w2f__i8))))
      OpenAD_Symbol_15 = OpenAD_Symbol_14
      OpenAD_Symbol_16 = U(2)%v
      OpenAD_acc_2 = (OpenAD_Symbol_11*INT((-1_w2f__i8)))
      OpenAD_acc_3 = (2.0D00*OpenAD_Symbol_16)
      double_tape(double_tape_pointer) = OpenAD_Symbol_12
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_6
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_8
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_9
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_10
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_15
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_18 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_19 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_20 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_21 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_22 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_23 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_24 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_25 = double_tape(double_tape_pointer)
      U(1)%d = U(1)%d+V(2)%d*(OpenAD_Symbol_18)
      U(2)%d = U(2)%d+V(2)%d*(OpenAD_Symbol_19)
      U(1)%d = U(1)%d+V(2)%d*(OpenAD_Symbol_20)
      U(2)%d = U(2)%d+V(2)%d*(OpenAD_Symbol_21)
      U(2)%d = U(2)%d+V(2)%d*(OpenAD_Symbol_22)
      U(1)%d = U(1)%d+V(2)%d*(OpenAD_Symbol_23)
      U(1)%d = U(1)%d+V(2)%d*(OpenAD_Symbol_24)
      U(2)%d = U(2)%d+V(2)%d*(OpenAD_Symbol_25)
      V(2)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_26 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_27 = double_tape(double_tape_pointer)
      U(1)%d = U(1)%d+V(1)%d*(OpenAD_Symbol_26)
      U(2)%d = U(2)%d+V(1)%d*(OpenAD_Symbol_27)
      V(1)%d = 0.0d0
          end if
        end subroutine sq
