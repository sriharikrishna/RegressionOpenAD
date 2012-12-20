
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Top Level Pragmas ****
!
interface OAD_S_MAX
  module procedure OAD_S_MAX_D
end interface

!
!     **** Statements ****
!
CONTAINS
!#########################################################
! This file is part of OpenAD released under the LGPL.   #
! The full COPYRIGHT notice can be found in the top      #
! level directory of the OpenAD distribution             #
!#########################################################

  SUBROUTINE OAD_S_MAX_D(A0, A1, R)
    use OAD_tape
    use OAD_rev
    use OAD_cp

! original arguments get inserted before version
!         ! and declared here together with all local variables
!         ! generated by xaifBooster

  use w2f__types
  IMPLICIT NONE
!
!       **** Global Variables & Derived Type Definitions ****
!
  INTEGER(w2f__i8) OpenAD_Symbol_0
  INTEGER(w2f__i8) OpenAD_Symbol_1
  INTEGER(w2f__i8) OpenAD_Symbol_2
  INTEGER(w2f__i8) OpenAD_Symbol_3
  INTEGER(w2f__i8) OpenAD_Symbol_4
  INTEGER(w2f__i8) OpenAD_Symbol_5
!
!       **** Parameters and Result ****
!
  type(active) :: A0
  REAL(w2f__8) A1
  type(active) :: R


! checkpointing stacks and offsets
    integer :: cp_loop_variable_1,cp_loop_variable_2,cp_loop_variable_3,cp_loop_&
     &variable_4,cp_loop_variable_5

! floats 'F'
    double precision, dimension(:), allocatable, save :: theArgFStack
    integer, save :: theArgFStackoffset=0, theArgFStackSize=0
! integers 'I'
    integer, dimension(:), allocatable, save :: theArgIStack
    integer, save :: theArgIStackoffset=0, theArgIStackSize=0
! booleans 'B'
    logical, dimension(:), allocatable, save :: theArgBStack
    integer, save :: theArgBStackoffset=0, theArgBStackSize=0
! strings 'S'
    character*(80), dimension(:), allocatable, save :: theArgSStack
    integer, save :: theArgSStackoffset=0, theArgSStackSize=0

    type(modeType) :: our_orig_mode

! external C function used in inlined code
    integer iaddr
    external iaddr
!
!       **** Statements ****
!

    if (our_rev_mode%arg_store) then
! store arguments
  call cp_store_real_scalar(A0%v,theArgFStack,theArgFStackoffset,theArgFStackSiz&
     &e)

  call cp_store_real_scalar(A1,theArgFStack,theArgFStackoffset,theArgFStackSize)
    end if
    if (our_rev_mode%arg_restore) then
! restore arguments
  A1 = theArgFStack(theArgFStackoffset)
  theArgFStackoffset = theArgFStackoffset-1
  A0%v = theArgFStack(theArgFStackoffset)
  theArgFStackoffset = theArgFStackoffset-1
    end if
    if (our_rev_mode%plain) then
      our_orig_mode=our_rev_mode
      our_rev_mode%arg_store=.FALSE.
! original function
  IF (A0%v.GT.A1) THEN
    R%v = A0%v
  ELSE
    R%v = A1
  ENDIF

! original function end
      our_rev_mode=our_orig_mode
    end if
    if (our_rev_mode%tape) then
!            print*, " tape       ", our_rev_mode
      our_rev_mode%arg_store=.TRUE.
      our_rev_mode%arg_restore=.FALSE.
      our_rev_mode%plain=.TRUE.
      our_rev_mode%tape=.FALSE.
      our_rev_mode%adjoint=.FALSE.
! taping
  IF (A0%v.GT.A1) THEN
    R%v = A0%v
    OpenAD_Symbol_1 = 1_w2f__i8
    integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
    integer_tape_pointer = integer_tape_pointer+1
  ELSE
    R%v = A1
    OpenAD_Symbol_2 = 0_w2f__i8
    integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
    integer_tape_pointer = integer_tape_pointer+1
  ENDIF

! taping end
      our_rev_mode%arg_store=.FALSE.
      our_rev_mode%arg_restore=.FALSE.
      our_rev_mode%plain=.FALSE.
      our_rev_mode%tape=.FALSE.
      our_rev_mode%adjoint=.TRUE.
    end if
    if (our_rev_mode%adjoint) then
!            print*, " adjoint    ", our_rev_mode
      our_rev_mode%arg_store=.FALSE.
      our_rev_mode%arg_restore=.TRUE.
      our_rev_mode%plain=.FALSE.
      our_rev_mode%tape=.TRUE.
      our_rev_mode%adjoint=.FALSE.
! adjoint
  integer_tape_pointer = integer_tape_pointer-1
  OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
  IF (OpenAD_Symbol_0.ne.0) THEN
    A0%d = A0%d+R%d
    R%d = 0.0d0
  ELSE
    R%d = 0.0d0
  ENDIF

! adjoint end
      our_rev_mode%arg_store=.FALSE.
      our_rev_mode%arg_restore=.TRUE.
      our_rev_mode%plain=.FALSE.
      our_rev_mode%tape=.TRUE.
      our_rev_mode%adjoint=.FALSE.
    end if
  end subroutine OAD_S_MAX_D
END

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

C$OPENAD XXX File_start [head.f]
      Function bar(X)
      use OAD_active
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) X
      INTENT(IN) X
      REAL(w2f__8) bar
C
C     **** Statements ****
C
      bar = MAX(X, 4.0D00)
      RETURN
      END FUNCTION
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE oad_s_bar(X, BAR)
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
      type(active) :: X
      type(active) :: BAR
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1


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
      call cp_store_real_scalar(X%v,theArgFStack,theArgFStackoffset,theA
     +rgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      X%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      OAD_CTMP1 = 4.0D00
      CALL OAD_S_MAX_D(X,OAD_CTMP1,OAD_CTMP0)
      BAR%v = OAD_CTMP0%v

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
      OAD_CTMP1 = 4.0D00
      CALL OAD_S_MAX_D(X,OAD_CTMP1,OAD_CTMP0)
      BAR%v = OAD_CTMP0%v

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
      OAD_CTMP0%d = OAD_CTMP0%d+BAR%d
      BAR%d = 0.0d0
      CALL OAD_S_MAX_D(X,OAD_CTMP1,OAD_CTMP0)

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine oad_s_bar
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
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1
      EXTERNAL oad_s_bar
      REAL(w2f__8) T
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
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
C$OPENAD XXX Template ad_template.f
      CALL oad_s_bar(X(1),OAD_CTMP0)
      Y(1)%v = (OAD_CTMP0%v*2.0D00)
      CALL oad_s_bar(Y(1),OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP1,OpenAD_tyc_0)
      T = OAD_CTMP1

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
      CALL oad_s_bar(X(1),OAD_CTMP0)
      Y(1)%v = (OAD_CTMP0%v*2.0D00)
      CALL oad_s_bar(Y(1),OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP1,OpenAD_tyc_0)
      T = OAD_CTMP1

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
      CALL oad_s_bar(Y(1),OpenAD_tyc_1)
      OAD_CTMP0%d = OAD_CTMP0%d+Y(1)%d*(2.0D00)
      Y(1)%d = 0.0d0
      CALL oad_s_bar(X(1),OAD_CTMP0)

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
