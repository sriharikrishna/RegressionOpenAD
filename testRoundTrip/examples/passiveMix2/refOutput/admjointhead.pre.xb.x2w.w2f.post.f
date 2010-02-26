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
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_11
      type(active) :: OpenAD_Symbol_12
      type(active) :: OpenAD_Symbol_13
      type(active) :: OpenAD_Symbol_17
      type(active) :: OpenAD_Symbol_19
      type(active) :: OpenAD_Symbol_2
      type(active) :: OpenAD_Symbol_3
      type(active) :: OpenAD_Symbol_4
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      type(active) :: OAD_CTMP1
      REAL(w2f__8) OAD_CTMP2
      REAL(w2f__8) OAD_CTMP3
      REAL(w2f__8) T
      type(active) :: T1
      REAL(w2f__8) T2


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
      T = 2.0D00
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_0,T)
      CALL OAD_S_MIN_D(OpenAD_Symbol_0,X(1),OAD_CTMP0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(T,OpenAD_Symbol_0)
      T1%v = OAD_CTMP0%v
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_1,T)
      CALL OAD_S_MIN_D(T1,OpenAD_Symbol_1,OAD_CTMP1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(T,OpenAD_Symbol_1)
      Y(1)%v = OAD_CTMP1%v
      OAD_CTMP3 = 2.5D00
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_2,T)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_3,OAD_CTMP3)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_4,OAD_CTMP2)
      CALL OAD_S_MIN_D(OpenAD_Symbol_2,OpenAD_Symbol_3,OpenAD_Symbol_4)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(T,OpenAD_Symbol_2)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP3,OpenAD_Symbol_3)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP2,OpenAD_Symbol_4)
      T2 = OAD_CTMP2

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
      T = 2.0D00
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_0,T)
      CALL OAD_S_MIN_D(OpenAD_Symbol_0,X(1),OAD_CTMP0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(T,OpenAD_Symbol_0)
      T1%v = OAD_CTMP0%v
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_1,T)
      CALL OAD_S_MIN_D(T1,OpenAD_Symbol_1,OAD_CTMP1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(T,OpenAD_Symbol_1)
      Y(1)%v = OAD_CTMP1%v
      OAD_CTMP3 = 2.5D00
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_2,T)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_3,OAD_CTMP3)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_4,OAD_CTMP2)
      CALL OAD_S_MIN_D(OpenAD_Symbol_2,OpenAD_Symbol_3,OpenAD_Symbol_4)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(T,OpenAD_Symbol_2)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP3,OpenAD_Symbol_3)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP2,OpenAD_Symbol_4)
      T2 = OAD_CTMP2

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
      CALL OAD_S_MIN_D(OpenAD_Symbol_11,OpenAD_Symbol_12,OpenAD_Symbol_1
     +3)
      OAD_CTMP1%d = OAD_CTMP1%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL OAD_S_MIN_D(T1,OpenAD_Symbol_17,OAD_CTMP1)
      OAD_CTMP0%d = OAD_CTMP0%d+T1%d
      T1%d = 0.0d0
      CALL OAD_S_MIN_D(OpenAD_Symbol_19,X(1),OAD_CTMP0)

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
