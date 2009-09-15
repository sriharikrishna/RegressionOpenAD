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
      subroutine foo(X,Y)
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
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      real(w2f__8) :: OpenAD_Symbol_11
      real(w2f__8) :: OpenAD_Symbol_12
C
C     **** Statements ****
C
           integer :: iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f
          if (our_rev_mode%plain) then
C original function
      Y%v = (X(1)%v*X(2)%v)
          end if
          if (our_rev_mode%tape) then
C taping
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_lin_0 = X(2)%v
      OpenAD_lin_1 = X(1)%v
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_11 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_12 = double_tape(double_tape_pointer)
      X(2)%d = X(2)%d+Y%d*(OpenAD_Symbol_11)
      X(1)%d = X(1)%d+Y%d*(OpenAD_Symbol_12)
      Y%d = 0.0d0
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
      type(active) :: OpenAD_Symbol_0(1:2,1:2)
      type(active) :: OpenAD_Symbol_1
      integer(w2f__i8) :: OpenAD_Symbol_10
      type(active) :: OpenAD_Symbol_15(1:2,1:2)
      type(active) :: OpenAD_Symbol_16
      type(active) :: OpenAD_Symbol_17(1:2,1:2)
      type(active) :: OpenAD_Symbol_18
      integer(w2f__i8) :: OpenAD_Symbol_2
      integer(w2f__i8) :: OpenAD_Symbol_3
      integer(w2f__i8) :: OpenAD_Symbol_4
      integer(w2f__i8) :: OpenAD_Symbol_5
      integer(w2f__i8) :: OpenAD_Symbol_6
      integer(w2f__i8) :: OpenAD_Symbol_7
      integer(w2f__i8) :: OpenAD_Symbol_8
      integer(w2f__i8) :: OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      real(w2f__8) :: APX(1:2,1:2)
      type(active) :: AX(1:2,1:2)
      integer(w2f__i4) :: I
      integer(w2f__i4) :: J
      real(w2f__8) :: PY
      integer(w2f__i8) :: OpenAD_Symbol_13
      integer(w2f__i8) :: OpenAD_Symbol_14
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        subroutine foo(X,Y)
        use w2f__types
      use OAD_active
        type(active) :: X(1:2)
        type(active) :: Y
        END SUBROUTINE
      end interface
           integer :: iaddr
          external iaddr
C
C     **** Statements ****
C
          if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        DO J = 1,2,1
          AX(INT(I),INT(J))%v = X(I)%v
          APX(INT(I),INT(J)) = (I*DBLE(4.0))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        CALL foo(AX(I,1:2),Y(1))
C!! requested inline of 'convert_p2a_matrix' has no defn
        CALL convert_p2a_matrix(OpenAD_Symbol_0,APX)
C!! requested inline of 'convert_p2a_scalar' has no defn
        CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
        CALL foo(OpenAD_Symbol_0(I,1:2),OpenAD_Symbol_1)
C!! requested inline of 'convert_a2p_matrix' has no defn
        CALL convert_a2p_matrix(APX,OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
        CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        DO J = 1,2,1
          AX(INT(I),INT(J))%v = X(I)%v
          APX(INT(I),INT(J)) = (I*DBLE(4.0))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        CALL foo(AX(I,1:2),Y(1))
C!! requested inline of 'convert_p2a_matrix' has no defn
        CALL convert_p2a_matrix(OpenAD_Symbol_0,APX)
C!! requested inline of 'convert_p2a_scalar' has no defn
        CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
        CALL foo(OpenAD_Symbol_0(I,1:2),OpenAD_Symbol_1)
C!! requested inline of 'convert_a2p_matrix' has no defn
        CALL convert_a2p_matrix(APX,OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
        CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)
      END DO
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        CALL foo(OpenAD_Symbol_17(I,1:2),OpenAD_Symbol_18)
        CALL foo(AX(I,1:2),Y(1))
        I = I-1
      END DO
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        J = 1+1*((2-1)/1)
        do while (J.GE.1)
          X(I)%d = X(I)%d+AX(I,J)%d
          AX(I,J)%d = 0.0d0
          J = J-1
        END DO
        I = I-1
      END DO
          end if
        end subroutine head
