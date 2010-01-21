
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
      SUBROUTINE foo(X, Y, K)
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
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
      INTEGER(w2f__i4) K
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      J = K
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        Y(INT(J))%v = (Y(J)%v+X(I)%v*X(I)%v)
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      J = K
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        Y(INT(J))%v = (Y(J)%v+X(I)%v*X(I)%v)
        OpenAD_lin_0 = X(I)%v
        OpenAD_lin_1 = X(I)%v
        double_tape(double_tape_pointer) = OpenAD_lin_0
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_lin_1
        double_tape_pointer = double_tape_pointer+1
      END DO
      integer_tape(integer_tape_pointer) = J
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      J = integer_tape(integer_tape_pointer)
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_5 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_6 = double_tape(double_tape_pointer)
        X(I)%d = X(I)%d+Y(J)%d*(OpenAD_Symbol_5)
        X(I)%d = X(I)%d+Y(J)%d*(OpenAD_Symbol_6)
        OpenAD_prop_0%d = OpenAD_prop_0%d+Y(J)%d
        Y(J)%d = 0.0d0
        Y(J)%d = Y(J)%d+OpenAD_prop_0%d
        OpenAD_prop_0%d = 0.0d0
        I = I-1
      END DO
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
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) OAD_CTMP0
      INTEGER(w2f__i4) OAD_CTMP1
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
      Y(1)%v = 1.0
      Y(2)%v = 1.0
      OAD_CTMP0 = 1
      CALL foo(X,Y,OAD_CTMP0)
      OAD_CTMP1 = 2
      CALL foo(X,Y,OAD_CTMP1)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      Y(1)%v = 1.0
      Y(2)%v = 1.0
      OAD_CTMP0 = 1
      CALL foo(X,Y,OAD_CTMP0)
      OAD_CTMP1 = 2
      CALL foo(X,Y,OAD_CTMP1)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(X,Y,OAD_CTMP1)
      CALL foo(X,Y,OAD_CTMP0)
      Y(2)%d = 0.0d0
      Y(1)%d = 0.0d0
          end if
        end subroutine head
