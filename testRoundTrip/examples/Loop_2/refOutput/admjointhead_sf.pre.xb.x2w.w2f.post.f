
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
      REAL(w2f__8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      INTEGER(w2f__i8) OpenAD_Symbol_22
      INTEGER(w2f__i8) OpenAD_Symbol_23
      INTEGER(w2f__i8) OpenAD_Symbol_24
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      type(active) :: Y(1:3)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      INTEGER(w2f__i8) OpenAD_Symbol_25
      INTEGER(w2f__i8) OpenAD_Symbol_26
      INTEGER(w2f__i8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29


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
      DO I = 1, 3, 1
        Y(INT(I))%v = X(I)%v
      END DO
      DO I = 1,3,1
        DO J = 1,3,1
          DO K = 1,3,1
            Y(INT(I))%v = (X(J)%v*Y(I)%v)
          END DO
        END DO
      END DO

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
      OpenAD_Symbol_9 = 0_w2f__i8
      DO I = 1,3,1
        Y(INT(I))%v = X(I)%v
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_9 = (INT(OpenAD_Symbol_9)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_9
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_10 = 0_w2f__i8
      DO I = 1,3,1
        OpenAD_Symbol_11 = 0_w2f__i8
        DO J = 1,3,1
          OpenAD_Symbol_12 = 0_w2f__i8
          DO K = 1,3,1
            OpenAD_Symbol_0 = (X(J)%v*Y(I)%v)
            OpenAD_lin_0 = Y(I)%v
            OpenAD_lin_1 = X(J)%v
            Y(INT(I))%v = OpenAD_Symbol_0
            double_tape(double_tape_pointer) = OpenAD_lin_0
            double_tape_pointer = double_tape_pointer+1
            double_tape(double_tape_pointer) = OpenAD_lin_1
            double_tape_pointer = double_tape_pointer+1
            integer_tape(integer_tape_pointer) = I
            integer_tape_pointer = integer_tape_pointer+1
            integer_tape(integer_tape_pointer) = J
            integer_tape_pointer = integer_tape_pointer+1
            OpenAD_Symbol_12 = (INT(OpenAD_Symbol_12)+INT(1_w2f__i8))
          END DO
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_12
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_11 = (INT(OpenAD_Symbol_11)+INT(1_w2f__i8))
        END DO
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_11
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_10 = (INT(OpenAD_Symbol_10)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_10
      integer_tape_pointer = integer_tape_pointer+1

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
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_2 = 1
      do while (INT(OpenAD_Symbol_2).LE.INT(OpenAD_Symbol_1))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_4 = 1
        do while (INT(OpenAD_Symbol_4).LE.INT(OpenAD_Symbol_3))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_5 = integer_tape(integer_tape_pointer)
          OpenAD_Symbol_6 = 1
          do while (INT(OpenAD_Symbol_6).LE.INT(OpenAD_Symbol_5))
            integer_tape_pointer = integer_tape_pointer-1
            OpenAD_Symbol_26 = integer_tape(integer_tape_pointer)
            integer_tape_pointer = integer_tape_pointer-1
            OpenAD_Symbol_27 = integer_tape(integer_tape_pointer)
            double_tape_pointer = double_tape_pointer-1
            OpenAD_Symbol_28 = double_tape(double_tape_pointer)
            double_tape_pointer = double_tape_pointer-1
            OpenAD_Symbol_29 = double_tape(double_tape_pointer)
            OpenAD_prop_0%d = OpenAD_prop_0%d+Y(INT(OpenAD_Symbol_27))%d
     +*(OpenAD_Symbol_28)
            X(INT(OpenAD_Symbol_26))%d = X(INT(OpenAD_Symbol_26))%d+Y(IN
     +T(OpenAD_Symbol_27))%d*(OpenAD_Symbol_29)
            Y(INT(OpenAD_Symbol_27))%d = 0.0d0
            Y(INT(OpenAD_Symbol_27))%d = Y(INT(OpenAD_Symbol_27))%d+Open
     +AD_prop_0%d
            OpenAD_prop_0%d = 0.0d0
            OpenAD_Symbol_6 = INT(OpenAD_Symbol_6)+1
          END DO
          OpenAD_Symbol_4 = INT(OpenAD_Symbol_4)+1
        END DO
        OpenAD_Symbol_2 = INT(OpenAD_Symbol_2)+1
      END DO
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_8 = 1
      do while (INT(OpenAD_Symbol_8).LE.INT(OpenAD_Symbol_7))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_25 = integer_tape(integer_tape_pointer)
        X(INT(OpenAD_Symbol_25))%d = X(INT(OpenAD_Symbol_25))%d+Y(INT(Op
     +enAD_Symbol_25))%d
        Y(INT(OpenAD_Symbol_25))%d = 0.0d0
        OpenAD_Symbol_8 = INT(OpenAD_Symbol_8)+1
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
