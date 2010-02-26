
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
      REAL(w2f__8) OpenAD_Symbol_12
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: GAMMA
      type(active) :: NU
      type(active) :: OMEGA
      type(active) :: T
      type(active) :: V
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
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

         if (our_rev_mode%plain) then
C original function
      NU%v = X(1)%v
      GAMMA%v = X(2)%v
      OMEGA%v = X(3)%v
      T%v = X(4)%v
      V%v = TAN(OMEGA%v*T%v)
      Y(1)%v = ((NU%v*V%v)/(GAMMA%v-V%v))
      Y(2)%v = (Y(1)%v*GAMMA%v)
          end if
          if (our_rev_mode%tape) then
C taping
      NU%v = X(1)%v
      GAMMA%v = X(2)%v
      OMEGA%v = X(3)%v
      T%v = X(4)%v
      OpenAD_Symbol_0 = TAN(OMEGA%v*T%v)
      OpenAD_Symbol_2 = T%v
      OpenAD_Symbol_3 = OMEGA%v
      OpenAD_Symbol_1 = (OpenAD_Symbol_0*OpenAD_Symbol_0+INT(1_w2f__i8))
      V%v = OpenAD_Symbol_0
      OpenAD_Symbol_4 = (NU%v*V%v)
      OpenAD_Symbol_5 = (GAMMA%v-V%v)
      Y(1)%v = (OpenAD_Symbol_4/OpenAD_Symbol_5)
      OpenAD_Symbol_8 = V%v
      OpenAD_Symbol_9 = NU%v
      OpenAD_Symbol_6 = (INT(1_w2f__i8)/OpenAD_Symbol_5)
      OpenAD_Symbol_7 = (-(OpenAD_Symbol_4/(OpenAD_Symbol_5*OpenAD_Symbo
     +l_5)))
      OpenAD_Symbol_13 = (OpenAD_Symbol_9*OpenAD_Symbol_6+INT((-1_w2f__i
     +8))*OpenAD_Symbol_7)
      OpenAD_Symbol_14 = (OpenAD_Symbol_8*OpenAD_Symbol_6)
      OpenAD_Symbol_15 = (OpenAD_Symbol_2*OpenAD_Symbol_1*OpenAD_Symbol_
     +13)
      OpenAD_Symbol_16 = (OpenAD_Symbol_3*OpenAD_Symbol_1*OpenAD_Symbol_
     +13)
      double_tape(double_tape_pointer) = OpenAD_Symbol_14
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_15
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_16
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_7
      double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_12 = (Y(1)%v*GAMMA%v)
      OpenAD_Symbol_10 = GAMMA%v
      OpenAD_Symbol_11 = Y(1)%v
      Y(2)%v = OpenAD_Symbol_12
      double_tape(double_tape_pointer) = OpenAD_Symbol_10
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_11
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_17 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_18 = double_tape(double_tape_pointer)
      GAMMA%d = GAMMA%d+Y(2)%d*(OpenAD_Symbol_17)
      OpenAD_prop_0%d = OpenAD_prop_0%d+Y(2)%d*(OpenAD_Symbol_18)
      Y(2)%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_19 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_20 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_21 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_22 = double_tape(double_tape_pointer)
      GAMMA%d = GAMMA%d+Y(1)%d*(OpenAD_Symbol_19)
      X(4)%d = X(4)%d+Y(1)%d*(OpenAD_Symbol_20)
      X(3)%d = X(3)%d+Y(1)%d*(OpenAD_Symbol_21)
      X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_22)
      Y(1)%d = 0.0d0
      X(2)%d = X(2)%d+GAMMA%d
      GAMMA%d = 0.0d0
          end if
        end subroutine head
