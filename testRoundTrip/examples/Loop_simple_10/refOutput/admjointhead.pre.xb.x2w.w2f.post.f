
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo(X, Y, A, J)
          use OAD_tape
          use OAD_rev
          use OAD_cp

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      type(active) :: OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
      INTEGER(w2f__i4) A(1 : 2, 1 : 2)
      INTEGER(w2f__i4) J
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
C
C     **** Top Level Pragmas ****
C
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
      call cp_store_int_scalar(J,theArgIStack,theArgIStackoffset,theArgI
     +StackSize)
      call cp_store_real_vector(X,size(X),theArgFStack,theArgFStackoffse
     +t,theArgFStackSize)
      call cp_store_real_vector(Y,size(Y),theArgFStack,theArgFStackoffse
     +t,theArgFStackSize)
      do cp_loop_variable_2 = lbound(A,2),ubound(A,2)
      call cp_store_int_vector(A(:,cp_loop_variable_2),size(A(:,cp_loop_
     +variable_2)),theArgIStack,theArgIStackoffset,theArgIStackSize)
      end do
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      do cp_loop_variable_2 = ubound(A,2),lbound(A,2),-1
      do cp_loop_variable_1 = ubound(A,1),lbound(A,1),-1
      A(cp_loop_variable_1,cp_loop_variable_2) = theArgIStack(theArgISta
     +ckoffset)
      theArgIStackoffset = theArgIStackoffset-1
      end do
      end do
      do cp_loop_variable_1 = ubound(Y,1),lbound(Y,1),-1
      Y(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
C          write(*,'(A,EN26.16E3)') "restore(v)  ", 
C     +Y(cp_loop_variable_1)%v
      end do
      do cp_loop_variable_1 = ubound(X,1),lbound(X,1),-1
      X(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
      theArgFStackoffset = theArgFStackoffset-1
C          write(*,'(A,EN26.16E3)') "restore(v)  ", 
C     +X(cp_loop_variable_1)%v
      end do
      J = theArgIStack(theArgIStackoffset)
C          write(*,'(A,I5,I5)') "restore(s)  ", J, theArgIStackOffset
      theArgIStackoffset = theArgIStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      Y(1)%v = X(1)%v
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        IF (A(I,J).ne.0) THEN
          Y(1)%v = (A(I,J)*X(1)%v*Y(1)%v)
        ELSE
          Y(1)%v = 0.0
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
      Y(1)%v = X(1)%v
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        IF (A(I,J).ne.0) THEN
          OpenAD_tmp_0 = (X(1)%v*Y(1)%v)
          OpenAD_Symbol_0 = (A(I,J)*OpenAD_tmp_0)
          OpenAD_lin_2 = Y(1)%v
          OpenAD_lin_3 = X(1)%v
          OpenAD_lin_1 = A(I,J)
          Y(1)%v = OpenAD_Symbol_0
          OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
          OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
          double_tape(double_tape_pointer) = OpenAD_acc_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_acc_1
          double_tape_pointer = double_tape_pointer+1
        ELSE
          Y(1)%v = 0.0
        ENDIF
        integer_tape(integer_tape_pointer) = A(I,J)
        integer_tape_pointer = integer_tape_pointer+1
      END DO
      integer_tape(integer_tape_pointer) = J
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
      J = integer_tape(integer_tape_pointer)
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        integer_tape_pointer = integer_tape_pointer-1
        A(I,J) = integer_tape(integer_tape_pointer)
        IF (A(I,J).ne.0) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_31 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_32 = double_tape(double_tape_pointer)
          OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d*(OpenAD_Symbol_31)
          X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_32)
          Y(1)%d = 0.0d0
          Y(1)%d = Y(1)%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
        ELSE
          Y(1)%d = 0.0d0
        ENDIF
        I = I-1
      END DO
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0

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
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      INTEGER(w2f__i8) OpenAD_Symbol_22
      INTEGER(w2f__i8) OpenAD_Symbol_23
      INTEGER(w2f__i8) OpenAD_Symbol_24
      INTEGER(w2f__i8) OpenAD_Symbol_25
      INTEGER(w2f__i8) OpenAD_Symbol_26
      INTEGER(w2f__i8) OpenAD_Symbol_27
      INTEGER(w2f__i8) OpenAD_Symbol_28
      INTEGER(w2f__i8) OpenAD_Symbol_29
      INTEGER(w2f__i8) OpenAD_Symbol_30
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) A(1 : 2, 1 : 2)
      EXTERNAL foo
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) OAD_CTMP0


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
      DO I = 1,2,1
        DO J = 1,2,1
          A(I,J) = (I+J)
        END DO
      END DO
      OAD_CTMP0 = 2
      CALL foo(X,Y,A,OAD_CTMP0)
      DO I = 1,2,1
        DO J = 1,2,1
          A(I,J) = 0
        END DO
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
      OpenAD_Symbol_15 = 0_w2f__i8
      DO I = 1,2,1
        OpenAD_Symbol_16 = 0_w2f__i8
        DO J = 1,2,1
          A(I,J) = (I+J)
          OpenAD_Symbol_16 = (INT(OpenAD_Symbol_16)+INT(1_w2f__i8))
        END DO
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_16
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_15 = (INT(OpenAD_Symbol_15)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_15
      integer_tape_pointer = integer_tape_pointer+1
      OAD_CTMP0 = 2
      CALL foo(X,Y,A,OAD_CTMP0)
      OpenAD_Symbol_17 = 0_w2f__i8
      DO I = 1,2,1
        OpenAD_Symbol_18 = 0_w2f__i8
        DO J = 1,2,1
          A(I,J) = 0
          OpenAD_Symbol_18 = (INT(OpenAD_Symbol_18)+INT(1_w2f__i8))
        END DO
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_18
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_17 = (INT(OpenAD_Symbol_17)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_17
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
      OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_8 = 1
      do while (INT(OpenAD_Symbol_8).LE.INT(OpenAD_Symbol_7))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_9 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_10 = 1
        do while (INT(OpenAD_Symbol_10).LE.INT(OpenAD_Symbol_9))
          OpenAD_Symbol_10 = INT(OpenAD_Symbol_10)+1
        END DO
        OpenAD_Symbol_8 = INT(OpenAD_Symbol_8)+1
      END DO
      CALL foo(X,Y,A,OAD_CTMP0)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_11 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_12 = 1
      do while (INT(OpenAD_Symbol_12).LE.INT(OpenAD_Symbol_11))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_13 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_14 = 1
        do while (INT(OpenAD_Symbol_14).LE.INT(OpenAD_Symbol_13))
          OpenAD_Symbol_14 = INT(OpenAD_Symbol_14)+1
        END DO
        OpenAD_Symbol_12 = INT(OpenAD_Symbol_12)+1
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if
        end subroutine head
