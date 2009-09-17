
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
      goto 2
 2    CONTINUE
C$OPENAD XXX Template ad_template.f
      goto 3
 3    CONTINUE
      X(1)%v = (X(1)%v*X(1)%v)
      goto 4
 4    CONTINUE
      X(1)%v = (X(1)%v*3.0D00)
      goto 5
 5    CONTINUE
      X(1)%v = (X(1)%v*2.0D00)
      goto 6
 6    CONTINUE
      Y(1)%v = X(1)%v
      goto 7
 7    CONTINUE

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
 8    CONTINUE
      goto 9
 9    CONTINUE
      OpenAD_Symbol_3 = 0_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
      goto 10
 10   CONTINUE
C$OPENAD XXX Template ad_template.f
      goto 11
 11   CONTINUE
      OpenAD_Symbol_4 = 1_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      goto 12
 12   CONTINUE
      OpenAD_Symbol_0 = (X(1)%v*X(1)%v)
      OpenAD_lin_0 = X(1)%v
      OpenAD_lin_1 = X(1)%v
      X(1)%v = OpenAD_Symbol_0
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
      goto 13
 13   CONTINUE
      OpenAD_Symbol_5 = 2_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
      goto 14
 14   CONTINUE
      OpenAD_Symbol_1 = (X(1)%v*3.0D00)
      X(1)%v = OpenAD_Symbol_1
      goto 15
 15   CONTINUE
      OpenAD_Symbol_6 = 3_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      goto 16
 16   CONTINUE
      OpenAD_Symbol_2 = (X(1)%v*2.0D00)
      X(1)%v = OpenAD_Symbol_2
      goto 17
 17   CONTINUE
      OpenAD_Symbol_7 = 4_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
      integer_tape_pointer = integer_tape_pointer+1
      goto 18
 18   CONTINUE
      Y(1)%v = X(1)%v
      goto 19
 19   CONTINUE
      OpenAD_Symbol_8 = 5_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
      integer_tape_pointer = integer_tape_pointer+1
      goto 20
 20   CONTINUE

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
      OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
      do while (INT(OpenAD_Symbol_9).ne.INT(0_w2f__i8))
        IF (OpenAD_Symbol_9.EQ.1) goto 42
        IF (OpenAD_Symbol_9.EQ.2) goto 43
        IF (OpenAD_Symbol_9.EQ.3) goto 44
        IF (OpenAD_Symbol_9.EQ.4) goto 45
        IF (OpenAD_Symbol_9.EQ.5) goto 46
 42     CONTINUE
        goto 39
 43     CONTINUE
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
        goto 39
 44     CONTINUE
        OpenAD_prop_2%d = OpenAD_prop_2%d+X(1)%d*(3.0D00)
        X(1)%d = 0.0d0
        X(1)%d = X(1)%d+OpenAD_prop_2%d
        OpenAD_prop_2%d = 0.0d0
        goto 39
 45     CONTINUE
        OpenAD_prop_3%d = OpenAD_prop_3%d+X(1)%d*(2.0D00)
        X(1)%d = 0.0d0
        X(1)%d = X(1)%d+OpenAD_prop_3%d
        OpenAD_prop_3%d = 0.0d0
        goto 39
 46     CONTINUE
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
        goto 39
 39     CONTINUE
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if 
        end subroutine head
