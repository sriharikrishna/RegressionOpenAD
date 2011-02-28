C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(X, T)
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
      type(active) :: X
      type(active) :: T
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_dly_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prp_0
C
C     **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
      T%v = (X%v*T%v)
          end if
          if (our_rev_mode%tape) then
C taping
      OpenAD_dly_0 = (X%v*T%v)
      OpenAD_lin_0 = T%v
      OpenAD_lin_1 = X%v
      T%v = OpenAD_dly_0
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_0 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      OpenAD_prp_0%d = OpenAD_prp_0%d+T%d*(OpenAD_Symbol_0)
      X%d = X%d+T%d*(OpenAD_Symbol_1)
      T%d = 0.0d0
      T%d = T%d+OpenAD_prp_0%d
      OpenAD_prp_0%d = 0.0d0
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

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) I
      type(active) :: T
      INTEGER(w2f__i4) OpenAD_Symbol_2
      INTEGER(w2f__i4) OpenAD_Symbol_3


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
      I = 1
      T%v = X(I)%v
      CALL foo(X(I),T)
      Y(INT(I))%v = T%v
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      I = 1
      T%v = X(I)%v
      integer_tape(integer_tape_pointer) = I
      integer_tape_pointer = integer_tape_pointer+1
      CALL foo(X(I),T)
      integer_tape(integer_tape_pointer) = I
      integer_tape_pointer = integer_tape_pointer+1
      Y(INT(I))%v = T%v
      integer_tape(integer_tape_pointer) = I
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
      T%d = T%d+Y(OpenAD_Symbol_2)%d
      Y(OpenAD_Symbol_2)%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      I = integer_tape(integer_tape_pointer)
      CALL foo(X(I),T)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
      X(OpenAD_Symbol_3)%d = X(OpenAD_Symbol_3)%d+T%d
      T%d = 0.0d0
          end if
        end subroutine head
