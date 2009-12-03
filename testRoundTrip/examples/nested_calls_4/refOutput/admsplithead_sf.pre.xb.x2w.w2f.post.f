
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
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      type(active) :: C
      type(active) :: D
      EXTERNAL foo
      REAL(w2f__8) P
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2


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
C$OPENAD XXX Template ad_template.f
      P = 2.0D00
      CALL foo(X(1),X(2),C,D)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,P)
      CALL foo(X(1),OpenAD_Symbol_0,C,D)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(P,OpenAD_Symbol_0)
      Y(3)%v = (C%v*D%v)
      Y(4)%v = (C%v+D%v)
      Y(1)%v = X(3)%v
      Y(2)%v = X(4)%v
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      P = 2.0D00
      CALL foo(X(1),X(2),C,D)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,P)
      CALL foo(X(1),OpenAD_Symbol_0,C,D)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(P,OpenAD_Symbol_0)
      Y(3)%v = (C%v*D%v)
      OpenAD_lin_0 = D%v
      OpenAD_lin_1 = C%v
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
      Y(4)%v = (C%v+D%v)
      Y(1)%v = X(3)%v
      Y(2)%v = X(4)%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      X(4)%d = X(4)%d+Y(2)%d
      Y(2)%d = 0.0d0
      X(3)%d = X(3)%d+Y(1)%d
      Y(1)%d = 0.0d0
      D%d = D%d+Y(4)%d
      C%d = C%d+Y(4)%d
      Y(4)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      D%d = D%d+Y(3)%d*(OpenAD_Symbol_1)
      C%d = C%d+Y(3)%d*(OpenAD_Symbol_2)
      Y(3)%d = 0.0d0
      CALL foo(X(1),OpenAD_Symbol_3,C,D)
      CALL foo(X(1),X(2),C,D)
          end if
        end subroutine head
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo(A, B, C, D)
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
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      type(active) :: OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
      type(active) :: D
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      C%v = SIN(A%v*B%v)
      D%v = COS(A%v+B%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_0 = (A%v*B%v)
      C%v = SIN(OpenAD_tmp_0)
      OpenAD_lin_3 = B%v
      OpenAD_lin_4 = A%v
      OpenAD_lin_2 = COS(OpenAD_tmp_0)
      OpenAD_tmp_1 = (A%v+B%v)
      D%v = COS(OpenAD_tmp_1)
      OpenAD_lin_5 = (-SIN(OpenAD_tmp_1))
      OpenAD_acc_0 = (OpenAD_lin_3*OpenAD_lin_2)
      OpenAD_acc_1 = (OpenAD_lin_4*OpenAD_lin_2)
      double_tape(double_tape_pointer) = OpenAD_acc_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_7 = double_tape(double_tape_pointer)
      OpenAD_prop_0%d = OpenAD_prop_0%d+D%d*(OpenAD_Symbol_5)
      D%d = 0.0d0
      B%d = B%d+C%d*(OpenAD_Symbol_6)
      A%d = A%d+C%d*(OpenAD_Symbol_7)
      C%d = 0.0d0
      B%d = B%d+OpenAD_prop_0%d
      A%d = A%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
          end if
        end subroutine foo
