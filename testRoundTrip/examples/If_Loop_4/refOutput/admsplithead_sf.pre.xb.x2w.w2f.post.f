
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
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      INTEGER(w2f__i8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_acc_0
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:10)
      type(active) :: Y(1:10)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) PI
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      INTEGER(w2f__i8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7


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
      PI = 3.14149999618530273438D00
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          Y(INT(I))%v = (PI*SIN(X(I)%v))
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
        ENDIF
      END DO
      Y(10)%v = (Y(1)%v*Y(9)%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      PI = 3.14149999618530273438D00
      OpenAD_Symbol_12 = 0_w2f__i8
      DO I = 1,9,1
        IF (I.GT.5) THEN
          OpenAD_Symbol_0 = SIN(X(I)%v)
          Y(INT(I))%v = (PI*OpenAD_Symbol_0)
          OpenAD_Symbol_3 = COS(X(I)%v)
          OpenAD_Symbol_2 = PI
          OpenAD_acc_0 = (OpenAD_Symbol_3*OpenAD_Symbol_2)
          double_tape(double_tape_pointer) = OpenAD_acc_0
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_13 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_13
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
          OpenAD_Symbol_5 = (-SIN(X(I)%v))
          double_tape(double_tape_pointer) = OpenAD_Symbol_5
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_14 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_14
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_12 = (INT(OpenAD_Symbol_12)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_12
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_8 = (Y(1)%v*Y(9)%v)
      OpenAD_Symbol_6 = Y(9)%v
      OpenAD_Symbol_7 = Y(1)%v
      Y(10)%v = OpenAD_Symbol_8
      double_tape(double_tape_pointer) = OpenAD_Symbol_6
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_7
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_25 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_26 = double_tape(double_tape_pointer)
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y(10)%d*(OpenAD_Symbol_25)
      OpenAD_prop_0%d = OpenAD_prop_0%d+Y(10)%d*(OpenAD_Symbol_26)
      Y(10)%d = 0.0d0
      Y(9)%d = Y(9)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_10 = 1
      do while (INT(OpenAD_Symbol_10).LE.INT(OpenAD_Symbol_9))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_11 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_11.ne.0) THEN
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_21 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_22 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_21))%d = X(INT(OpenAD_Symbol_21))%d+Y(INT(
     +OpenAD_Symbol_21))%d*(OpenAD_Symbol_22)
          Y(INT(OpenAD_Symbol_21))%d = 0.0d0
        ELSE
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_23 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_24 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_23))%d = X(INT(OpenAD_Symbol_23))%d+Y(INT(
     +OpenAD_Symbol_23))%d*(OpenAD_Symbol_24)
          Y(INT(OpenAD_Symbol_23))%d = 0.0d0
        ENDIF
        OpenAD_Symbol_10 = INT(OpenAD_Symbol_10)+1
      END DO
          end if
        end subroutine head
