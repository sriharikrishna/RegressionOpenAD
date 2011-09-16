
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
      INTEGER(w2f__i4) OAD_CTMP0
      REAL(w2f__8) P
      REAL(w2f__8) Q
      EXTERNAL sq


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
      OAD_CTMP0 = 2
      CALL sq(OAD_CTMP0,X,Y)
      P = 2.0D00
      Q = (P*P)
          end if
          if (our_rev_mode%tape) then
C taping
      OAD_CTMP0 = 2
      CALL sq(OAD_CTMP0,X,Y)
      P = 2.0D00
      Q = (P*P)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL sq(OAD_CTMP0,X,Y)
          end if
        end subroutine head
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE sq(N, U, V)
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
      INTEGER(w2f__i4) N
      type(active) :: U(1:2)
      type(active) :: V(1:2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_aux_0
      REAL(w2f__8) OpenAD_aux_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
C
C     **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
      V(1)%v = SQRT((U(1)%v**2)+(U(2)%v**2))
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*U(1)%v*2.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
      OpenAD_aux_0 = SQRT((U(1)%v**2)+(U(2)%v**2))
      OpenAD_lin_1 = (2*(U(1)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_2 = (2*(U(2)%v**(2-INT(1_w2f__i8))))
      OpenAD_lin_0 = (5.0D-01/OpenAD_aux_0)
      V(1)%v = OpenAD_aux_0
      OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_0)
      OpenAD_acc_1 = (OpenAD_lin_1*OpenAD_lin_0)
      double_tape(double_tape_pointer) = OpenAD_acc_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      OpenAD_aux_1 = (U(1)%v*2.0D00)
      OpenAD_lin_3 = (3*(U(1)%v**(3-INT(1_w2f__i8))))
      OpenAD_lin_4 = COS(U(2)%v)
      OpenAD_lin_5 = (INT(1_w2f__i8)/U(1)%v)
      OpenAD_lin_6 = (-(U(2)%v/(U(1)%v*U(1)%v)))
      OpenAD_lin_7 = (-SIN(U(1)%v))
      OpenAD_lin_8 = (3*(U(2)%v**(3-INT(1_w2f__i8))))
      OpenAD_lin_9 = OpenAD_aux_1
      OpenAD_lin_10 = U(2)%v
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*OpenAD_aux_1)
      OpenAD_acc_2 = (OpenAD_lin_7*INT((-1_w2f__i8)))
      OpenAD_acc_3 = (2.0D00*OpenAD_lin_10)
      double_tape(double_tape_pointer) = OpenAD_lin_8
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_3
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_4
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_6
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_9
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_0 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_7 = double_tape(double_tape_pointer)
      U(1)%d = U(1)%d+V(2)%d*(OpenAD_Symbol_0)
      U(2)%d = U(2)%d+V(2)%d*(OpenAD_Symbol_1)
      U(1)%d = U(1)%d+V(2)%d*(OpenAD_Symbol_2)
      U(2)%d = U(2)%d+V(2)%d*(OpenAD_Symbol_3)
      U(2)%d = U(2)%d+V(2)%d*(OpenAD_Symbol_4)
      U(1)%d = U(1)%d+V(2)%d*(OpenAD_Symbol_5)
      U(1)%d = U(1)%d+V(2)%d*(OpenAD_Symbol_6)
      U(2)%d = U(2)%d+V(2)%d*(OpenAD_Symbol_7)
      V(2)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_8 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_9 = double_tape(double_tape_pointer)
      U(1)%d = U(1)%d+V(1)%d*(OpenAD_Symbol_8)
      U(2)%d = U(2)%d+V(1)%d*(OpenAD_Symbol_9)
      V(1)%d = 0.0d0
          end if
        end subroutine sq
