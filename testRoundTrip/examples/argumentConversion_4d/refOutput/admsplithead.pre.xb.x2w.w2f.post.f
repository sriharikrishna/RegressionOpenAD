C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(X, Y)
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
      type(active) :: X(1:4)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      Y%v = (X(2)%v*X(4)%v)
          end if
          if (our_rev_mode%tape) then
C taping
      Y%v = (X(2)%v*X(4)%v)
      OpenAD_Symbol_2 = X(4)%v
      OpenAD_Symbol_3 = X(2)%v
      double_tape(double_tape_pointer) = OpenAD_Symbol_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_3
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      X(4)%d = X(4)%d+Y%d*(OpenAD_Symbol_4)
      X(2)%d = X(2)%d+Y%d*(OpenAD_Symbol_5)
      Y%d = 0.0d0
          end if
        end subroutine foo
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

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
      type(active) :: OpenAD_Symbol_0(1:2,1:2)
      type(active) :: OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_6(1:2,1:2)
      type(active) :: OpenAD_Symbol_7
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__8) P(1 : 2, 1 : 2)
      REAL(w2f__8) PY
      type(active) :: T(1:2,1:2)
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
      T(2,1)%v = X(1)%v
      T(2,2)%v = X(2)%v
      CALL foo(T,Y)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_0,P)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_1,PY)
      CALL foo(OpenAD_Symbol_0,OpenAD_Symbol_1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(P,OpenAD_Symbol_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(PY,OpenAD_Symbol_1)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      T(2,1)%v = X(1)%v
      T(2,2)%v = X(2)%v
      CALL foo(T,Y)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_0,P)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_1,PY)
      CALL foo(OpenAD_Symbol_0,OpenAD_Symbol_1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(P,OpenAD_Symbol_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(PY,OpenAD_Symbol_1)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(OpenAD_Symbol_6,OpenAD_Symbol_7)
      CALL foo(T,Y)
      X(2)%d = X(2)%d+T(2,2)%d
      T(2,2)%d = 0.0d0
      X(1)%d = X(1)%d+T(2,1)%d
      T(2,1)%d = 0.0d0
          end if
        end subroutine head
