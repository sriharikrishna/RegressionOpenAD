
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
      type(active) :: X(1:5)
      type(active) :: Y(1:3)
C
C     **** Local Variables and Functions ****
C
      type(active) :: T
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prp_0
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      T%v = (X(3)%v*X(1)%v*X(2)%v)
      Y(1)%v = SIN(T%v)
      T%v = (X(5)%v*X(4)%v*T%v)
      Y(2)%v = SIN(T%v)
      Y(3)%v = COS(T%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_0 = (X(1)%v*X(2)%v)
      T%v = (X(3)%v*OpenAD_lin_0)
      OpenAD_lin_1 = OpenAD_lin_0
      OpenAD_lin_3 = X(2)%v
      OpenAD_lin_4 = X(1)%v
      OpenAD_lin_2 = X(3)%v
      Y(1)%v = SIN(T%v)
      OpenAD_lin_5 = COS(T%v)
      OpenAD_acc_0 = (OpenAD_lin_3*OpenAD_lin_2)
      OpenAD_acc_1 = (OpenAD_lin_4*OpenAD_lin_2)
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
      OpenAD_lin_6 = (X(4)%v*T%v)
      OpenAD_dly_0 = (X(5)%v*OpenAD_lin_6)
      OpenAD_lin_7 = OpenAD_lin_6
      OpenAD_lin_9 = T%v
      OpenAD_lin_10 = X(4)%v
      OpenAD_lin_8 = X(5)%v
      T%v = OpenAD_dly_0
      Y(2)%v = SIN(T%v)
      OpenAD_lin_11 = COS(T%v)
      OpenAD_acc_2 = (OpenAD_lin_9*OpenAD_lin_8)
      OpenAD_acc_3 = (OpenAD_lin_10*OpenAD_lin_8)
      double_tape(double_tape_pointer) = OpenAD_lin_7
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_11
      double_tape_pointer = double_tape_pointer+1
      Y(3)%v = COS(T%v)
      OpenAD_lin_12 = (-SIN(T%v))
      double_tape(double_tape_pointer) = OpenAD_lin_12
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_0 = double_tape(double_tape_pointer)
      T%d = T%d+Y(3)%d*(OpenAD_Symbol_0)
      Y(3)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      T%d = T%d+Y(2)%d*(OpenAD_Symbol_1)
      Y(2)%d = 0.0d0
      OpenAD_prp_0%d = OpenAD_prp_0%d+T%d*(OpenAD_Symbol_2)
      X(4)%d = X(4)%d+T%d*(OpenAD_Symbol_3)
      X(5)%d = X(5)%d+T%d*(OpenAD_Symbol_4)
      T%d = 0.0d0
      T%d = T%d+OpenAD_prp_0%d
      OpenAD_prp_0%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_7 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_8 = double_tape(double_tape_pointer)
      T%d = T%d+Y(1)%d*(OpenAD_Symbol_5)
      Y(1)%d = 0.0d0
      X(2)%d = X(2)%d+T%d*(OpenAD_Symbol_6)
      X(1)%d = X(1)%d+T%d*(OpenAD_Symbol_7)
      X(3)%d = X(3)%d+T%d*(OpenAD_Symbol_8)
      T%d = 0.0d0
          end if
        end subroutine head
