
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use OAD_active
      use w2f__types
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

      use OAD_active
      use w2f__types
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
      REAL(w2f__8) OpenAD_Symbol_0(1 : 2)
      REAL(w2f__8) OpenAD_lin_0(1 : 2)
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
      X(1)%v = (-1)
      Y(1:2)%v = ABS(X%v)
          end if
          if (our_rev_mode%tape) then
C taping
      X(1)%v = (-1)
      Y(1:2)%v = ABS(X%v)
      OpenAD_lin_0 = SIGN(1.0D00,X%v)
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_0)-1) = OpenAD_lin_0(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_0)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_0)
      OpenAD_Symbol_0(:) = double_tape(double_tape_pointer:)
      X%d = X%d+Y(1:2)%d*(OpenAD_Symbol_0)
      Y(1:2)%d = 0.0d0
      X(1)%d = 0.0d0
          end if
        end subroutine head
