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
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_9


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
 2    CONTINUE
      GO TO 3
 3    CONTINUE
C$OPENAD XXX Template ad_template.f
      GO TO 4
 4    CONTINUE
      X(1)%v = (X(1)%v*X(1)%v)
      GO TO 5
 5    CONTINUE
      X(1)%v = (X(1)%v*3.0D00)
      GO TO 6
 6    CONTINUE
      X(1)%v = (X(1)%v*2.0D00)
      GO TO 7
 7    CONTINUE
      Y(1)%v = X(1)%v
      GO TO 8
 8    CONTINUE
      GO TO 1
 1    CONTINUE
          end if
          if (our_rev_mode%tape) then
C taping
 10   CONTINUE
      GO TO 11
 11   CONTINUE
      OpenAD_Symbol_3 = 0_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 12
 12   CONTINUE
C$OPENAD XXX Template ad_template.f
      GO TO 13
 13   CONTINUE
      OpenAD_Symbol_4 = 1_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 14
 14   CONTINUE
      OpenAD_Symbol_0 = (X(1)%v*X(1)%v)
      OpenAD_lin_0 = X(1)%v
      OpenAD_lin_1 = X(1)%v
      X(1)%v = OpenAD_Symbol_0
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
      GO TO 15
 15   CONTINUE
      OpenAD_Symbol_5 = 2_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 16
 16   CONTINUE
      OpenAD_Symbol_1 = (X(1)%v*3.0D00)
      X(1)%v = OpenAD_Symbol_1
      GO TO 17
 17   CONTINUE
      OpenAD_Symbol_6 = 3_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 18
 18   CONTINUE
      OpenAD_Symbol_2 = (X(1)%v*2.0D00)
      X(1)%v = OpenAD_Symbol_2
      GO TO 19
 19   CONTINUE
      OpenAD_Symbol_7 = 4_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 20
 20   CONTINUE
      Y(1)%v = X(1)%v
      GO TO 21
 21   CONTINUE
      OpenAD_Symbol_8 = 5_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 22
 22   CONTINUE
      GO TO 9
 9    CONTINUE
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
      do while (INT(OpenAD_Symbol_9).ne.INT(0_w2f__i8))
        IF (OpenAD_Symbol_9.EQ.1) GO TO 44
        IF (OpenAD_Symbol_9.EQ.2) GO TO 45
        IF (OpenAD_Symbol_9.EQ.3) GO TO 46
        IF (OpenAD_Symbol_9.EQ.4) GO TO 47
        IF (OpenAD_Symbol_9.EQ.5) GO TO 48
 44     CONTINUE
        GO TO 41
 45     CONTINUE
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_17 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_18 = double_tape(double_tape_pointer)
        OpenAD_prop_1%d = OpenAD_prop_1%d+X(1)%d*(OpenAD_Symbol_17)
        OpenAD_prop_0%d = OpenAD_prop_0%d+X(1)%d*(OpenAD_Symbol_18)
        X(1)%d = 0.0d0
        X(1)%d = X(1)%d+OpenAD_prop_1%d
        OpenAD_prop_1%d = 0.0d0
        X(1)%d = X(1)%d+OpenAD_prop_0%d
        OpenAD_prop_0%d = 0.0d0
        GO TO 41
 46     CONTINUE
        OpenAD_prop_2%d = OpenAD_prop_2%d+X(1)%d*(3.0D00)
        X(1)%d = 0.0d0
        X(1)%d = X(1)%d+OpenAD_prop_2%d
        OpenAD_prop_2%d = 0.0d0
        GO TO 41
 47     CONTINUE
        OpenAD_prop_3%d = OpenAD_prop_3%d+X(1)%d*(2.0D00)
        X(1)%d = 0.0d0
        X(1)%d = X(1)%d+OpenAD_prop_3%d
        OpenAD_prop_3%d = 0.0d0
        GO TO 41
 48     CONTINUE
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
        GO TO 41
 41     CONTINUE
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
      END DO
          end if
        end subroutine head
