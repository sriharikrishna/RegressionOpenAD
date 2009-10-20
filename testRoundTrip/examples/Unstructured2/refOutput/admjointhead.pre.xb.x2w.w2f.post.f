
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev
          use OAD_cp

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) II
      INTEGER(w2f__i4) J
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_7


C checkpointing stacks and offsets
          integer :: cp_loop_variable_1,cp_loop_variable_2,cp_loop_varia
     +ble_3,cp_loop_variable_4,cp_loop_variable_5
C floats 'F'
          double precision, dimension(:), allocatable, save :: theArgFSt
     +ack
          integer, save :: theArgFStackoffset=0, theArgFStackSize=0
C integers 'I'
          integer, dimension(:), allocatable, save :: theArgIStack
          integer, save :: theArgIStackoffset=0, theArgIStackSize=0
C booleans 'B'
          logical, dimension(:), allocatable, save :: theArgBStack
          integer, save :: theArgBStackoffset=0, theArgBStackSize=0
C strings 'S'
          character*(80), dimension(:), allocatable, save :: theArgSStac
     +k
          integer, save :: theArgSStackoffset=0, theArgSStackSize=0

          type(modeType) :: our_orig_mode

C external C function used in inlined code
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

          if (our_rev_mode%arg_store) then
C store arguments
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
 1    CONTINUE
      GO TO 2
 2    CONTINUE
      GO TO 3
 3    CONTINUE
      J = 1
      GO TO 17
 4    CONTINUE
      J = J+1
 17   CONTINUE
      IF (J.LE.5) THEN
        GO TO 5
      ELSE
        GO TO 15
      ENDIF
 5    CONTINUE
      GO TO 6
 6    CONTINUE
      II = 1
      GO TO 18
 7    CONTINUE
      II = II+1
 18   CONTINUE
      IF (II.LE.5) THEN
        GO TO 8
      ELSE
        GO TO 9
      ENDIF
 8    CONTINUE
      GO TO 9
 9    CONTINUE
      GO TO 10
 10   CONTINUE
      II = 1
      GO TO 19
 11   CONTINUE
      II = II+1
 19   CONTINUE
      IF (II.LE.5) THEN
        GO TO 12
      ELSE
        GO TO 14
      ENDIF
 12   CONTINUE
      Y(1)%v = X(1)%v
      GO TO 13
 13   CONTINUE
      GO TO 11
 14   CONTINUE
      GO TO 4
 15   CONTINUE
      GO TO 16
 16   CONTINUE

C original function end
            our_rev_mode=our_orig_mode
          end if
          if (our_rev_mode%tape) then
C            print*, " tape       ", our_rev_mode
            our_rev_mode%arg_store=.TRUE.
            our_rev_mode%arg_restore=.FALSE.
            our_rev_mode%plain=.TRUE.
            our_rev_mode%tape=.FALSE.
            our_rev_mode%adjoint=.FALSE.
C taping
 20   CONTINUE
      GO TO 21
 21   CONTINUE
      OpenAD_Symbol_0 = 0_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_0
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 22
 22   CONTINUE
      GO TO 23
 23   CONTINUE
      OpenAD_Symbol_1 = 1_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 24
 24   CONTINUE
      J = 1
      GO TO 43
 25   CONTINUE
      J = J+1
 43   CONTINUE
      IF (J.LE.5) THEN
        GO TO 26
      ELSE
        GO TO 40
      ENDIF
 26   CONTINUE
      GO TO 27
 27   CONTINUE
      OpenAD_Symbol_2 = 2_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 28
 28   CONTINUE
      II = 1
      GO TO 44
 29   CONTINUE
      II = II+1
 44   CONTINUE
      IF (II.LE.5) THEN
        GO TO 30
      ELSE
        GO TO 32
      ENDIF
 30   CONTINUE
      GO TO 31
 31   CONTINUE
      OpenAD_Symbol_3 = 3_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 32
 32   CONTINUE
      GO TO 33
 33   CONTINUE
      OpenAD_Symbol_4 = 4_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 34
 34   CONTINUE
      II = 1
      GO TO 45
 35   CONTINUE
      II = II+1
 45   CONTINUE
      IF (II.LE.5) THEN
        GO TO 36
      ELSE
        GO TO 39
      ENDIF
 36   CONTINUE
      Y(1)%v = X(1)%v
      GO TO 37
 37   CONTINUE
      OpenAD_Symbol_5 = 5_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 38
 38   CONTINUE
      GO TO 35
 39   CONTINUE
      GO TO 25
 40   CONTINUE
      GO TO 41
 41   CONTINUE
      OpenAD_Symbol_6 = 6_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 42
 42   CONTINUE

C taping end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.FALSE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.FALSE.
            our_rev_mode%adjoint=.TRUE.
          end if
          if (our_rev_mode%adjoint) then
C            print*, " adjoint    ", our_rev_mode
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
      do while (INT(OpenAD_Symbol_7).ne.INT(0_w2f__i8))
        IF (OpenAD_Symbol_7.EQ.1) GO TO 68
        IF (OpenAD_Symbol_7.EQ.2) GO TO 69
        IF (OpenAD_Symbol_7.EQ.3) GO TO 70
        IF (OpenAD_Symbol_7.EQ.4) GO TO 71
        IF (OpenAD_Symbol_7.EQ.5) GO TO 72
        IF (OpenAD_Symbol_7.EQ.6) GO TO 73
 68     CONTINUE
        GO TO 65
 69     CONTINUE
        GO TO 65
 70     CONTINUE
        GO TO 65
 71     CONTINUE
        GO TO 65
 72     CONTINUE
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
        GO TO 65
 73     CONTINUE
        GO TO 65
 65     CONTINUE
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
