
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, OBJ)
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
      type(active) :: X(1:6)
      type(active) :: OBJ(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A
      REAL(w2f__8) D00
      type(active) :: D03
      REAL(w2f__8) D11
      type(active) :: D12
      type(active) :: F
      type(active) :: G
      type(active) :: LOC1
      type(active) :: M00
      type(active) :: M03
      type(active) :: M11
      type(active) :: M12
      type(active) :: M22
      type(active) :: M33
      type(active) :: MATR(0:3)
      REAL(w2f__8) SQRT3
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_10
      REAL(w2f__8) OpenAD_acc_11
      REAL(w2f__8) OpenAD_acc_12
      REAL(w2f__8) OpenAD_acc_13
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_acc_8
      REAL(w2f__8) OpenAD_acc_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_17
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_19
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_22
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_24
      REAL(w2f__8) OpenAD_lin_26
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_29
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1


          integer iaddr
          external iaddr
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(OBJ)
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      A = 5.0D-01
      SQRT3 = 5.77350258827209472656D-01
      MATR(0)%v = (X(2)%v-X(1)%v)
      MATR(1)%v = (SQRT3*(X(3)%v*2.0D00-X(2)%v-X(1)%v))
      MATR(2)%v = (X(5)%v-X(4)%v)
      MATR(3)%v = (SQRT3*(X(6)%v*2.0D00-X(5)%v-X(4)%v))
      M03%v = (MATR(0)%v*MATR(3)%v)
      M12%v = (MATR(1)%v*MATR(2)%v)
      G%v = (M03%v-M12%v)
      D00 = (M03%v*2.0D00)
      D11 = (M12%v*2.0D00)
      M00%v = (MATR(0)%v*MATR(0)%v)
      M11%v = (MATR(1)%v*MATR(1)%v)
      M22%v = (MATR(2)%v*MATR(2)%v)
      M33%v = (MATR(3)%v*MATR(3)%v)
      D12%v = (M00%v*M33%v)
      D03%v = (M11%v*M22%v)
      F%v = (D03%v+D12%v)
      LOC1%v = (A*(1.0D00/G%v))
      OBJ(1)%v = (F%v*LOC1%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      A = 5.0D-01
      SQRT3 = 5.77350258827209472656D-01
      MATR(0)%v = (X(2)%v-X(1)%v)
      OpenAD_lin_0 = (X(3)%v*2.0D00-X(2)%v-X(1)%v)
      MATR(1)%v = (SQRT3*OpenAD_lin_0)
      OpenAD_lin_2 = SQRT3
      double_tape(double_tape_pointer) = OpenAD_lin_2
      double_tape_pointer = double_tape_pointer+1
      MATR(2)%v = (X(5)%v-X(4)%v)
      OpenAD_lin_4 = (X(6)%v*2.0D00-X(5)%v-X(4)%v)
      MATR(3)%v = (SQRT3*OpenAD_lin_4)
      OpenAD_lin_6 = SQRT3
      double_tape(double_tape_pointer) = OpenAD_lin_6
      double_tape_pointer = double_tape_pointer+1
      M03%v = (MATR(0)%v*MATR(3)%v)
      OpenAD_lin_8 = MATR(3)%v
      OpenAD_lin_9 = MATR(0)%v
      M12%v = (MATR(1)%v*MATR(2)%v)
      OpenAD_lin_10 = MATR(2)%v
      OpenAD_lin_11 = MATR(1)%v
      G%v = (M03%v-M12%v)
      D00 = (M03%v*2.0D00)
      D11 = (M12%v*2.0D00)
      M00%v = (MATR(0)%v*MATR(0)%v)
      OpenAD_lin_12 = MATR(0)%v
      OpenAD_lin_13 = MATR(0)%v
      M11%v = (MATR(1)%v*MATR(1)%v)
      OpenAD_lin_14 = MATR(1)%v
      OpenAD_lin_15 = MATR(1)%v
      M22%v = (MATR(2)%v*MATR(2)%v)
      OpenAD_lin_16 = MATR(2)%v
      OpenAD_lin_17 = MATR(2)%v
      M33%v = (MATR(3)%v*MATR(3)%v)
      OpenAD_lin_18 = MATR(3)%v
      OpenAD_lin_19 = MATR(3)%v
      D12%v = (M00%v*M33%v)
      OpenAD_lin_20 = M33%v
      OpenAD_lin_21 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_lin_22 = M22%v
      OpenAD_lin_23 = M11%v
      F%v = (D03%v+D12%v)
      OpenAD_lin_24 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_lin_24)
      OpenAD_lin_28 = (-(1.0D00/(G%v*G%v)))
      OpenAD_lin_26 = A
      OBJ(1)%v = (F%v*LOC1%v)
      OpenAD_lin_29 = LOC1%v
      OpenAD_lin_30 = F%v
      OpenAD_acc_0 = (OpenAD_lin_28*OpenAD_lin_26*OpenAD_lin_30)
      OpenAD_acc_1 = (OpenAD_lin_16*OpenAD_lin_23*OpenAD_lin_29)
      OpenAD_acc_2 = (OpenAD_lin_17*OpenAD_lin_23*OpenAD_lin_29)
      OpenAD_acc_3 = (OpenAD_lin_14*OpenAD_lin_22*OpenAD_lin_29)
      OpenAD_acc_4 = (OpenAD_lin_15*OpenAD_lin_22*OpenAD_lin_29)
      OpenAD_acc_5 = (OpenAD_lin_18*OpenAD_lin_21*OpenAD_lin_29)
      OpenAD_acc_6 = (OpenAD_lin_19*OpenAD_lin_21*OpenAD_lin_29)
      OpenAD_acc_7 = (OpenAD_lin_12*OpenAD_lin_20*OpenAD_lin_29)
      OpenAD_acc_8 = (OpenAD_lin_13*OpenAD_lin_20*OpenAD_lin_29)
      OpenAD_acc_9 = (INT((-1_w2f__i8))*OpenAD_acc_0)
      OpenAD_acc_10 = (OpenAD_lin_10*OpenAD_acc_9)
      OpenAD_acc_11 = (OpenAD_lin_11*OpenAD_acc_9)
      OpenAD_acc_12 = (OpenAD_lin_8*OpenAD_acc_0)
      OpenAD_acc_13 = (OpenAD_lin_9*OpenAD_acc_0)
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_4
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_6
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_7
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_8
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_10
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_11
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_12
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_13
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_0 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_7 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_8 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_9 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_10 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_11 = double_tape(double_tape_pointer)
      MATR(3)%d = MATR(3)%d+OBJ(1)%d*(OpenAD_Symbol_0)
      MATR(0)%d = MATR(0)%d+OBJ(1)%d*(OpenAD_Symbol_1)
      MATR(2)%d = MATR(2)%d+OBJ(1)%d*(OpenAD_Symbol_2)
      MATR(1)%d = MATR(1)%d+OBJ(1)%d*(OpenAD_Symbol_3)
      MATR(0)%d = MATR(0)%d+OBJ(1)%d*(OpenAD_Symbol_4)
      MATR(0)%d = MATR(0)%d+OBJ(1)%d*(OpenAD_Symbol_5)
      MATR(3)%d = MATR(3)%d+OBJ(1)%d*(OpenAD_Symbol_6)
      MATR(3)%d = MATR(3)%d+OBJ(1)%d*(OpenAD_Symbol_7)
      MATR(1)%d = MATR(1)%d+OBJ(1)%d*(OpenAD_Symbol_8)
      MATR(1)%d = MATR(1)%d+OBJ(1)%d*(OpenAD_Symbol_9)
      MATR(2)%d = MATR(2)%d+OBJ(1)%d*(OpenAD_Symbol_10)
      MATR(2)%d = MATR(2)%d+OBJ(1)%d*(OpenAD_Symbol_11)
      OBJ(1)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_12 = double_tape(double_tape_pointer)
      OpenAD_prp_1%d = OpenAD_prp_1%d+MATR(3)%d*(OpenAD_Symbol_12)
      MATR(3)%d = 0.0d0
      X(6)%d = X(6)%d+OpenAD_prp_1%d*(2.0D00)
      X(5)%d = X(5)%d-OpenAD_prp_1%d
      X(4)%d = X(4)%d-OpenAD_prp_1%d
      OpenAD_prp_1%d = 0.0d0
      X(4)%d = X(4)%d-MATR(2)%d
      X(5)%d = X(5)%d+MATR(2)%d
      MATR(2)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_13 = double_tape(double_tape_pointer)
      OpenAD_prp_0%d = OpenAD_prp_0%d+MATR(1)%d*(OpenAD_Symbol_13)
      MATR(1)%d = 0.0d0
      X(3)%d = X(3)%d+OpenAD_prp_0%d*(2.0D00)
      X(2)%d = X(2)%d-OpenAD_prp_0%d
      X(1)%d = X(1)%d-OpenAD_prp_0%d
      OpenAD_prp_0%d = 0.0d0
      X(1)%d = X(1)%d-MATR(0)%d
      X(2)%d = X(2)%d+MATR(0)%d
      MATR(0)%d = 0.0d0
          end if
        end subroutine head
