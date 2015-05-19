
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
      type(active) :: Y(1:1)


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
      CALL FOO()
      CALL BAR()
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      CALL FOO()
      CALL BAR()
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL BAR()
      CALL FOO()
          end if
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 12
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 13
C     $OpenAD$ END REPLACEMENT
      CONTAINS
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE FOO()
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

        use w2f__types
        IMPLICIT NONE
C
C       **** Local Variables and Functions ****
C
        REAL(w2f__8) OpenAD_Symbol_0
        REAL(w2f__8) OpenAD_Symbol_1
        REAL(w2f__8) OpenAD_lin_0
        REAL(w2f__8) OpenAD_lin_1
C
C       **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
        Y(1)%v = (X(1)%v*X(2)%v)
          end if
          if (our_rev_mode%tape) then
C taping
        OpenAD_lin_0 = X(2)%v
        OpenAD_lin_1 = X(1)%v
        Y(1)%v = (X(1)%v*X(2)%v)
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
        X(2)%d = X(2)%d+Y(1)%d*(OpenAD_Symbol_0)
        X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_1)
        Y(1)%d = 0.0d0
          end if
        end subroutine FOO
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE BAR()
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

        use w2f__types
        IMPLICIT NONE
C
C       **** Local Variables and Functions ****
C
        REAL(w2f__8) OpenAD_Symbol_2
        REAL(w2f__8) OpenAD_Symbol_3
        REAL(w2f__8) OpenAD_Symbol_4
        REAL(w2f__8) OpenAD_acc_0
        REAL(w2f__8) OpenAD_acc_1
        REAL(w2f__8) OpenAD_acc_2
        REAL(w2f__8) OpenAD_aux_0
        REAL(w2f__8) OpenAD_aux_1
        REAL(w2f__8) OpenAD_aux_2
        REAL(w2f__8) OpenAD_lin_2
        REAL(w2f__8) OpenAD_lin_3
        REAL(w2f__8) OpenAD_lin_4
        REAL(w2f__8) OpenAD_lin_5
        REAL(w2f__8) OpenAD_lin_6
        REAL(w2f__8) OpenAD_lin_7
        type(active) :: OpenAD_prp_0
C
C       **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
        Y(1)%v = (COS(X(2)%v)*Y(1)%v*SIN(X(1)%v))
          end if
          if (our_rev_mode%tape) then
C taping
        OpenAD_aux_0 = COS(X(2)%v)
        OpenAD_aux_2 = SIN(X(1)%v)
        OpenAD_aux_1 = (Y(1)%v*OpenAD_aux_2)
        OpenAD_lin_4 = (-SIN(X(2)%v))
        OpenAD_lin_2 = OpenAD_aux_1
        OpenAD_lin_5 = OpenAD_aux_2
        OpenAD_lin_7 = COS(X(1)%v)
        OpenAD_lin_6 = Y(1)%v
        OpenAD_lin_3 = OpenAD_aux_0
        Y(1)%v = (OpenAD_aux_0*OpenAD_aux_1)
        OpenAD_acc_0 = (OpenAD_lin_4*OpenAD_lin_2)
        OpenAD_acc_1 = (OpenAD_lin_5*OpenAD_lin_3)
        OpenAD_acc_2 = (OpenAD_lin_7*OpenAD_lin_6*OpenAD_lin_3)
        double_tape(double_tape_pointer) = OpenAD_acc_0
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_acc_1
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_acc_2
        double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_2 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_3 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_4 = double_tape(double_tape_pointer)
        X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_2)
        OpenAD_prp_0%d = OpenAD_prp_0%d+Y(1)%d*(OpenAD_Symbol_3)
        X(2)%d = X(2)%d+Y(1)%d*(OpenAD_Symbol_4)
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prp_0%d
        OpenAD_prp_0%d = 0.0d0
          end if
        end subroutine BAR
        end subroutine head
