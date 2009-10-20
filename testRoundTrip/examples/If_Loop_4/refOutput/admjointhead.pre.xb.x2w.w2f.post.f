
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
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
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
      INTEGER(w2f__i8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18


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
      PI = 3.14149999618530273438D00
      DO I = 1,9,1
        IF (I.GT.5) THEN
          Y(INT(I))%v = (PI*SIN(X(I)%v))
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
        ENDIF
      END DO
      Y(10)%v = (Y(1)%v*Y(9)%v)

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
      PI = 3.14149999618530273438D00
      OpenAD_Symbol_4 = 0_w2f__i8
      DO I = 1,9,1
        IF (I.GT.5) THEN
          OpenAD_tmp_0 = SIN(X(I)%v)
          Y(INT(I))%v = (PI*OpenAD_tmp_0)
          OpenAD_lin_2 = COS(X(I)%v)
          OpenAD_lin_1 = PI
          OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
          double_tape(double_tape_pointer) = OpenAD_acc_0
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_5 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
          OpenAD_lin_4 = (-SIN(X(I)%v))
          double_tape(double_tape_pointer) = OpenAD_lin_4
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_6 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_4 = (INT(OpenAD_Symbol_4)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_0 = (Y(1)%v*Y(9)%v)
      OpenAD_lin_5 = Y(9)%v
      OpenAD_lin_6 = Y(1)%v
      Y(10)%v = OpenAD_Symbol_0
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_6
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
      OpenAD_Symbol_17 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_18 = double_tape(double_tape_pointer)
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y(10)%d*(OpenAD_Symbol_17)
      OpenAD_prop_0%d = OpenAD_prop_0%d+Y(10)%d*(OpenAD_Symbol_18)
      Y(10)%d = 0.0d0
      Y(9)%d = Y(9)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_2 = 1
      do while (INT(OpenAD_Symbol_2).LE.INT(OpenAD_Symbol_1))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_3.ne.0) THEN
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_13 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_14 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_13))%d = X(INT(OpenAD_Symbol_13))%d+Y(INT(
     +OpenAD_Symbol_13))%d*(OpenAD_Symbol_14)
          Y(INT(OpenAD_Symbol_13))%d = 0.0d0
        ELSE
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_15 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_16 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_15))%d = X(INT(OpenAD_Symbol_15))%d+Y(INT(
     +OpenAD_Symbol_15))%d*(OpenAD_Symbol_16)
          Y(INT(OpenAD_Symbol_15))%d = 0.0d0
        ENDIF
        OpenAD_Symbol_2 = INT(OpenAD_Symbol_2)+1
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
