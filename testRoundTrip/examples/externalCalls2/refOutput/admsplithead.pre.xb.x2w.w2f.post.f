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
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL barext
      type(active) :: T
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      T%v = X(1)%v
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(OpenAD_Symbol_0,T)
      CALL barext(OpenAD_Symbol_0)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(T,OpenAD_Symbol_0)
      Y%v = (X(2)%v*T%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      T%v = X(1)%v
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(OpenAD_Symbol_0,T)
      CALL barext(OpenAD_Symbol_0)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(T,OpenAD_Symbol_0)
      Y%v = (X(2)%v*T%v)
      OpenAD_lin_0 = T%v
      OpenAD_lin_1 = X(2)%v
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      T%d = T%d+Y%d*(OpenAD_Symbol_1)
      X(2)%d = X(2)%d+Y%d*(OpenAD_Symbol_2)
      Y%d = 0.0d0
      X(1)%d = X(1)%d+T%d
      T%d = 0.0d0
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL barext
      EXTERNAL foo
      INTEGER(w2f__i4) I
      REAL(w2f__8) T(1 : 2)


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
      I = 2
      CALL barext(T(I))
      I = 1
      CALL foo(X,Y(I))
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      I = 2
      CALL barext(T(I))
      I = 1
      CALL foo(X,Y(I))
      integer_tape(integer_tape_pointer) = I
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      I = integer_tape(integer_tape_pointer)
      CALL foo(X,Y(I))
          end if
        end subroutine head
