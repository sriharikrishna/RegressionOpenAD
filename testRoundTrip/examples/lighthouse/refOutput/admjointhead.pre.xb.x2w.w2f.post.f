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
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_acc_2
      real(w2f__8) :: OpenAD_acc_3
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_4
      real(w2f__8) :: OpenAD_lin_5
      real(w2f__8) :: OpenAD_lin_6
      real(w2f__8) :: OpenAD_lin_7
      real(w2f__8) :: OpenAD_lin_8
      type(active) :: OpenAD_prop_0
      real(w2f__8) :: OpenAD_tmp_0
      real(w2f__8) :: OpenAD_tmp_1
      real(w2f__8) :: OpenAD_tmp_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: GAMMA
      type(active) :: NU
      type(active) :: OMEGA
      type(active) :: T
      type(active) :: V
      real(w2f__8) :: OpenAD_Symbol_1
      real(w2f__8) :: OpenAD_Symbol_2
      real(w2f__8) :: OpenAD_Symbol_3
      real(w2f__8) :: OpenAD_Symbol_4
      real(w2f__8) :: OpenAD_Symbol_5
      real(w2f__8) :: OpenAD_Symbol_6
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
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
      NU%v = X(1)%v
      GAMMA%v = X(2)%v
      OMEGA%v = X(3)%v
      T%v = X(4)%v
      V%v = TAN(OMEGA%v*T%v)
      Y(1)%v = ((NU%v*V%v)/(GAMMA%v-V%v))
      Y(2)%v = (Y(1)%v*GAMMA%v)
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
      NU%v = X(1)%v
      GAMMA%v = X(2)%v
      OMEGA%v = X(3)%v
      T%v = X(4)%v
      OpenAD_tmp_0 = TAN(OMEGA%v*T%v)
      OpenAD_lin_1 = T%v
      OpenAD_lin_2 = OMEGA%v
      OpenAD_lin_0 = (OpenAD_tmp_0*OpenAD_tmp_0+INT(1_w2f__i8))
      V%v = OpenAD_tmp_0
      OpenAD_tmp_1 = (NU%v*V%v)
      OpenAD_tmp_2 = (GAMMA%v-V%v)
      Y(1)%v = (OpenAD_tmp_1/OpenAD_tmp_2)
      OpenAD_lin_5 = V%v
      OpenAD_lin_6 = NU%v
      OpenAD_lin_3 = (INT(1_w2f__i8)/OpenAD_tmp_2)
      OpenAD_lin_4 = (-(OpenAD_tmp_1/(OpenAD_tmp_2*OpenAD_tmp_2)))
      OpenAD_acc_0 = (OpenAD_lin_6*OpenAD_lin_3+INT((-1_w2f__i8))*OpenAD
     +_lin_4)
      OpenAD_acc_1 = (OpenAD_lin_5*OpenAD_lin_3)
      OpenAD_acc_2 = (OpenAD_lin_1*OpenAD_lin_0*OpenAD_acc_0)
      OpenAD_acc_3 = (OpenAD_lin_2*OpenAD_lin_0*OpenAD_acc_0)
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_4
      double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_0 = (Y(1)%v*GAMMA%v)
      OpenAD_lin_7 = GAMMA%v
      OpenAD_lin_8 = Y(1)%v
      Y(2)%v = OpenAD_Symbol_0
      double_tape(double_tape_pointer) = OpenAD_lin_7
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_8
      double_tape_pointer = double_tape_pointer+1
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
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      GAMMA%d = GAMMA%d+Y(2)%d*(OpenAD_Symbol_1)
      OpenAD_prop_0%d = OpenAD_prop_0%d+Y(2)%d*(OpenAD_Symbol_2)
      Y(2)%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      GAMMA%d = GAMMA%d+Y(1)%d*(OpenAD_Symbol_3)
      X(4)%d = X(4)%d+Y(1)%d*(OpenAD_Symbol_4)
      X(3)%d = X(3)%d+Y(1)%d*(OpenAD_Symbol_5)
      X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_6)
      Y(1)%d = 0.0d0
      X(2)%d = X(2)%d+GAMMA%d
      GAMMA%d = 0.0d0
C adjoint end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
          end if
        end subroutine head
