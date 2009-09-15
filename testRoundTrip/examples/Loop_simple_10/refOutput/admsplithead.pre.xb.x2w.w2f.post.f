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
      subroutine foo(X,Y,A,J)
          use OAD_tape
          use OAD_rev
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
      integer(w2f__i8) :: OpenAD_Symbol_1
      integer(w2f__i8) :: OpenAD_Symbol_2
      integer(w2f__i8) :: OpenAD_Symbol_3
      integer(w2f__i8) :: OpenAD_Symbol_4
      integer(w2f__i8) :: OpenAD_Symbol_5
      integer(w2f__i8) :: OpenAD_Symbol_6
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
      type(active) :: OpenAD_prop_0
      real(w2f__8) :: OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
      integer(w2f__i4) :: A(1:2,1:2)
      integer(w2f__i4) :: J
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: I
      real(w2f__8) :: OpenAD_Symbol_31
      real(w2f__8) :: OpenAD_Symbol_32
C
C     **** Top Level Pragmas ****
C
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
           integer :: iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
          if (our_rev_mode%plain) then
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
          end if
          if (our_rev_mode%tape) then
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
          end if
          if (our_rev_mode%adjoint) then
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
          end if
        end subroutine foo
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
      subroutine head(X,Y)
          use OAD_tape
          use OAD_rev
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      integer(w2f__i8) :: OpenAD_Symbol_10
      integer(w2f__i8) :: OpenAD_Symbol_11
      integer(w2f__i8) :: OpenAD_Symbol_12
      integer(w2f__i8) :: OpenAD_Symbol_13
      integer(w2f__i8) :: OpenAD_Symbol_14
      integer(w2f__i8) :: OpenAD_Symbol_15
      integer(w2f__i8) :: OpenAD_Symbol_16
      integer(w2f__i8) :: OpenAD_Symbol_17
      integer(w2f__i8) :: OpenAD_Symbol_18
      integer(w2f__i8) :: OpenAD_Symbol_19
      integer(w2f__i8) :: OpenAD_Symbol_20
      integer(w2f__i8) :: OpenAD_Symbol_21
      integer(w2f__i8) :: OpenAD_Symbol_22
      integer(w2f__i8) :: OpenAD_Symbol_23
      integer(w2f__i8) :: OpenAD_Symbol_24
      integer(w2f__i8) :: OpenAD_Symbol_25
      integer(w2f__i8) :: OpenAD_Symbol_26
      integer(w2f__i8) :: OpenAD_Symbol_27
      integer(w2f__i8) :: OpenAD_Symbol_28
      integer(w2f__i8) :: OpenAD_Symbol_29
      integer(w2f__i8) :: OpenAD_Symbol_30
      integer(w2f__i8) :: OpenAD_Symbol_7
      integer(w2f__i8) :: OpenAD_Symbol_8
      integer(w2f__i8) :: OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: A(1:2,1:2)
      external foo
      integer(w2f__i4) :: I
      integer(w2f__i4) :: J
      integer(w2f__i4) :: OAD_CTMP0
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
          if (our_rev_mode%plain) then
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
          end if
          if (our_rev_mode%tape) then
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
          end if
          if (our_rev_mode%adjoint) then
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
          end if
        end subroutine head
