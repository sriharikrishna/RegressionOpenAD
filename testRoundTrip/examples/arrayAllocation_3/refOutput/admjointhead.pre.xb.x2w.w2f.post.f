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

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: A(1:INT(SIZE(X)))
      type(active) :: B(1:INT(SIZE(X)))
      type(active) :: C(1:INT(SIZE(X)))
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_19
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      INTEGER(w2f__i8) OpenAD_Symbol_23
      INTEGER(w2f__i8) OpenAD_Symbol_24
      INTEGER(w2f__i8) OpenAD_Symbol_25
      INTEGER(w2f__i8) OpenAD_Symbol_26
      INTEGER(w2f__i8) OpenAD_Symbol_27
      INTEGER(w2f__i8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29(:)
      ALLOCATABLE OpenAD_Symbol_29
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_32(:)
      ALLOCATABLE OpenAD_Symbol_32
      INTEGER(w2f__i8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_35(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_36(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_37(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_38(1 : 2)
      INTEGER(w2f__i8) OpenAD_Symbol_39
      INTEGER(w2f__i8) OpenAD_Symbol_40
      INTEGER(w2f__i8) OpenAD_Symbol_41
      INTEGER(w2f__i8) OpenAD_Symbol_42
      INTEGER(w2f__i8) OpenAD_Symbol_43
      INTEGER(w2f__i8) OpenAD_Symbol_44
      INTEGER(w2f__i8) OpenAD_Symbol_45
      INTEGER(w2f__i8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_47(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_48(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_49(1 : 2)
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_50
      INTEGER(w2f__i8) OpenAD_Symbol_51
      INTEGER(w2f__i8) OpenAD_Symbol_52
      INTEGER(w2f__i8) OpenAD_Symbol_53
      INTEGER(w2f__i8) OpenAD_Symbol_54
      REAL(w2f__8) OpenAD_Symbol_55(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_56(:)
      ALLOCATABLE OpenAD_Symbol_56
      INTEGER(w2f__i8) OpenAD_Symbol_57
      REAL(w2f__8) OpenAD_Symbol_59(1 : 2)
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_60
      INTEGER(w2f__i8) OpenAD_Symbol_61
      INTEGER(w2f__i8) OpenAD_Symbol_62
      INTEGER(w2f__i8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_64(1 : 2)
      REAL(w2f__8) OpenAD_Symbol_65(1 : 2)
      INTEGER(w2f__i8) OpenAD_Symbol_66
      INTEGER(w2f__i8) OpenAD_Symbol_67
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_acc_0(1 : 2)
      REAL(w2f__8) OpenAD_acc_1(1 : 2)
      REAL(w2f__8) OpenAD_acc_10(:)
      ALLOCATABLE OpenAD_acc_10
      REAL(w2f__8) OpenAD_acc_2(1 : 2)
      REAL(w2f__8) OpenAD_acc_3(1 : 2)
      REAL(w2f__8) OpenAD_acc_4(1 : 2)
      REAL(w2f__8) OpenAD_acc_5(1 : 2)
      REAL(w2f__8) OpenAD_acc_6(1 : 2)
      REAL(w2f__8) OpenAD_acc_7(1 : 2)
      REAL(w2f__8) OpenAD_acc_8(1 : 2)
      REAL(w2f__8) OpenAD_acc_9(1 : 2)
      REAL(w2f__8) OpenAD_aux_0(1 : 2)
      REAL(w2f__8) OpenAD_aux_1(1 : 2)
      REAL(w2f__8) OpenAD_aux_2(1 : 2)
      REAL(w2f__8) OpenAD_aux_3(1 : 2)
      REAL(w2f__8) OpenAD_aux_4(1 : 2)
      REAL(w2f__8) OpenAD_aux_5(:)
      ALLOCATABLE OpenAD_aux_5
      REAL(w2f__8) OpenAD_aux_6(1 : 2)
      REAL(w2f__8) OpenAD_aux_7(:)
      ALLOCATABLE OpenAD_aux_7
      REAL(w2f__8) OpenAD_aux_8(:)
      ALLOCATABLE OpenAD_aux_8
      REAL(w2f__8) OpenAD_lin_0(1 : 2)
      REAL(w2f__8) OpenAD_lin_1(1 : 2)
      REAL(w2f__8) OpenAD_lin_10(:)
      ALLOCATABLE OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_11(1 : 2)
      REAL(w2f__8) OpenAD_lin_12(:)
      ALLOCATABLE OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_13(:)
      ALLOCATABLE OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_14(:)
      ALLOCATABLE OpenAD_lin_14
      REAL(w2f__8) OpenAD_lin_15(1 : 2)
      REAL(w2f__8) OpenAD_lin_16(:)
      ALLOCATABLE OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_17(1 : 2)
      REAL(w2f__8) OpenAD_lin_18(:)
      ALLOCATABLE OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_19(:)
      ALLOCATABLE OpenAD_lin_19
      REAL(w2f__8) OpenAD_lin_2(1 : 2)
      REAL(w2f__8) OpenAD_lin_20(:)
      ALLOCATABLE OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_21(:)
      ALLOCATABLE OpenAD_lin_21
      REAL(w2f__8) OpenAD_lin_3(1 : 2)
      REAL(w2f__8) OpenAD_lin_4(1 : 2)
      REAL(w2f__8) OpenAD_lin_5(:)
      ALLOCATABLE OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6(1 : 2)
      REAL(w2f__8) OpenAD_lin_7(1 : 2)
      REAL(w2f__8) OpenAD_lin_8(:)
      ALLOCATABLE OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_9(1 : 2)
      type(active) :: OpenAD_prp_0(:)
      ALLOCATABLE OpenAD_prp_0
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
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      A(1:INT(SIZE(X)))%v = (TAN(X%v)/SIN(X%v))
      B(1:INT(SIZE(X)))%v = (COS(X%v*8.0D00)+X(1:2)%v*A(1:INT(SIZE(X)))%
     +v)
      B(1:INT(SIZE(X)))%v = (B(1:INT(SIZE(X)))%v*A(1:INT(SIZE(X)))%v*TAN
     +(X%v))
      C(1:INT(SIZE(X)))%v = ((A(1:INT(SIZE(X)))%v**(4.0D00/A(1:INT(SIZE(
     +X)))%v))-SQRT(X%v*A%v+COS(A%v)*TAN(B%v)))
      Y(1:2)%v = (A(1:INT(SIZE(X)))%v+C(1:INT(SIZE(X)))%v*5.0D00)

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
      OpenAD_aux_0 = TAN(X%v)
      OpenAD_aux_1 = SIN(X%v)
      OpenAD_lin_2 = (OpenAD_aux_0*OpenAD_aux_0+INT(1_w2f__i8))
      OpenAD_lin_0 = (INT(1_w2f__i8)/OpenAD_aux_1)
      OpenAD_lin_3 = COS(X%v)
      OpenAD_lin_1 = (-(OpenAD_aux_0/(OpenAD_aux_1*OpenAD_aux_1)))
      A(1:INT(SIZE(X)))%v = (OpenAD_aux_0/OpenAD_aux_1)
      OpenAD_acc_0 = (OpenAD_lin_3*OpenAD_lin_1)
      OpenAD_acc_1 = (OpenAD_lin_2*OpenAD_lin_0)
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_0,1)-1) = OpenAD_acc_0(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_0,1)
      OpenAD_Symbol_0 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_0
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_1,1)-1) = OpenAD_acc_1(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_1,1)
      OpenAD_Symbol_1 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_aux_2 = (X%v*8.0D00)
      OpenAD_lin_4 = (-SIN(OpenAD_aux_2))
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_5,A(1:INT(SIZE(X))))
      OpenAD_lin_5 = A(1:INT(SIZE(X)))%v
      OpenAD_lin_6 = X(1:2)%v
      B(1:INT(SIZE(X)))%v = (COS(OpenAD_aux_2)+X(1:2)%v*A(1:INT(SIZE(X))
     +)%v)
      OpenAD_acc_2 = (8.0D00*OpenAD_lin_4)
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_2,1)-1) = OpenAD_acc_2(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_2,1)
      OpenAD_Symbol_2 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_3 = SIZE(OpenAD_lin_5,1_w2f__i8)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_5,1)-1) = OpenAD_lin_5(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_5,1)
      OpenAD_Symbol_5 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_6,1)-1) = OpenAD_lin_6(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_6,1)
      OpenAD_Symbol_6 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_7 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_aux_4 = TAN(X%v)
      OpenAD_aux_3 = (A(1:INT(SIZE(X)))%v*OpenAD_aux_4)
      OpenAD_lin_7 = OpenAD_aux_3
      OpenAD_lin_9 = OpenAD_aux_4
      OpenAD_lin_11 = (OpenAD_aux_4*OpenAD_aux_4+INT(1_w2f__i8))
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_10,A(1:INT(SIZE(X))))
      OpenAD_lin_10 = A(1:INT(SIZE(X)))%v
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_8,B(1:INT(SIZE(X))))
      OpenAD_lin_8 = B(1:INT(SIZE(X)))%v
      B(1:INT(SIZE(X)))%v = (B(1:INT(SIZE(X)))%v*OpenAD_aux_3)
      OpenAD_acc_3 = (OpenAD_lin_9*OpenAD_lin_8)
      OpenAD_acc_4 = (OpenAD_lin_11*OpenAD_lin_10*OpenAD_lin_8)
      OpenAD_Symbol_8 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_7,1)-1) = OpenAD_lin_7(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_7,1)
      OpenAD_Symbol_9 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_9
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_3,1)-1) = OpenAD_acc_3(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_3,1)
      OpenAD_Symbol_10 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_10
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_11 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_11
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_4,1)-1) = OpenAD_acc_4(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_4,1)
      OpenAD_Symbol_12 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_12
      integer_tape_pointer = integer_tape_pointer+1
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_aux_5,A(1:INT(SIZE(X))))
      OpenAD_aux_5 = (4.0D00/A(1:INT(SIZE(X)))%v)
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_aux_7,A)
      OpenAD_aux_7 = COS(A%v)
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_aux_8,B)
      OpenAD_aux_8 = TAN(B%v)
      OpenAD_aux_6 = SQRT(X%v*A%v+OpenAD_aux_7*OpenAD_aux_8)
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_12,OpenAD_aux_5)
      OpenAD_lin_12 = (OpenAD_aux_5*(A(1:INT(SIZE(X)))%v**(OpenAD_aux_5-
     +INT(1_w2f__i8))))
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_14,A(1:INT(SIZE(X))))
      OpenAD_lin_14 = (-(4.0D00/(A(1:INT(SIZE(X)))%v*A(1:INT(SIZE(X)))%v
     +)))
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_13,OpenAD_aux_5)
      OpenAD_lin_13 = (LOG(A(1:INT(SIZE(X)))%v)*(A(1:INT(SIZE(X)))%v**Op
     +enAD_aux_5))
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_16,A)
      OpenAD_lin_16 = A%v
      OpenAD_lin_17 = X%v
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_20,A)
      OpenAD_lin_20 = (-SIN(A%v))
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_18,OpenAD_aux_8)
      OpenAD_lin_18 = OpenAD_aux_8
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_21,OpenAD_aux_8)
      OpenAD_lin_21 = (OpenAD_aux_8*OpenAD_aux_8+INT(1_w2f__i8))
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_lin_19,OpenAD_aux_7)
      OpenAD_lin_19 = OpenAD_aux_7
      OpenAD_lin_15 = (5.0D-01/OpenAD_aux_6)
      C(1:INT(SIZE(X)))%v = ((A(1:INT(SIZE(X)))%v**OpenAD_aux_5)-OpenAD_
     +aux_6)
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_acc_10,OpenAD_lin_13)
      OpenAD_acc_5 = (OpenAD_lin_15*INT((-1_w2f__i8)))
      OpenAD_acc_6 = (OpenAD_lin_21*OpenAD_lin_19*OpenAD_acc_5)
      OpenAD_acc_7 = (OpenAD_lin_20*OpenAD_lin_18*OpenAD_acc_5)
      OpenAD_acc_8 = (OpenAD_lin_16*OpenAD_acc_5)
      OpenAD_acc_9 = (OpenAD_lin_17*OpenAD_acc_5)
      OpenAD_acc_10 = (OpenAD_lin_14*OpenAD_lin_13)
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_6,1)-1) = OpenAD_acc_6(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_6,1)
      OpenAD_Symbol_13 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_13
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_7,1)-1) = OpenAD_acc_7(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_7,1)
      OpenAD_Symbol_14 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_14
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_8,1)-1) = OpenAD_acc_8(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_8,1)
      OpenAD_Symbol_15 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_15
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_9,1)-1) = OpenAD_acc_9(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_9,1)
      OpenAD_Symbol_16 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_16
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_17 = SIZE(OpenAD_lin_12,1_w2f__i8)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_17
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_li
     +n_12,1)-1) = OpenAD_lin_12(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_lin_12,1)
      OpenAD_Symbol_19 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_19
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_20 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_20
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_21 = SIZE(OpenAD_acc_10,1_w2f__i8)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_21
      integer_tape_pointer = integer_tape_pointer+1
      double_tape(double_tape_pointer:double_tape_pointer+size(OpenAD_ac
     +c_10,1)-1) = OpenAD_acc_10(:)
      double_tape_pointer = double_tape_pointer+size(OpenAD_acc_10,1)
      OpenAD_Symbol_23 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_23
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_24 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_24
      integer_tape_pointer = integer_tape_pointer+1
      Y(1:2)%v = (A(1:INT(SIZE(X)))%v+C(1:INT(SIZE(X)))%v*5.0D00)
      OpenAD_Symbol_25 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_25
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_26 = SIZE(X)
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_26
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
      OpenAD_Symbol_27 = integer_tape(integer_tape_pointer)
      C(1:INT(OpenAD_Symbol_27))%d = C(1:INT(OpenAD_Symbol_27))%d+Y(1:2)
     +%d*(5.0D00)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_28 = integer_tape(integer_tape_pointer)
      A(1:INT(OpenAD_Symbol_28))%d = A(1:INT(OpenAD_Symbol_28))%d+Y(1:2)
     +%d
      Y(1:2)%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_30 = integer_tape(integer_tape_pointer)
C!! requested inline of 'oad_AllocateShape' has no defn
      CALL oad_AllocateShape(OpenAD_Symbol_29,OpenAD_Symbol_30)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_29,1)
      OpenAD_Symbol_29(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_29,1)-1)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_33 = integer_tape(integer_tape_pointer)
C!! requested inline of 'oad_AllocateShape' has no defn
      CALL oad_AllocateShape(OpenAD_Symbol_32,OpenAD_Symbol_33)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_32,1)
      OpenAD_Symbol_32(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_32,1)-1)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_35,1)
      OpenAD_Symbol_35(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_35,1)-1)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_36,1)
      OpenAD_Symbol_36(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_36,1)-1)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_37,1)
      OpenAD_Symbol_37(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_37,1)-1)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_38,1)
      OpenAD_Symbol_38(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_38,1)-1)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_39 = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_40 = integer_tape(integer_tape_pointer)
      A(1:INT(OpenAD_Symbol_40))%d = A(1:INT(OpenAD_Symbol_40))%d+C(1:IN
     +T(OpenAD_Symbol_39))%d*(OpenAD_Symbol_29)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_41 = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_42 = integer_tape(integer_tape_pointer)
      A(1:INT(OpenAD_Symbol_42))%d = A(1:INT(OpenAD_Symbol_42))%d+C(1:IN
     +T(OpenAD_Symbol_41))%d*(OpenAD_Symbol_32)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_43 = integer_tape(integer_tape_pointer)
      A%d = A%d+C(1:INT(OpenAD_Symbol_43))%d*(OpenAD_Symbol_35)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_44 = integer_tape(integer_tape_pointer)
      X%d = X%d+C(1:INT(OpenAD_Symbol_44))%d*(OpenAD_Symbol_36)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_45 = integer_tape(integer_tape_pointer)
      A%d = A%d+C(1:INT(OpenAD_Symbol_45))%d*(OpenAD_Symbol_37)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_46 = integer_tape(integer_tape_pointer)
      B%d = B%d+C(1:INT(OpenAD_Symbol_46))%d*(OpenAD_Symbol_38)
      C(1:INT(OpenAD_Symbol_46))%d = 0.0d0
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_47,1)
      OpenAD_Symbol_47(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_47,1)-1)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_48,1)
      OpenAD_Symbol_48(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_48,1)-1)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_49,1)
      OpenAD_Symbol_49(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_49,1)-1)
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_prp_0,B(1:INT(SIZE(X))))
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_50 = integer_tape(integer_tape_pointer)
      X%d = X%d+B(1:INT(OpenAD_Symbol_50))%d*(OpenAD_Symbol_47)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_51 = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_52 = integer_tape(integer_tape_pointer)
      A(1:INT(OpenAD_Symbol_52))%d = A(1:INT(OpenAD_Symbol_52))%d+B(1:IN
     +T(OpenAD_Symbol_51))%d*(OpenAD_Symbol_48)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_53 = integer_tape(integer_tape_pointer)
      OpenAD_prp_0%d = OpenAD_prp_0%d+B(1:INT(OpenAD_Symbol_53))%d*(Open
     +AD_Symbol_49)
      B(1:INT(OpenAD_Symbol_53))%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_54 = integer_tape(integer_tape_pointer)
      B(1:INT(OpenAD_Symbol_54))%d = B(1:INT(OpenAD_Symbol_54))%d+OpenAD
     +_prp_0%d
      OpenAD_prp_0%d = 0.0d0
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_55,1)
      OpenAD_Symbol_55(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_55,1)-1)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_57 = integer_tape(integer_tape_pointer)
C!! requested inline of 'oad_AllocateShape' has no defn
      CALL oad_AllocateShape(OpenAD_Symbol_56,OpenAD_Symbol_57)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_56,1)
      OpenAD_Symbol_56(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_56,1)-1)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_59,1)
      OpenAD_Symbol_59(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_59,1)-1)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_60 = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_61 = integer_tape(integer_tape_pointer)
      A(1:INT(OpenAD_Symbol_61))%d = A(1:INT(OpenAD_Symbol_61))%d+B(1:IN
     +T(OpenAD_Symbol_60))%d*(OpenAD_Symbol_55)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_62 = integer_tape(integer_tape_pointer)
      X(1:2)%d = X(1:2)%d+B(1:INT(OpenAD_Symbol_62))%d*(OpenAD_Symbol_56
     +)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_63 = integer_tape(integer_tape_pointer)
      X%d = X%d+B(1:INT(OpenAD_Symbol_63))%d*(OpenAD_Symbol_59)
      B(1:INT(OpenAD_Symbol_63))%d = 0.0d0
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_64,1)
      OpenAD_Symbol_64(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_64,1)-1)
      double_tape_pointer = double_tape_pointer-size(OpenAD_Symbol_65,1)
      OpenAD_Symbol_65(:) = double_tape(double_tape_pointer:double_tape_
     +pointer+size(OpenAD_Symbol_65,1)-1)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_66 = integer_tape(integer_tape_pointer)
      X%d = X%d+A(1:INT(OpenAD_Symbol_66))%d*(OpenAD_Symbol_64)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_67 = integer_tape(integer_tape_pointer)
      X%d = X%d+A(1:INT(OpenAD_Symbol_67))%d*(OpenAD_Symbol_65)
      A(1:INT(OpenAD_Symbol_67))%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
