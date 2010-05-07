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
          use OAD_cp

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
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i4) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i4) OpenAD_lin_0
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1


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
 13   CONTINUE
      GO TO 14
 14   CONTINUE
      OpenAD_Symbol_0 = 0_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_0
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 15
 15   CONTINUE
C$OPENAD XXX Template ad_template.f
      I = 2
      GO TO 16
 16   CONTINUE
      OpenAD_Symbol_1 = 1_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
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
      OpenAD_Symbol_5 = 5_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 20
 20   CONTINUE
      GO TO 21
 21   CONTINUE
      Y(1)%v = (Y(1)%v*2.0D00)
      GO TO 22
 22   CONTINUE
      OpenAD_Symbol_6 = 6_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 27
 23   CONTINUE
      Y(1)%v = (I*X(1)%v)
      OpenAD_lin_0 = I
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      GO TO 24
 24   CONTINUE
      OpenAD_Symbol_2 = 2_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 25
 25   CONTINUE
      Y(1)%v = (Y(1)%v*3.0D00)
      GO TO 26
 26   CONTINUE
      OpenAD_Symbol_3 = 3_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 27
 27   CONTINUE
      GO TO 28
 28   CONTINUE
      OpenAD_Symbol_4 = 4_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 29
 29   CONTINUE
      GO TO 12
 12   CONTINUE

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
        IF (OpenAD_Symbol_7.EQ.1) GO TO 52
        IF (OpenAD_Symbol_7.EQ.2) GO TO 53
        IF (OpenAD_Symbol_7.EQ.3) GO TO 54
        IF (OpenAD_Symbol_7.EQ.4) GO TO 55
        IF (OpenAD_Symbol_7.EQ.5) GO TO 56
        IF (OpenAD_Symbol_7.EQ.6) GO TO 57
 52     CONTINUE
        GO TO 49
 53     CONTINUE
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_16 = double_tape(double_tape_pointer)
        X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_16)
        Y(1)%d = 0.0d0
        GO TO 49
 54     CONTINUE
        OpenAD_prp_0%d = OpenAD_prp_0%d+Y(1)%d*(3.0D00)
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prp_0%d
        OpenAD_prp_0%d = 0.0d0
        GO TO 49
 55     CONTINUE
        GO TO 49
 56     CONTINUE
        GO TO 49
 57     CONTINUE
        OpenAD_prp_1%d = OpenAD_prp_1%d+Y(1)%d*(2.0D00)
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prp_1%d
        OpenAD_prp_1%d = 0.0d0
        GO TO 49
 49     CONTINUE
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
