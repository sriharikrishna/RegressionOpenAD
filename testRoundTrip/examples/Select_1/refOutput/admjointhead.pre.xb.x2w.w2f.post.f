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
      INTEGER(w2f__i8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
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
      INTEGER(w2f__i4) select_expr_temp_0
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12


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
C$OPENAD XXX Template ad_template.f
      I = 1
      Y(1)%v = 2.0
      select_expr_temp_0 = I
      IF (select_expr_temp_0.EQ.1) GO TO 4
      IF (select_expr_temp_0.EQ.2) GO TO 8
      GO TO 9
 9    CONTINUE
      Y(1)%v = X(1)%v
      GO TO 6
 4    CONTINUE
      Y(1)%v = X(1)%v
      GO TO 6
 8    CONTINUE
      Y(1)%v = X(1)%v
      GO TO 6
 6    CONTINUE
      Y(1)%v = (Y(1)%v*Y(1)%v)

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
C$OPENAD XXX Template ad_template.f
      I = 1
      Y(1)%v = 2.0
      select_expr_temp_0 = I
      IF (select_expr_temp_0.EQ.1) GO TO 40
      IF (select_expr_temp_0.EQ.2) GO TO 44
      GO TO 45
 45   CONTINUE
      Y(1)%v = X(1)%v
      OpenAD_Symbol_6 = 3_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 49
 40   CONTINUE
      Y(1)%v = X(1)%v
      OpenAD_Symbol_4 = 1_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 49
 44   CONTINUE
      Y(1)%v = X(1)%v
      OpenAD_Symbol_5 = 2_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
      GO TO 49
 49   CONTINUE
      OpenAD_Symbol_2 = (Y(1)%v*Y(1)%v)
      OpenAD_Symbol_0 = Y(1)%v
      OpenAD_Symbol_1 = Y(1)%v
      Y(1)%v = OpenAD_Symbol_2
      double_tape(double_tape_pointer) = OpenAD_Symbol_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_1
      double_tape_pointer = double_tape_pointer+1

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
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_11 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_12 = double_tape(double_tape_pointer)
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y(1)%d*(OpenAD_Symbol_11)
      OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d*(OpenAD_Symbol_12)
      Y(1)%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_3.EQ.1) GO TO 94
      IF (OpenAD_Symbol_3.EQ.2) GO TO 93
      IF (OpenAD_Symbol_3.EQ.3) GO TO 92
 94   CONTINUE
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
      GO TO 96
 93   CONTINUE
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
      GO TO 96
 92   CONTINUE
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
      GO TO 96
 96   CONTINUE
      Y(1)%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
