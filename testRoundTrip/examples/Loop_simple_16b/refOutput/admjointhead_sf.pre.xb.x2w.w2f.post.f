
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
      SUBROUTINE lagran(I, X, A, SP, LAG)
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
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_8
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) X
      type(active) :: A(1:4)
      INTEGER(w2f__i4) SP
      type(active) :: LAG
C
C     **** Local Variables and Functions ****
C
      type(active) :: DENOM
      INTEGER(w2f__i4) K
      type(active) :: NUMER
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Statements ****
C


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
C$OPENAD XXX Template ad_template.f

          if (our_rev_mode%arg_store) then
C store arguments
      call cp_store_int_scalar(I,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
      call cp_store_real_scalar(X,theArgFStack,theArgFStackoffset,theArg
     +FStackSize)
      call cp_store_int_scalar(SP,theArgIStack,theArgIStackoffset,theArg
     +IStackSize)
      call cp_store_real_vector(A,size(A),theArgFStack,theArgFStackoffse
     +t,theArgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      do cp_loop_variable_1 = ubound(A,1),lbound(A,1),-1
      A(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
C        write(*,'(A,EN26.16E3)') "restore(v)  ", 
C     +A(cp_loop_variable_1)%v
      end do
      SP = theArgIStack(theArgIStackoffset)
C        write(*,'(A,I5,I5)') "restore(s)  ", SP, theArgIStackOffset
      theArgIStackoffset = theArgIStackoffset-1
      X = theArgFStack(theArgFStackoffset)
C        write(*,'(A,EN26.16E3)') "restore(s)  ", X
      theArgFStackoffset = theArgFStackoffset-1
      I = theArgIStack(theArgIStackoffset)
C        write(*,'(A,I5,I5)') "restore(s)  ", I, theArgIStackOffset
      theArgIStackoffset = theArgIStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      NUMER%v = 1.0D00
      DENOM%v = 1.0D00
C$OPENAD XXX Simple loop
      DO K = 1,SP,1
        IF (I.ne.K) THEN
          DENOM%v = (DENOM%v*(A(I)%v-A(K)%v))
          NUMER%v = (NUMER%v*(X-A(K)%v))
        ENDIF
      END DO
      LAG%v = (NUMER%v/DENOM%v)

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
      NUMER%v = 1.0D00
      DENOM%v = 1.0D00
C$OPENAD XXX Simple loop
      DO K = 1,SP,1
        IF (I.ne.K) THEN
          OpenAD_Symbol_0 = (A(I)%v-A(K)%v)
          OpenAD_Symbol_3 = (DENOM%v*OpenAD_Symbol_0)
          OpenAD_Symbol_1 = OpenAD_Symbol_0
          OpenAD_Symbol_2 = DENOM%v
          DENOM%v = OpenAD_Symbol_3
          OpenAD_Symbol_4 = (X-A(K)%v)
          OpenAD_Symbol_8 = (NUMER%v*OpenAD_Symbol_4)
          OpenAD_Symbol_5 = OpenAD_Symbol_4
          OpenAD_Symbol_6 = NUMER%v
          NUMER%v = OpenAD_Symbol_8
          OpenAD_Symbol_11 = (INT((-1_w2f__i8))*OpenAD_Symbol_6)
          double_tape(double_tape_pointer) = OpenAD_Symbol_1
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_2
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_5
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_11
          double_tape_pointer = double_tape_pointer+1
        ENDIF
      END DO
      integer_tape(integer_tape_pointer) = SP
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = I
      integer_tape_pointer = integer_tape_pointer+1
      LAG%v = (NUMER%v/DENOM%v)
      OpenAD_Symbol_9 = (INT(1_w2f__i8)/DENOM%v)
      OpenAD_Symbol_10 = (-(NUMER%v/(DENOM%v*DENOM%v)))
      double_tape(double_tape_pointer) = OpenAD_Symbol_9
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_10
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
      OpenAD_Symbol_24 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_25 = double_tape(double_tape_pointer)
      DENOM%d = DENOM%d+LAG%d*(OpenAD_Symbol_24)
      NUMER%d = NUMER%d+LAG%d*(OpenAD_Symbol_25)
      LAG%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      I = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      SP = integer_tape(integer_tape_pointer)
      K = 1+1*((SP-1)/1)
      do while (K.GE.1)
        IF (I.ne.K) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_20 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_21 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_22 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_23 = double_tape(double_tape_pointer)
          A(K)%d = A(K)%d+NUMER%d*(OpenAD_Symbol_20)
          OpenAD_prop_1%d = OpenAD_prop_1%d+NUMER%d*(OpenAD_Symbol_21)
          NUMER%d = 0.0d0
          OpenAD_prop_2%d = OpenAD_prop_2%d+DENOM%d*(OpenAD_Symbol_22)
          OpenAD_prop_0%d = OpenAD_prop_0%d+DENOM%d*(OpenAD_Symbol_23)
          DENOM%d = 0.0d0
          A(K)%d = A(K)%d-OpenAD_prop_2%d
          A(I)%d = A(I)%d+OpenAD_prop_2%d
          OpenAD_prop_2%d = 0.0d0
          NUMER%d = NUMER%d+OpenAD_prop_1%d
          OpenAD_prop_1%d = 0.0d0
          DENOM%d = DENOM%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
        ENDIF
        K = K-1
      END DO
      DENOM%d = 0.0d0
      NUMER%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine lagran
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
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL lagran
      INTEGER(w2f__i4) OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1
      INTEGER(w2f__i4) OAD_CTMP2


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
      OAD_CTMP0 = 2
      OAD_CTMP1 = 2.0D00
      OAD_CTMP2 = 4
      CALL lagran(OAD_CTMP0,OAD_CTMP1,X,OAD_CTMP2,Y(1))

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
      OAD_CTMP0 = 2
      OAD_CTMP1 = 2.0D00
      OAD_CTMP2 = 4
      CALL lagran(OAD_CTMP0,OAD_CTMP1,X,OAD_CTMP2,Y(1))

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
      CALL lagran(OAD_CTMP0,OAD_CTMP1,X,OAD_CTMP2,Y(1))

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
