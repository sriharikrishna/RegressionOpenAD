
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
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      type(active) :: Y(1:3)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7


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
C$OPENAD XXX Simple loop
      DO I = 1, 3, 1
        IF(I .eq. 2) THEN
          Y(INT(I))%v = X(I)%v
        ELSE
          Y(INT(I))%v = (X(I)%v*2.0D00)
        ENDIF
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,3,1
        IF (I.eq.2) THEN
          Y(INT(I))%v = X(I)%v
        ELSE
          Y(INT(I))%v = (X(I)%v*2.0D00)
        ENDIF
      END DO
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      I = 1+1*((3-1)/1)
      do while (I.GE.1)
        IF (I.eq.2) THEN
          X(I)%d = X(I)%d+Y(I)%d
          Y(I)%d = 0.0d0
        ELSE
          X(I)%d = X(I)%d+Y(I)%d*(2.0D00)
          Y(I)%d = 0.0d0
        ENDIF
        I = I-1
      END DO
          end if
        end subroutine head
