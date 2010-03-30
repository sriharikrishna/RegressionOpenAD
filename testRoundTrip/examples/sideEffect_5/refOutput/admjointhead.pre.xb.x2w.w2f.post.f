C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(A, N)
          use OAD_tape
          use OAD_rev
          use OAD_cp

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use all_globals_mod
      use oad_intrinsics
      use all_globals_mod
      use oad_intrinsics
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      type(active) :: A(1:INT((N+G)))
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_dly_0
      type(active) :: OpenAD_prp_0


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
C     **** Statements ****
C

          if (our_rev_mode%arg_store) then
C store arguments
      call cp_store_int_scalar(G,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
      call cp_store_int_scalar(N,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
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
      N = theArgIStack(theArgIStackoffset)
C        write(*,'(A,I5,I5)') "restore(s)  ", N, theArgIStackOffset
      theArgIStackoffset = theArgIStackoffset-1
      G = theArgIStack(theArgIStackoffset)
C        write(*,'(A,I5,I5)') "restore(s)  ", G, theArgIStackOffset
      theArgIStackoffset = theArgIStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
C$OPENAD XXX Template ad_template.f
      DO I = 1, (N + 1), 1
        A(INT(I))%v = (A(I)%v*2.0D00)
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
      OpenAD_Symbol_2 = 0_w2f__i8
      DO I = 1,(N+1),1
        OpenAD_dly_0 = (A(I)%v*2.0D00)
        A(INT(I))%v = OpenAD_dly_0
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_2 = (INT(OpenAD_Symbol_2)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
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
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_1 = 1
      do while (INT(OpenAD_Symbol_1).LE.INT(OpenAD_Symbol_0))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_12 = integer_tape(integer_tape_pointer)
        OpenAD_prp_0%d = OpenAD_prp_0%d+A(INT(OpenAD_Symbol_12))%d*(2.0D
     +00)
        A(INT(OpenAD_Symbol_12))%d = 0.0d0
        A(INT(OpenAD_Symbol_12))%d = A(INT(OpenAD_Symbol_12))%d+OpenAD_p
     +rp_0%d
        OpenAD_prp_0%d = 0.0d0
        OpenAD_Symbol_1 = INT(OpenAD_Symbol_1)+1
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine foo
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
      use all_globals_mod
      use oad_intrinsics
      use all_globals_mod
      use oad_intrinsics
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) OAD_CTMP0
      INTEGER(w2f__i8) OpenAD_Symbol_13
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
      call cp_store_int_scalar(G,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      G = theArgIStack(theArgIStackoffset)
C        write(*,'(A,I5,I5)') "restore(s)  ", G, theArgIStackOffset
      theArgIStackoffset = theArgIStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
C$OPENAD XXX Template ad_template.f
      G = 1
      I = 2
      OAD_CTMP0 = 2
      CALL foo(X,OAD_CTMP0)
      CALL foo(X,I)
      Y(1)%v = 0
      DO I = 1,3,1
        Y(1)%v = (X(I)%v+Y(1)%v)
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
      G = 1
      I = 2
      OAD_CTMP0 = 2
      CALL foo(X,OAD_CTMP0)
      integer_tape(integer_tape_pointer) = G
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = OAD_CTMP0
      integer_tape_pointer = integer_tape_pointer+1
      CALL foo(X,I)
      integer_tape(integer_tape_pointer) = G
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = I
      integer_tape_pointer = integer_tape_pointer+1
      Y(1)%v = 0
      OpenAD_Symbol_8 = 0_w2f__i8
      DO I = 1,3,1
        Y(1)%v = (X(I)%v+Y(1)%v)
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_8 = (INT(OpenAD_Symbol_8)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
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
      OpenAD_Symbol_6 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_7 = 1
      do while (INT(OpenAD_Symbol_7).LE.INT(OpenAD_Symbol_6))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_13 = integer_tape(integer_tape_pointer)
        OpenAD_prp_1%d = OpenAD_prp_1%d+Y(1)%d
        X(INT(OpenAD_Symbol_13))%d = X(INT(OpenAD_Symbol_13))%d+Y(1)%d
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prp_1%d
        OpenAD_prp_1%d = 0.0d0
        OpenAD_Symbol_7 = INT(OpenAD_Symbol_7)+1
      END DO
      Y(1)%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      I = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      G = integer_tape(integer_tape_pointer)
      CALL foo(X,I)
      integer_tape_pointer = integer_tape_pointer-1
      OAD_CTMP0 = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      G = integer_tape(integer_tape_pointer)
      CALL foo(X,OAD_CTMP0)

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
