
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE head(X1, X2, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_2
C
C     **** Parameters and Result ****
C
      type(active) :: X1
      type(active) :: X2
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
      type(active) :: D
      type(active) :: E
      type(active) :: F
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      A%v = (1.0D00/(X1%v/X2%v))
      B%v = (X2%v*A%v)
      C%v = X2%v
      C%v = SIN(C%v)
      D%v = A%v
      F%v = A%v
      F%v = ((F%v-A%v)*5.0D-01)
      E%v = ((D%v-A%v)*5.0D-01)
      Y%v = (B%v*F%v+C%v*E%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_0 = (X1%v/X2%v)
      A%v = (1.0D00/OpenAD_tmp_0)
      OpenAD_lin_2 = (INT(1_w2f__i8)/X2%v)
      OpenAD_lin_3 = (-(X1%v/(X2%v*X2%v)))
      OpenAD_lin_1 = (-(1.0D00/(OpenAD_tmp_0*OpenAD_tmp_0)))
      B%v = (X2%v*A%v)
      OpenAD_lin_4 = A%v
      OpenAD_lin_5 = X2%v
      C%v = X2%v
      OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
      double_tape(double_tape_pointer) = OpenAD_acc_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_4
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_0 = SIN(C%v)
      OpenAD_lin_6 = COS(C%v)
      C%v = OpenAD_Symbol_0
      D%v = A%v
      F%v = A%v
      double_tape(double_tape_pointer) = OpenAD_lin_6
      double_tape_pointer = double_tape_pointer+1
      OpenAD_tmp_1 = (F%v-A%v)
      F%v = (OpenAD_tmp_1*5.0D-01)
      OpenAD_tmp_2 = (D%v-A%v)
      E%v = (OpenAD_tmp_2*5.0D-01)
      Y%v = (B%v*F%v+C%v*E%v)
      OpenAD_lin_9 = F%v
      OpenAD_lin_10 = B%v
      OpenAD_lin_11 = E%v
      OpenAD_lin_12 = C%v
      OpenAD_acc_2 = (5.0D-01*OpenAD_lin_10)
      OpenAD_acc_3 = (5.0D-01*OpenAD_lin_12)
      double_tape(double_tape_pointer) = OpenAD_lin_9
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_11
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      OpenAD_prop_2%d = OpenAD_prop_2%d+Y%d*(OpenAD_Symbol_1)
      C%d = C%d+Y%d*(OpenAD_Symbol_2)
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y%d*(OpenAD_Symbol_3)
      B%d = B%d+Y%d*(OpenAD_Symbol_4)
      Y%d = 0.0d0
      A%d = A%d-OpenAD_prop_2%d
      D%d = D%d+OpenAD_prop_2%d
      OpenAD_prop_2%d = 0.0d0
      A%d = A%d-OpenAD_prop_1%d
      F%d = F%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      A%d = A%d+F%d
      F%d = 0.0d0
      A%d = A%d+D%d
      D%d = 0.0d0
      OpenAD_prop_0%d = OpenAD_prop_0%d+C%d*(OpenAD_Symbol_5)
      C%d = 0.0d0
      C%d = C%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_7 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_8 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_9 = double_tape(double_tape_pointer)
      A%d = A%d+B%d*(OpenAD_Symbol_6)
      X2%d = X2%d+B%d*(OpenAD_Symbol_7)
      B%d = 0.0d0
      X2%d = X2%d+A%d*(OpenAD_Symbol_8)
      X1%d = X1%d+A%d*(OpenAD_Symbol_9)
      A%d = 0.0d0
      X2%d = X2%d+C%d
      C%d = 0.0d0
          end if 
        end subroutine head
