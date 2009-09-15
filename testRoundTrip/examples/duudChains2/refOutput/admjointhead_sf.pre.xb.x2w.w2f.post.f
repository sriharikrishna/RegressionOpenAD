      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
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
      subroutine head(X,Y)
          use OAD_tape
          use OAD_rev
          use OAD_cp
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      integer(w2f__i8) :: OpenAD_Symbol_0
      integer(w2f__i8) :: OpenAD_Symbol_1
      integer(w2f__i8) :: OpenAD_Symbol_2
      integer(w2f__i8) :: OpenAD_Symbol_3
      integer(w2f__i8) :: OpenAD_Symbol_4
      integer(w2f__i8) :: OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      logical(w2f__i4) :: L
C         ! checkpointing stacks and offsets
          integer :: cp_loop_variable_1,cp_loop_variable_2,cp_loop_varia
     +ble_3,cp_loop_variable_4,cp_loop_variable_5
C         ! floats 'F'
          double precision,dimension(:),allocatable,save :: theArgFStack
          integer,save :: theArgFStackoffset=0,theArgFStackSize=0
C         ! integers 'I'
          integer,dimension(:),allocatable,save :: theArgIStack
          integer,save :: theArgIStackoffset=0,theArgIStackSize=0
C         ! booleans 'B'
          logical,dimension(:),allocatable,save :: theArgBStack
          integer,save :: theArgBStackoffset=0,theArgBStackSize=0
C         ! strings 'S'
          character*(80),dimension(:),allocatable,save :: theArgSStack
          integer,save :: theArgSStackoffset=0,theArgSStackSize=0
           type(modeType) :: our_orig_mode
C external C function used in inlined code
          integer :: iaddr
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
            our_orig_mode = our_rev_mode
            our_rev_mode%arg_store = .false.
C original function
C$OPENAD XXX Template ad_template.f
      L = .true.
      IF (L) THEN
        Y(1)%v = (X(1)%v*4.0D00)
      ELSE
        Y(1)%v = (X(1)%v*2.0D00)
      ENDIF
C original function end
            our_rev_mode = our_orig_mode
          end if
          if (our_rev_mode%tape) then
C            print*, " tape       ", our_rev_mode
            our_rev_mode%arg_store = .true.
            our_rev_mode%arg_restore = .false.
            our_rev_mode%plain = .true.
            our_rev_mode%tape = .false.
            our_rev_mode%adjoint = .false.
C taping
C$OPENAD XXX Template ad_template.f
      L = .true.
      IF (L) THEN
        Y(1)%v = (X(1)%v*4.0D00)
        OpenAD_Symbol_1 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        Y(1)%v = (X(1)%v*2.0D00)
        OpenAD_Symbol_2 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
C taping end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .false.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .false.
            our_rev_mode%adjoint = .true.
          end if
          if (our_rev_mode%adjoint) then
C            print*, " adjoint    ", our_rev_mode
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_0.ne.0) THEN
        X(1)%d = X(1)%d+Y(1)%d*(4.0D00)
        Y(1)%d = 0.0d0
      ELSE
        X(1)%d = X(1)%d+Y(1)%d*(2.0D00)
        Y(1)%d = 0.0d0
      ENDIF
C adjoint end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
          end if
        end subroutine head
