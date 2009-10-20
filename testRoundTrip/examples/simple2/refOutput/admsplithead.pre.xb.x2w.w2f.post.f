
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE head(X1, X2, Y1, Y2)
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
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_tmp_0
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
      type(active) :: T1
      type(active) :: T2
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
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
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      T1%v = (X1%v*X2%v)
      T2%v = (X1%v*SIN(T1%v))
      Y1%v = COS(T2%v)
      Y2%v = (X2%v*T2%v)
          end if
          if (our_rev_mode%tape) then
C taping
      T1%v = (X1%v*X2%v)
      OpenAD_lin_0 = X2%v
      OpenAD_lin_1 = X1%v
      OpenAD_tmp_0 = SIN(T1%v)
      T2%v = (X1%v*OpenAD_tmp_0)
      OpenAD_lin_2 = OpenAD_tmp_0
      OpenAD_lin_4 = COS(T1%v)
      OpenAD_lin_3 = X1%v
      Y1%v = COS(T2%v)
      OpenAD_lin_5 = (-SIN(T2%v))
      Y2%v = (X2%v*T2%v)
      OpenAD_lin_6 = T2%v
      OpenAD_lin_7 = X2%v
      OpenAD_acc_0 = (OpenAD_lin_4*OpenAD_lin_3)
      OpenAD_acc_1 = (OpenAD_lin_0*OpenAD_acc_0)
      OpenAD_acc_2 = (OpenAD_lin_1*OpenAD_acc_0)
      double_tape(double_tape_pointer) = OpenAD_lin_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_6
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_7
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
      T2%d = T2%d+Y2%d*(OpenAD_Symbol_0)
      X2%d = X2%d+Y2%d*(OpenAD_Symbol_1)
      Y2%d = 0.0d0
      T2%d = T2%d+Y1%d*(OpenAD_Symbol_2)
      Y1%d = 0.0d0
      X2%d = X2%d+T2%d*(OpenAD_Symbol_3)
      X1%d = X1%d+T2%d*(OpenAD_Symbol_4)
      X1%d = X1%d+T2%d*(OpenAD_Symbol_5)
      T2%d = 0.0d0
          end if
        end subroutine head
