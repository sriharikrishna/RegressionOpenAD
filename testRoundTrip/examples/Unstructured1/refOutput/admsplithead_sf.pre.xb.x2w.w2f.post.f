
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

      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
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
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_17
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
      I = 2
      GO TO 4
 4    CONTINUE
      IF (X(1)%v.LT.1.0D00) THEN
        GO TO 8
      ELSE
        GO TO 5
      ENDIF
 5    CONTINUE
      GO TO 6
 6    CONTINUE
      GO TO 7
 7    CONTINUE
      Y(1)%v = (Y(1)%v*2.0D00)
      GO TO 10
 8    CONTINUE
      Y(1)%v = (I*X(1)%v)
      GO TO 9
 9    CONTINUE
      Y(1)%v = (Y(1)%v*3.0D00)
      GO TO 10
 10   CONTINUE
      GO TO 11
 11   CONTINUE
      GO TO 1
 1    CONTINUE
          end if
          if (our_rev_mode%tape) then
C taping
 13   CONTINUE
      GO TO 14
 14   CONTINUE
      OpenAD_Symbol_2 = 0_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 15
 15   CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 16
 16   CONTINUE
      OpenAD_Symbol_3 = 1_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 17
 17   CONTINUE
      IF (X(1)%v.LT.1.0D00) THEN
        GO TO 23
      ELSE
        GO TO 18
      ENDIF
 18   CONTINUE
      GO TO 19
 19   CONTINUE
      OpenAD_Symbol_7 = 5_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 20
 20   CONTINUE
      GO TO 21
 21   CONTINUE
      OpenAD_Symbol_1 = (Y(1)%v*2.0D00)
      Y(1)%v = OpenAD_Symbol_1
      GO TO 22
 22   CONTINUE
      OpenAD_Symbol_8 = 6_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 27
 23   CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_1 = I
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
      GO TO 24
 24   CONTINUE
      OpenAD_Symbol_4 = 2_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 25
 25   CONTINUE
      OpenAD_Symbol_0 = (Y(1)%v*3.0D00)
      Y(1)%v = OpenAD_Symbol_0
      GO TO 26
 26   CONTINUE
      OpenAD_Symbol_5 = 3_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 27
 27   CONTINUE
      GO TO 28
 28   CONTINUE
      OpenAD_Symbol_6 = 4_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 29
 29   CONTINUE
      GO TO 12
 12   CONTINUE
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
      do while (INT(OpenAD_Symbol_9).ne.INT(0_w2f__i8))
        IF (OpenAD_Symbol_9.EQ.1) GO TO 52
        IF (OpenAD_Symbol_9.EQ.2) GO TO 53
        IF (OpenAD_Symbol_9.EQ.3) GO TO 54
        IF (OpenAD_Symbol_9.EQ.4) GO TO 55
        IF (OpenAD_Symbol_9.EQ.5) GO TO 56
        IF (OpenAD_Symbol_9.EQ.6) GO TO 57
 52     CONTINUE
        GO TO 49
 53     CONTINUE
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_18 = double_tape(double_tape_pointer)
        X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_18)
        Y(1)%d = 0.0d0
        GO TO 49
 54     CONTINUE
        OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d*(3.0D00)
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prop_0%d
        OpenAD_prop_0%d = 0.0d0
        GO TO 49
 55     CONTINUE
        GO TO 49
 56     CONTINUE
        GO TO 49
 57     CONTINUE
        OpenAD_prop_1%d = OpenAD_prop_1%d+Y(1)%d*(2.0D00)
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prop_1%d
        OpenAD_prop_1%d = 0.0d0
        GO TO 49
 49     CONTINUE
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
      enddo
          end if
        end subroutine head
