C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(X, Y, L, U, S)
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      type(active) :: Y
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) U
      INTEGER(w2f__i4) S
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prp_0


C checkpointing stacks and offsets
          integer :: cp_loop_variable_1,cp_loop_variable_2,cp_loop_varia
     +ble_3,cp_loop_variable_4,cp_loop_variable_5,cp_loop_variable_6

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
      call cp_store_real_scalar(Y%v,theArgFStack,theArgFStackoffset,theA
     +rgFStackSize)
      call cp_store_int_scalar(L,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
      call cp_store_int_scalar(U,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
      call cp_store_int_scalar(S,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
      call cp_store_real_vector(X,size(X),theArgFStack,theArgFStackoffse
     +t,theArgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      do cp_loop_variable_1 = ubound(X,1),lbound(X,1),-1
      X(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
      end do
      S = theArgIStack(theArgIStackoffset)
      theArgIStackoffset = theArgIStackoffset-1
      U = theArgIStack(theArgIStackoffset)
      theArgIStackoffset = theArgIStackoffset-1
      L = theArgIStack(theArgIStackoffset)
      theArgIStackoffset = theArgIStackoffset-1
      Y%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = L, U, S
        IF(I .LT. 5) THEN
          Y%v = (X(I)%v*Y%v)
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
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = L,U,S
        IF (I.LT.5) THEN
          OpenAD_lin_0 = Y%v
          OpenAD_lin_1 = X(I)%v
          Y%v = (X(I)%v*Y%v)
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
        ENDIF
      END DO
      integer_tape(integer_tape_pointer) = L
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = U
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = S
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
      S = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      U = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      L = integer_tape(integer_tape_pointer)
      I = L+S*ABS((L-U)/S)
      do while (((S.GT.0.0D00).AND.(I.GE.L)).OR.((S.LT.0.0D00).AND.(I.LE
     +.L)))
        IF (I.LT.5) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_7 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_8 = double_tape(double_tape_pointer)
          OpenAD_prp_0%d = OpenAD_prp_0%d+Y%d*(OpenAD_Symbol_7)
          X(I)%d = X(I)%d+Y%d*(OpenAD_Symbol_8)
          Y%d = 0.0d0
          Y%d = Y%d+OpenAD_prp_0%d
          OpenAD_prp_0%d = 0.0d0
        ENDIF
        I = I-S
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

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) OAD_CTMP0
      INTEGER(w2f__i4) OAD_CTMP1
      INTEGER(w2f__i4) OAD_CTMP10
      INTEGER(w2f__i4) OAD_CTMP11
      INTEGER(w2f__i4) OAD_CTMP2
      INTEGER(w2f__i4) OAD_CTMP3
      INTEGER(w2f__i4) OAD_CTMP4
      INTEGER(w2f__i4) OAD_CTMP5
      INTEGER(w2f__i4) OAD_CTMP6
      INTEGER(w2f__i4) OAD_CTMP7
      INTEGER(w2f__i4) OAD_CTMP8
      INTEGER(w2f__i4) OAD_CTMP9
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C


C checkpointing stacks and offsets
          integer :: cp_loop_variable_1,cp_loop_variable_2,cp_loop_varia
     +ble_3,cp_loop_variable_4,cp_loop_variable_5,cp_loop_variable_6

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
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      Y(1:4)%v = X(1:4)%v
      OAD_CTMP0 = 1
      OAD_CTMP1 = 3
      OAD_CTMP2 = 1
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
      OAD_CTMP3 = 3
      OAD_CTMP4 = 1
      OAD_CTMP5 = (-1)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      OAD_CTMP6 = 1
      OAD_CTMP7 = 5
      OAD_CTMP8 = 2
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      OAD_CTMP9 = 5
      OAD_CTMP10 = 1
      OAD_CTMP11 = (-2)
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)

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
      Y(1:4)%v = X(1:4)%v
      OAD_CTMP0 = 1
      OAD_CTMP1 = 3
      OAD_CTMP2 = 1
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
      OAD_CTMP3 = 3
      OAD_CTMP4 = 1
      OAD_CTMP5 = (-1)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      OAD_CTMP6 = 1
      OAD_CTMP7 = 5
      OAD_CTMP8 = 2
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      OAD_CTMP9 = 5
      OAD_CTMP10 = 1
      OAD_CTMP11 = (-2)
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)

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
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
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
