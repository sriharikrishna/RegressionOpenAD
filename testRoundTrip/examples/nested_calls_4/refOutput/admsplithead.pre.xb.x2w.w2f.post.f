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
      type(active) :: OpenAD_Symbol_13
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
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
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
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_0,P)
      CALL foo(X(1),OpenAD_Symbol_0,C,D)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(P,OpenAD_Symbol_0)
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
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_0,P)
      CALL foo(X(1),OpenAD_Symbol_0,C,D)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(P,OpenAD_Symbol_0)
      Y(3)%v = (C%v*D%v)
      OpenAD_Symbol_1 = D%v
      OpenAD_Symbol_2 = C%v
      double_tape(double_tape_pointer) = OpenAD_Symbol_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_2
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
      OpenAD_Symbol_11 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_12 = double_tape(double_tape_pointer)
      D%d = D%d+Y(3)%d*(OpenAD_Symbol_11)
      C%d = C%d+Y(3)%d*(OpenAD_Symbol_12)
      Y(3)%d = 0.0d0
      CALL foo(X(1),OpenAD_Symbol_13,C,D)
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
      type(active) :: OpenAD_prop_0
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
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
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
      OpenAD_Symbol_3 = (A%v*B%v)
      C%v = SIN(OpenAD_Symbol_3)
      OpenAD_Symbol_5 = B%v
      OpenAD_Symbol_6 = A%v
      OpenAD_Symbol_4 = COS(OpenAD_Symbol_3)
      OpenAD_Symbol_7 = (A%v+B%v)
      D%v = COS(OpenAD_Symbol_7)
      OpenAD_Symbol_8 = (-SIN(OpenAD_Symbol_7))
      OpenAD_Symbol_9 = (OpenAD_Symbol_5*OpenAD_Symbol_4)
      OpenAD_Symbol_10 = (OpenAD_Symbol_6*OpenAD_Symbol_4)
      double_tape(double_tape_pointer) = OpenAD_Symbol_9
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_10
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_8
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_15 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_16 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_17 = double_tape(double_tape_pointer)
      OpenAD_prop_0%d = OpenAD_prop_0%d+D%d*(OpenAD_Symbol_15)
      D%d = 0.0d0
      B%d = B%d+C%d*(OpenAD_Symbol_16)
      A%d = A%d+C%d*(OpenAD_Symbol_17)
      C%d = 0.0d0
      B%d = B%d+OpenAD_prop_0%d
      A%d = A%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
          end if
        end subroutine foo
