
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
      SUBROUTINE bar(X, Y, K)
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
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      type(active) :: Y(1:3)
      INTEGER(w2f__i4) K
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) OpenAD_Symbol_3


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, MIN(K, 3), 1
        Y(INT(I))%v = X(I)%v
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,MIN(K,3),1
        Y(INT(I))%v = X(I)%v
      END DO
      integer_tape(integer_tape_pointer) = K
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      K = integer_tape(integer_tape_pointer)
      I = 1+1*((MIN(K,3)-1)/1)
      do while (I.GE.1)
        X(I)%d = X(I)%d+Y(I)%d
        Y(I)%d = 0.0d0
        I = I-1
      END DO
          end if
        end subroutine bar
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
      type(active) :: X(1:3)
      type(active) :: Y(1:3)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
      INTEGER(w2f__i4) K


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
      K = 3
      CALL bar(X,Y,K)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      K = 3
      CALL bar(X,Y,K)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL bar(X,Y,K)
          end if
        end subroutine head
