
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
      SUBROUTINE foo(X, Y)
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
      type(active) :: X
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
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
C$OPENAD XXX Template ad_template.f

          if (our_rev_mode%arg_store) then
C store arguments
      call cp_store_real_scalar(X%v,theArgFStack,theArgFStackoffset,theA
     +rgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      X%v = theArgFStack(theArgFStackoffset)
C          write(*,'(A,EN26.16E3)') "restore(s)  ", X%v
      theArgFStackoffset = theArgFStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      Y%v = (X%v*X%v)

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
      Y%v = (X%v*X%v)
      OpenAD_Symbol_2 = X%v
      OpenAD_Symbol_3 = X%v
      double_tape(double_tape_pointer) = OpenAD_Symbol_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_3
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
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      X%d = X%d+Y%d*(OpenAD_Symbol_4)
      X%d = X%d+Y%d*(OpenAD_Symbol_5)
      Y%d = 0.0d0

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
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_6
      type(active) :: OpenAD_Symbol_7
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      REAL(w2f__8) PX(1 : 2)
      REAL(w2f__8) PY


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
      CALL foo(X(1),Y)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,PX(1))
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
      CALL foo(OpenAD_Symbol_0,OpenAD_Symbol_1)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(PX(1),OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)

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
      CALL foo(X(1),Y)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,PX(1))
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
      CALL foo(OpenAD_Symbol_0,OpenAD_Symbol_1)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(PX(1),OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)

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
      CALL foo(OpenAD_Symbol_6,OpenAD_Symbol_7)
      CALL foo(X(1),Y)

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
