      module all_globals_mod
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
      subroutine head(X,Y)
          use OAD_tape
          use OAD_rev
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
      REAL(w2f__8) OpenAD_tmp_2
      REAL(w2f__8) OpenAD_tmp_3
      REAL(w2f__8) OpenAD_tmp_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:12)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
           integer :: iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
          if (our_rev_mode%plain) then
C original function
      Y(1)%v = (X(3)%v*((X(1)%v*(X(8)%v+X(7)%v+X(5)%v+X(6)%v)+X(2)%v*X(4
     +)%v)/(X(2)%v+X(1)%v*(X(12)%v+X(11)%v+X(9)%v+X(10)%v))))
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_3 = (X(8)%v+X(7)%v+X(5)%v+X(6)%v)
      OpenAD_tmp_1 = (X(1)%v*OpenAD_tmp_3+X(2)%v*X(4)%v)
      OpenAD_tmp_4 = (X(12)%v+X(11)%v+X(9)%v+X(10)%v)
      OpenAD_tmp_2 = (X(2)%v+X(1)%v*OpenAD_tmp_4)
      OpenAD_tmp_0 = (OpenAD_tmp_1/OpenAD_tmp_2)
      Y(1)%v = (X(3)%v*OpenAD_tmp_0)
      OpenAD_lin_0 = OpenAD_tmp_0
      OpenAD_lin_4 = OpenAD_tmp_3
      OpenAD_lin_5 = X(1)%v
      OpenAD_lin_6 = X(4)%v
      OpenAD_lin_7 = X(2)%v
      OpenAD_lin_2 = (INT(1_w2f__i8)/OpenAD_tmp_2)
      OpenAD_lin_8 = OpenAD_tmp_4
      OpenAD_lin_9 = X(1)%v
      OpenAD_lin_3 = (-(OpenAD_tmp_1/(OpenAD_tmp_2*OpenAD_tmp_2)))
      OpenAD_lin_1 = X(3)%v
      OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
      OpenAD_acc_2 = (OpenAD_lin_8*OpenAD_acc_1)
      OpenAD_acc_3 = (OpenAD_lin_9*OpenAD_acc_1)
      OpenAD_acc_4 = (OpenAD_lin_4*OpenAD_acc_0)
      OpenAD_acc_5 = (OpenAD_lin_5*OpenAD_acc_0)
      OpenAD_acc_6 = (OpenAD_lin_6*OpenAD_acc_0)
      OpenAD_acc_7 = (OpenAD_lin_7*OpenAD_acc_0)
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_4
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_6
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_7
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
      X(4)%d = X(4)%d+Y(1)%d*(OpenAD_Symbol_0)
      X(2)%d = X(2)%d+Y(1)%d*(OpenAD_Symbol_1)
      OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d*(OpenAD_Symbol_2)
      X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_3)
      X(2)%d = X(2)%d+Y(1)%d*(OpenAD_Symbol_4)
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y(1)%d*(OpenAD_Symbol_5)
      X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_6)
      X(3)%d = X(3)%d+Y(1)%d*(OpenAD_Symbol_7)
      Y(1)%d = 0.0d0
      X(10)%d = X(10)%d+OpenAD_prop_1%d
      X(9)%d = X(9)%d+OpenAD_prop_1%d
      X(11)%d = X(11)%d+OpenAD_prop_1%d
      X(12)%d = X(12)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      X(6)%d = X(6)%d+OpenAD_prop_0%d
      X(5)%d = X(5)%d+OpenAD_prop_0%d
      X(7)%d = X(7)%d+OpenAD_prop_0%d
      X(8)%d = X(8)%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
          end if
        end subroutine head
