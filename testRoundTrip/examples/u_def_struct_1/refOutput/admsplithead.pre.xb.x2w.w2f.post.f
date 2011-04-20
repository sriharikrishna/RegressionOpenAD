
C$OPENAD XXX File_start [head.f]
      MODULE mytypemodule
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE MYTYPE
      SEQUENCE
        type(active) :: FIELD1
        type(active) :: FIELD2
      END TYPE

C
C     **** Statements ****
C
      END MODULE
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
      use mytypemodule
      use oad_intrinsics
      use mytypemodule
      use oad_intrinsics
      use mytypemodule
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(MYTYPE) :: TYPED_X
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
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
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      TYPED_X%FIELD1%v = X(1)%v
      TYPED_X%FIELD2%v = X(2)%v
      Y(1)%v = (TYPED_X%FIELD1%v*TYPED_X%FIELD2%v)
          end if
          if (our_rev_mode%tape) then
C taping
      TYPED_X%FIELD1%v = X(1)%v
      TYPED_X%FIELD2%v = X(2)%v
      Y(1)%v = (TYPED_X%FIELD1%v*TYPED_X%FIELD2%v)
      OpenAD_lin_0 = TYPED_X%FIELD2%v
      OpenAD_lin_1 = TYPED_X%FIELD1%v
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
      TYPED_X%FIELD2%d = TYPED_X%FIELD2%d+Y(1)%d*(OpenAD_Symbol_0)
      TYPED_X%FIELD1%d = TYPED_X%FIELD1%d+Y(1)%d*(OpenAD_Symbol_1)
      Y(1)%d = 0.0d0
      X(2)%d = X(2)%d+TYPED_X%FIELD2%d
      TYPED_X%FIELD2%d = 0.0d0
      X(1)%d = X(1)%d+TYPED_X%FIELD1%d
      TYPED_X%FIELD1%d = 0.0d0
          end if
        end subroutine head
