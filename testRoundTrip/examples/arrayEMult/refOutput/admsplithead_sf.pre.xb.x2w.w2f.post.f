
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) N
      SAVE N
      type(active) :: Z(1:INT(SIZE(X)))
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_3(1 : 2)
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_lin_0(1 : 2)
      REAL(w2f__8) OpenAD_lin_1(1 : 2)
C
C     **** Initializers ****
C
      DATA N / 2 /
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
      Z(1:INT(SIZE(X)))%v = X(1:2)%v
      Y(1:2)%v = (X(1:2)%v*Z(1:INT(SIZE(X)))%v)
          end if
          if (our_rev_mode%tape) then
C taping
      Z(1:INT(SIZE(X)))%v = X(1:2)%v
      OpenAD_Symbol_0 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_0
      integer_tape_pointer = integer_tape_pointer+1
      Y(1:2)%v = (X(1:2)%v*Z(1:INT(SIZE(X)))%v)
      OpenAD_lin_0 = Z(1:INT(SIZE(X)))%v
      OpenAD_lin_1 = X(1:2)%v
      double_tape(double_tape_pointer:) = OpenAD_lin_0(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_0)
      double_tape(double_tape_pointer:) = OpenAD_lin_1(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_1)
      OpenAD_Symbol_1 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_2)
      OpenAD_Symbol_2(:) = double_tape(double_tape_pointer:)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_3)
      OpenAD_Symbol_3(:) = double_tape(double_tape_pointer:)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_4 = integer_tape(integer_tape_pointer)
      Z(1:INT(OpenAD_Symbol_4))%d = Z(1:INT(OpenAD_Symbol_4))%d+Y(1:2)%d
     +*(OpenAD_Symbol_2)
      X(1:2)%d = X(1:2)%d+Y(1:2)%d*(OpenAD_Symbol_3)
      Y(1:2)%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_5 = integer_tape(integer_tape_pointer)
      X(1:2)%d = X(1:2)%d+Z(1:INT(OpenAD_Symbol_5))%d
      Z(1:INT(OpenAD_Symbol_5))%d = 0.0d0
          end if
        end subroutine head
