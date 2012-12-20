
C$OPENAD XXX File_start [head.f]
      MODULE m1
      use OAD_active
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      CONTAINS
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE FOO(X, N)
          use OAD_tape
          use OAD_rev
          use OAD_cp

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        INTEGER(w2f__i4) N
        REAL(w2f__8) X(1 : N)


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
C       **** Statements ****
C

          if (our_rev_mode%arg_store) then
C store arguments
        call cp_store_int_scalar(N,theArgIStack,theArgIStackoffset,theAr
     +gIStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
        N = theArgIStack(theArgIStackoffset)
        theArgIStackoffset = theArgIStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function

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

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine FOO
      END

      MODULE m2
      use OAD_active
      use w2f__types
      use oad_intrinsics
      use m1
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      CONTAINS
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE BAR(X, N)
          use OAD_tape
          use OAD_rev
          use OAD_cp

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

        use w2f__types
        IMPLICIT NONE
C
C       **** Global Variables & Derived Type Definitions ****
C
        INTEGER(w2f__i8) OpenAD_Symbol_0
        INTEGER(w2f__i8) OpenAD_Symbol_1
        INTEGER(w2f__i8) OpenAD_Symbol_2
        INTEGER(w2f__i8) OpenAD_Symbol_3
        INTEGER(w2f__i8) OpenAD_Symbol_4
        INTEGER(w2f__i8) OpenAD_Symbol_5
C
C       **** Parameters and Result ****
C
        INTEGER(w2f__i4) N
        type(active) :: X(1:N)
C
C       **** Local Variables and Functions ****
C
        INTEGER(w2f__i4) I
        INTEGER(w2f__i4) OAD_CTMP0
        INTEGER(w2f__i4) OpenAD_Symbol_6
        type(active) :: OpenAD_prp_0
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
C       **** Statements ****
C

          if (our_rev_mode%arg_store) then
C store arguments
        call cp_store_real_vector(X,size(X),theArgFStack,theArgFStackoff
     +set,theArgFStackSize)
        call cp_store_int_scalar(N,theArgIStack,theArgIStackoffset,theAr
     +gIStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
        N = theArgIStack(theArgIStackoffset)
        theArgIStackoffset = theArgIStackoffset-1
        do cp_loop_variable_1 = ubound(X,1),lbound(X,1),-1
        X(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
        theArgFStackoffset = theArgFStackoffset-1
        end do
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
        DO I = 1, N, 1
          X(INT(I))%v = (X(I)%v*2.0D00)
        END DO
        I = 2
        OAD_CTMP0 = (SIZE(X)-I)
C!! requested inline of 'oad_AllocateMatching' has no defn
        CALL oad_AllocateMatching(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
        CALL oad_convert(OpenAD_tyc_0,X)
        CALL FOO(OpenAD_tyc_0(I),OAD_CTMP0)
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
        OpenAD_Symbol_2 = 0_w2f__i8
        DO I = 1,N,1
          X(INT(I))%v = (X(I)%v*2.0D00)
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_2 = (INT(OpenAD_Symbol_2)+INT(1_w2f__i8))
        END DO
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
        integer_tape_pointer = integer_tape_pointer+1
        I = 2
        OAD_CTMP0 = (SIZE(X)-I)
C!! requested inline of 'oad_AllocateMatching' has no defn
        CALL oad_AllocateMatching(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
        CALL oad_convert(OpenAD_tyc_0,X)
        CALL FOO(OpenAD_tyc_0(I),OAD_CTMP0)
C!! requested inline of 'oad_ShapeTest' has no defn
        CALL oad_ShapeTest(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
        CALL oad_convert(X,OpenAD_tyc_0)
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        integer_tape(integer_tape_pointer) = OAD_CTMP0
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
        OAD_CTMP0 = integer_tape(integer_tape_pointer)
        integer_tape_pointer = integer_tape_pointer-1
        I = integer_tape(integer_tape_pointer)
C!! requested inline of 'oad_AllocateMatching' has no defn
        CALL oad_AllocateMatching(OpenAD_tyc_1,X)
        CALL FOO(OpenAD_tyc_1(I),OAD_CTMP0)
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_1 = 1
        do while (INT(OpenAD_Symbol_1).LE.INT(OpenAD_Symbol_0))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_6 = integer_tape(integer_tape_pointer)
          OpenAD_prp_0%d = OpenAD_prp_0%d+X(OpenAD_Symbol_6)%d*(2.0D00)
          X(OpenAD_Symbol_6)%d = 0.0d0
          X(OpenAD_Symbol_6)%d = X(OpenAD_Symbol_6)%d+OpenAD_prp_0%d
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
        end subroutine BAR
      END
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
      use m2
      use oad_intrinsics
      use m2
      use oad_intrinsics
      use m2
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) OAD_CTMP0


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
      OAD_CTMP0 = 4
      CALL BAR(X,OAD_CTMP0)
      Y(1:4)%v = X(1:4)%v

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
      OAD_CTMP0 = 4
      CALL BAR(X,OAD_CTMP0)
      integer_tape(integer_tape_pointer) = OAD_CTMP0
      integer_tape_pointer = integer_tape_pointer+1
      Y(1:4)%v = X(1:4)%v

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
      X(1:4)%d = X(1:4)%d+Y(1:4)%d
      Y(1:4)%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OAD_CTMP0 = integer_tape(integer_tape_pointer)
      CALL BAR(X,OAD_CTMP0)

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
