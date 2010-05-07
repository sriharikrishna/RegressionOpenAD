C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      type(active) :: T1
      type(active) :: T2
      type(active) :: T3
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9
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
      T1%v = (X(1)%v/X(2)%v)
      T2%v = (X(3)%v*X(4)%v)
      T3%v = (T1%v*T2%v)
      Y(1)%v = (T1%v*T3%v)
      Y(2)%v = (1.0D00/T3%v)
      Y(3)%v = SIN(T3%v)
      Y(4)%v = (T2%v*T3%v)

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
      T1%v = (X(1)%v/X(2)%v)
      OpenAD_lin_0 = (INT(1_w2f__i8)/X(2)%v)
      OpenAD_lin_1 = (-(X(1)%v/(X(2)%v*X(2)%v)))
      T2%v = (X(3)%v*X(4)%v)
      OpenAD_lin_2 = X(4)%v
      OpenAD_lin_3 = X(3)%v
      T3%v = (T1%v*T2%v)
      OpenAD_lin_4 = T2%v
      OpenAD_lin_5 = T1%v
      Y(1)%v = (T1%v*T3%v)
      OpenAD_lin_6 = T3%v
      OpenAD_lin_7 = T1%v
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_3
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_4
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_6
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_7
      double_tape_pointer = double_tape_pointer+1
      Y(2)%v = (1.0D00/T3%v)
      OpenAD_lin_8 = (-(1.0D00/(T3%v*T3%v)))
      double_tape(double_tape_pointer) = OpenAD_lin_8
      double_tape_pointer = double_tape_pointer+1
      Y(3)%v = SIN(T3%v)
      OpenAD_lin_9 = COS(T3%v)
      double_tape(double_tape_pointer) = OpenAD_lin_9
      double_tape_pointer = double_tape_pointer+1
      Y(4)%v = (T2%v*T3%v)
      OpenAD_lin_10 = T3%v
      OpenAD_lin_11 = T2%v
      double_tape(double_tape_pointer) = OpenAD_lin_10
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_11
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
      OpenAD_Symbol_0 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      T3%d = T3%d+Y(4)%d*(OpenAD_Symbol_0)
      T2%d = T2%d+Y(4)%d*(OpenAD_Symbol_1)
      Y(4)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      T3%d = T3%d+Y(3)%d*(OpenAD_Symbol_2)
      Y(3)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      T3%d = T3%d+Y(2)%d*(OpenAD_Symbol_3)
      Y(2)%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_7 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_8 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_9 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_10 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_11 = double_tape(double_tape_pointer)
      T3%d = T3%d+Y(1)%d*(OpenAD_Symbol_4)
      T1%d = T1%d+Y(1)%d*(OpenAD_Symbol_5)
      Y(1)%d = 0.0d0
      T2%d = T2%d+T3%d*(OpenAD_Symbol_6)
      T1%d = T1%d+T3%d*(OpenAD_Symbol_7)
      T3%d = 0.0d0
      X(4)%d = X(4)%d+T2%d*(OpenAD_Symbol_8)
      X(3)%d = X(3)%d+T2%d*(OpenAD_Symbol_9)
      T2%d = 0.0d0
      X(2)%d = X(2)%d+T1%d*(OpenAD_Symbol_10)
      X(1)%d = X(1)%d+T1%d*(OpenAD_Symbol_11)
      T1%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
