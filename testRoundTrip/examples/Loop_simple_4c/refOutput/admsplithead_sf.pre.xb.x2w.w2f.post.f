
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

C$OPENAD XXX File_start [head.f]
      MODULE aglobalmodule
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      CHARACTER(3) GLOBALSTRING
C
C     **** Statements ****
C
      END MODULE
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use aglobalmodule
      use oad_intrinsics
      use aglobalmodule
      use oad_intrinsics
      use aglobalmodule
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
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      CHARACTER(3) LOCALSTRING
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      INTEGER(w2f__i4) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      INTEGER(w2f__i4) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        IF(GLOBALSTRING .EQ. 'yes') THEN
          Y(INT(I))%v = (Y(I)%v+X(I)%v*X(I)%v)
        ENDIF
        IF (GLOBALSTRING.EQ.'no') THEN
          Y(INT(I))%v = (Y(I)%v+X(I)%v*X(I)%v*2.0D00)
        ENDIF
      END DO
      GLOBALSTRING = 'either'
      LOCALSTRING = GLOBALSTRING
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        IF (GLOBALSTRING.EQ.'yes') THEN
          Y(INT(I))%v = (Y(I)%v+X(I)%v*X(I)%v)
          OpenAD_lin_0 = X(I)%v
          OpenAD_lin_1 = X(I)%v
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
        ENDIF
        IF (GLOBALSTRING.EQ.'no') THEN
          OpenAD_lin_2 = (X(I)%v*X(I)%v)
          Y(INT(I))%v = (Y(I)%v+OpenAD_lin_2*2.0D00)
          OpenAD_lin_3 = X(I)%v
          OpenAD_lin_4 = X(I)%v
          OpenAD_acc_0 = (OpenAD_lin_3*2.0D00)
          OpenAD_acc_1 = (OpenAD_lin_4*2.0D00)
          double_tape(double_tape_pointer) = OpenAD_acc_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_acc_1
          double_tape_pointer = double_tape_pointer+1
        ENDIF
      END DO
      stringlength_tape(stringlength_tape_pointer) = len(GLOBALSTRING)
      stringlength_tape_pointer = stringlength_tape_pointer+1
      character_tape(character_tape_pointer:character_tape_pointer+len(G
     +LOBALSTRING)) = GLOBALSTRING(1:len(GLOBALSTRING))
      character_tape_pointer = character_tape_pointer+len(GLOBALSTRING)
      GLOBALSTRING = 'either'
      LOCALSTRING = GLOBALSTRING
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      stringlength_tape_pointer = stringlength_tape_pointer-1
      character_tape_pointer = character_tape_pointer-stringlength_tape(
     +stringlength_tape_pointer)
      GLOBALSTRING(1:len(GLOBALSTRING)) = character_tape(character_tape_
     +pointer:character_tape_pointer+stringlength_tape(stringlength_tape
     +_pointer))
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        IF (GLOBALSTRING.EQ.'no') THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_13 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_14 = double_tape(double_tape_pointer)
          X(I)%d = X(I)%d+Y(I)%d*(OpenAD_Symbol_13)
          X(I)%d = X(I)%d+Y(I)%d*(OpenAD_Symbol_14)
          OpenAD_prp_1%d = OpenAD_prp_1%d+Y(I)%d
          Y(I)%d = 0.0d0
          Y(I)%d = Y(I)%d+OpenAD_prp_1%d
          OpenAD_prp_1%d = 0.0d0
        ENDIF
        IF (GLOBALSTRING.EQ.'yes') THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_10 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_11 = double_tape(double_tape_pointer)
          X(I)%d = X(I)%d+Y(I)%d*(OpenAD_Symbol_10)
          X(I)%d = X(I)%d+Y(I)%d*(OpenAD_Symbol_11)
          OpenAD_prp_0%d = OpenAD_prp_0%d+Y(I)%d
          Y(I)%d = 0.0d0
          Y(I)%d = Y(I)%d+OpenAD_prp_0%d
          OpenAD_prp_0%d = 0.0d0
        ENDIF
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

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use aglobalmodule
      use oad_intrinsics
      use aglobalmodule
      use oad_intrinsics
      use aglobalmodule
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
      GLOBALSTRING = 'yes'
      CALL foo(X,Y)
      GLOBALSTRING = 'both'
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      Y(1)%v = 1.0
      Y(2)%v = 1.0
      GLOBALSTRING = 'yes'
      CALL foo(X,Y)
      GLOBALSTRING = 'both'
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(X,Y)
      Y(2)%d = 0.0d0
      Y(1)%d = 0.0d0
          end if
        end subroutine head
