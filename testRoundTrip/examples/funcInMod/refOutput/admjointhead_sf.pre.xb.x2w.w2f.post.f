
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

C$OPENAD XXX File_start [head.f]
      MODULE m
      use OAD_active
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: MX
C
C     **** Top Level Pragmas ****
C
      interface FOO
        module procedure FOO_II
        module procedure FOO_I
      end interface
      interface OAD_S_FOO
        module procedure OAD_S_FOO_II
        module procedure OAD_S_FOO_I
      end interface

C
C     **** Statements ****
C
      CONTAINS

        Function FOO_I(X)
        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        REAL(w2f__8) X
        REAL(w2f__8) FOO_I
C
C       **** Statements ****
C
        MX%v = (X+MX%v)
        FOO_I = MX%v
        RETURN
        END FUNCTION

        Function FOO_II(X)
        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        INTEGER(w2f__i4) X
        INTEGER(w2f__i4) FOO_II
C
C       **** Statements ****
C
        FOO_II = X + 1
        RETURN
        END FUNCTION
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE OAD_S_FOO_I(X, FOO_I)
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
        type(active) :: X
        type(active) :: FOO_I
C
C       **** Local Variables and Functions ****
C
        type(active) :: OpenAD_prp_0
        type(active) :: OpenAD_prp_1
C
C       **** Statements ****
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
        call cp_store_real_scalar(MX%v,theArgFStack,theArgFStackoffset,t
     +heArgFStackSize)
        call cp_store_real_scalar(X%v,theArgFStack,theArgFStackoffset,th
     +eArgFStackSize)
        call cp_store_real_scalar(FOO_I%v,theArgFStack,theArgFStackoffse
     +t,theArgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
        FOO_I%v = theArgFStack(theArgFStackoffset)
C        write(*,'(A,EN26.16E3)') "restore(s)  ", FOO_I%v
        theArgFStackoffset = theArgFStackoffset-1
        X%v = theArgFStack(theArgFStackoffset)
C        write(*,'(A,EN26.16E3)') "restore(s)  ", X%v
        theArgFStackoffset = theArgFStackoffset-1
        MX%v = theArgFStack(theArgFStackoffset)
C        write(*,'(A,EN26.16E3)') "restore(s)  ", MX%v
        theArgFStackoffset = theArgFStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
        MX%v = (X%v+MX%v)
        FOO_I%v = MX%v

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
        MX%v = (X%v+MX%v)
        FOO_I%v = MX%v

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
        MX%d = MX%d+FOO_I%d
        FOO_I%d = 0.0d0
        OpenAD_prp_1%d = OpenAD_prp_1%d+MX%d
        OpenAD_prp_0%d = OpenAD_prp_0%d+MX%d
        MX%d = 0.0d0
        MX%d = MX%d+OpenAD_prp_1%d
        OpenAD_prp_1%d = 0.0d0
        X%d = X%d+OpenAD_prp_0%d
        OpenAD_prp_0%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine OAD_S_FOO_I
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE OAD_S_FOO_II(X, FOO_II)
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
        INTEGER(w2f__i4) X
        INTEGER(w2f__i4) FOO_II


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
        call cp_store_int_scalar(X,theArgIStack,theArgIStackoffset,theAr
     +gIStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
        X = theArgIStack(theArgIStackoffset)
C        write(*,'(A,I5,I5)') "restore(s)  ", X, theArgIStackOffset
        theArgIStackoffset = theArgIStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
        FOO_II = (X + 1)

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
        FOO_II = (X + 1)

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
        end subroutine OAD_S_FOO_II
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
      use m
      use oad_intrinsics
      use m
      use oad_intrinsics
      use m
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      type(active) :: OAD_CTMP0
      type(active) :: OAD_CTMP1
      INTEGER(w2f__i4) OAD_CTMP2
      INTEGER(w2f__i4) OAD_CTMP3
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
      call cp_store_real_scalar(MX%v,theArgFStack,theArgFStackoffset,the
     +ArgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      MX%v = theArgFStack(theArgFStackoffset)
C        write(*,'(A,EN26.16E3)') "restore(s)  ", MX%v
      theArgFStackoffset = theArgFStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      MX%v = X(1)%v
      CALL OAD_S_FOO_I(X(1),OAD_CTMP1)
      CALL OAD_S_FOO_I(OAD_CTMP1,OAD_CTMP0)
      Y(1)%v = OAD_CTMP0%v
      OAD_CTMP3 = 2
      CALL OAD_S_FOO_II(OAD_CTMP3,OAD_CTMP2)
      I = OAD_CTMP2

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
      MX%v = X(1)%v
      CALL OAD_S_FOO_I(X(1),OAD_CTMP1)
      CALL OAD_S_FOO_I(OAD_CTMP1,OAD_CTMP0)
      Y(1)%v = OAD_CTMP0%v
      OAD_CTMP3 = 2
      CALL OAD_S_FOO_II(OAD_CTMP3,OAD_CTMP2)
      I = OAD_CTMP2

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
      CALL OAD_S_FOO_II(OAD_CTMP3,OAD_CTMP2)
      OAD_CTMP0%d = OAD_CTMP0%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL OAD_S_FOO_I(OAD_CTMP1,OAD_CTMP0)
      CALL OAD_S_FOO_I(X(1),OAD_CTMP1)
      X(1)%d = X(1)%d+MX%d
      MX%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
