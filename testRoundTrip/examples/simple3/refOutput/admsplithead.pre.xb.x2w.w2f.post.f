C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X1, X2, Y1, Y2)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X1
      type(active) :: X2
      type(active) :: Y1
      type(active) :: Y2
C
C     **** Local Variables and Functions ****
C
      type(active) :: V3
      type(active) :: V4
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_aux_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y1)
C$OPENAD DEPENDENT(Y2)
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      V3%v = (X1%v*X2%v)
      V4%v = (X1%v*V3%v)
      Y1%v = (V4%v*X2%v*V3%v)
      Y2%v = SIN(V4%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_0 = X2%v
      OpenAD_lin_1 = X1%v
      V3%v = (X1%v*X2%v)
      OpenAD_lin_2 = V3%v
      OpenAD_lin_3 = X1%v
      V4%v = (X1%v*V3%v)
      OpenAD_aux_0 = (X2%v*V3%v)
      OpenAD_lin_4 = OpenAD_aux_0
      OpenAD_lin_6 = V3%v
      OpenAD_lin_7 = X2%v
      OpenAD_lin_5 = V4%v
      Y1%v = (V4%v*OpenAD_aux_0)
      OpenAD_lin_8 = COS(V4%v)
      Y2%v = SIN(V4%v)
      OpenAD_acc_0 = (OpenAD_lin_6*OpenAD_lin_5)
      OpenAD_acc_1 = (OpenAD_lin_7*OpenAD_lin_5+OpenAD_lin_3*OpenAD_lin_
     +4)
      OpenAD_acc_2 = (OpenAD_lin_3*OpenAD_lin_8)
      OpenAD_acc_3 = (OpenAD_lin_2*OpenAD_lin_4)
      OpenAD_acc_4 = (OpenAD_lin_2*OpenAD_lin_8)
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_4
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
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
      X1%d = X1%d+Y1%d*(OpenAD_Symbol_0)
      V3%d = V3%d+Y1%d*(OpenAD_Symbol_1)
      X2%d = X2%d+Y1%d*(OpenAD_Symbol_2)
      Y1%d = 0.0d0
      X1%d = X1%d+Y2%d*(OpenAD_Symbol_3)
      V3%d = V3%d+Y2%d*(OpenAD_Symbol_4)
      Y2%d = 0.0d0
      X2%d = X2%d+V3%d*(OpenAD_Symbol_5)
      X1%d = X1%d+V3%d*(OpenAD_Symbol_6)
      V3%d = 0.0d0
          end if
        end subroutine head
