
C$OPENAD XXX File_start [head.f]
      MODULE globals
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i4) I
C
C     **** Statements ****
C
      END MODULE
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo(P)
          use OAD_tape
          use OAD_rev
          use OAD_cp

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: P
C
C     **** Local Variables and Functions ****
C
      type(active) :: OpenAD_prp_0
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
      call cp_store_int_scalar(I,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
      call cp_store_real_scalar(P%v,theArgFStack,theArgFStackoffset,theA
     +rgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      P%v = theArgFStack(theArgFStackoffset)
C        write(*,'(A,EN26.16E3)') "restore(s)  ", P%v
      theArgFStackoffset = theArgFStackoffset-1
      I = theArgIStack(theArgIStackoffset)
C        write(*,'(A,I5,I5)') "restore(s)  ", I, theArgIStackOffset
      theArgIStackoffset = theArgIStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      P%v = (P%v*2.0D00)
      I = (I+1)

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
      P%v = (P%v*2.0D00)
      I = (I+1)

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
      OpenAD_prp_0%d = OpenAD_prp_0%d+P%d*(2.0D00)
      P%d = 0.0d0
      P%d = P%d+OpenAD_prp_0%d
      OpenAD_prp_0%d = 0.0d0

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
      use globals
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A(1 : 1)
      EXTERNAL foo
      INTEGER(w2f__i8) OpenAD_Symbol_0
      type(active) :: OpenAD_tyc_0
      type(active) :: OpenAD_tyc_1


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
      call cp_store_int_scalar(I,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      I = theArgIStack(theArgIStackoffset)
C        write(*,'(A,I5,I5)') "restore(s)  ", I, theArgIStackOffset
      theArgIStackoffset = theArgIStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
C$OPENAD XXX Template ad_template.f
      I = 1
      A(1) = 9.085830301E-03
      OpenAD_Symbol_0 = I
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,A(I))
      CALL foo(OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(A(INT(OpenAD_Symbol_0)),OpenAD_tyc_0)
      CALL foo(X(1))
      Y(1)%v = X(1)%v

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
      A(1) = 9.085830301E-03
      OpenAD_Symbol_0 = I
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,A(I))
      CALL foo(OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(A(INT(OpenAD_Symbol_0)),OpenAD_tyc_0)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_0
      CALL foo(X(1))
      Y(1)%v = X(1)%v

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
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL foo(X(1))
      CALL foo(OpenAD_tyc_1)

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
