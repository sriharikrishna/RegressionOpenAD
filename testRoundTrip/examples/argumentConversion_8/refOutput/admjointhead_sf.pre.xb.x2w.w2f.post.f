
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use OAD_active
      use w2f__types
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
      SUBROUTINE bar(X, Y)
          use OAD_tape
          use OAD_rev
          use OAD_cp

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) X(1 : 4)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_12
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
      call cp_store_p_real_vector(X,size(X),theArgFStack,theArgFStackoff
     +set,theArgFStackSize)
      call cp_store_real_vector(Y,size(Y),theArgFStack,theArgFStackoffse
     +t,theArgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      do cp_loop_variable_1 = ubound(Y,1),lbound(Y,1),-1
      Y(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
C        write(*,'(A,EN26.16E3)') "restore(v)  ", 
C     +Y(cp_loop_variable_1)%v
      end do
      do cp_loop_variable_1 = ubound(X,1),lbound(X,1),-1
      X(cp_loop_variable_1) = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
C        write(*,'(A,EN26.16E3)') "restore(v)  ", 
C     +X(cp_loop_variable_1)
      end do
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      DO I = 1, 4, 1
        IF(X(I) .GT. 1.20000004768371582031D00) THEN
          Y(INT(I))%v = (Y(I)%v*2.0D00)
        ENDIF
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
      OpenAD_Symbol_3 = 0_w2f__i8
      DO I = 1,4,1
        IF (X(I).GT.1.20000004768371582031D00) THEN
          Y(INT(I))%v = (Y(I)%v*2.0D00)
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_4 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          OpenAD_Symbol_5 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_3 = (INT(OpenAD_Symbol_3)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
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
        OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_2.ne.0) THEN
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_12 = integer_tape(integer_tape_pointer)
          OpenAD_prp_0%d = OpenAD_prp_0%d+Y(INT(OpenAD_Symbol_12))%d*(2.
     +0D00)
          Y(INT(OpenAD_Symbol_12))%d = 0.0d0
          Y(INT(OpenAD_Symbol_12))%d = Y(INT(OpenAD_Symbol_12))%d+OpenAD
     +_prp_0%d
          OpenAD_prp_0%d = 0.0d0
        ENDIF
        OpenAD_Symbol_1 = INT(OpenAD_Symbol_1)+1
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine bar
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo(X, Y)
          use OAD_tape
          use OAD_rev
          use OAD_cp

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:)
      type(active) :: Y(1:)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
      REAL(w2f__8) OpenAD_tyc_0(:)
      ALLOCATABLE OpenAD_tyc_0
      REAL(w2f__8) OpenAD_tyc_1(:)
      ALLOCATABLE OpenAD_tyc_1


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
      call cp_store_real_vector(X,size(X),theArgFStack,theArgFStackoffse
     +t,theArgFStackSize)
      call cp_store_real_vector(Y,size(Y),theArgFStack,theArgFStackoffse
     +t,theArgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      do cp_loop_variable_1 = ubound(Y,1),lbound(Y,1),-1
      Y(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
C        write(*,'(A,EN26.16E3)') "restore(v)  ", 
C     +Y(cp_loop_variable_1)%v
      end do
      do cp_loop_variable_1 = ubound(X,1),lbound(X,1),-1
      X(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
C        write(*,'(A,EN26.16E3)') "restore(v)  ", 
C     +X(cp_loop_variable_1)%v
      end do
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,X)
      CALL bar(OpenAD_tyc_0,Y)
C!! requested inline of 'oad_ShapeTest' has no defn
      CALL oad_ShapeTest(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(X,OpenAD_tyc_0)

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
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,X)
      CALL bar(OpenAD_tyc_0,Y)
C!! requested inline of 'oad_ShapeTest' has no defn
      CALL oad_ShapeTest(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(X,OpenAD_tyc_0)

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
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_tyc_1,X)
      CALL bar(OpenAD_tyc_1,Y)

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

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:4)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        SUBROUTINE foo(X, Y)
        use OAD_active
        use w2f__types
        type(active) :: X(1:)
        type(active) :: Y(1:)
        END SUBROUTINE
      end interface
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
      Y(1:4)%v = X(1:4)%v
      CALL foo(X,Y)

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
      Y(1:4)%v = X(1:4)%v
      CALL foo(X,Y)

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
      CALL foo(X,Y)
      X(1:4)%d = X(1:4)%d+Y(1:4)%d
      Y(1:4)%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
