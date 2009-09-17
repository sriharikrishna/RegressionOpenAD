      module all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
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
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
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
      I = 1
      do while (I.LT.3)
        IF (I.LT.2) THEN
          Y(2)%v = SIN(X(1)%v)
        ELSE
          Y(1)%v = COS(X(2)%v)
        ENDIF
        I = (I+1)
      END DO
      Y(2)%v = (Y(1)%v*Y(2)%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      I = 1
      OpenAD_Symbol_6 = 0_w2f__i8
      do while (I.LT.3)
        IF (I.LT.2) THEN
          OpenAD_Symbol_0 = SIN(X(1)%v)
          OpenAD_lin_0 = COS(X(1)%v)
          Y(2)%v = OpenAD_Symbol_0
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          OpenAD_Symbol_7 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          OpenAD_Symbol_1 = COS(X(2)%v)
          OpenAD_lin_1 = (-SIN(X(2)%v))
          Y(1)%v = OpenAD_Symbol_1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
          OpenAD_Symbol_8 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        I = (I+1)
        OpenAD_Symbol_6 = (INT(OpenAD_Symbol_6)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_2 = (Y(1)%v*Y(2)%v)
      OpenAD_lin_2 = Y(2)%v
      OpenAD_lin_3 = Y(1)%v
      Y(2)%v = OpenAD_Symbol_2
      double_tape(double_tape_pointer) = OpenAD_lin_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_3
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_17 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_18 = double_tape(double_tape_pointer)
      OpenAD_prop_3%d = OpenAD_prop_3%d+Y(2)%d*(OpenAD_Symbol_17)
      OpenAD_prop_2%d = OpenAD_prop_2%d+Y(2)%d*(OpenAD_Symbol_18)
      Y(2)%d = 0.0d0
      Y(2)%d = Y(2)%d+OpenAD_prop_3%d
      OpenAD_prop_3%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_2%d
      OpenAD_prop_2%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_4 = 1
      do while (INT(OpenAD_Symbol_4).LE.INT(OpenAD_Symbol_3))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_5 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_5.ne.0) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_15 = double_tape(double_tape_pointer)
          OpenAD_prop_0%d = OpenAD_prop_0%d+Y(2)%d*(OpenAD_Symbol_15)
          Y(2)%d = 0.0d0
          X(1)%d = X(1)%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
        ELSE
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_16 = double_tape(double_tape_pointer)
          OpenAD_prop_1%d = OpenAD_prop_1%d+Y(1)%d*(OpenAD_Symbol_16)
          Y(1)%d = 0.0d0
          X(2)%d = X(2)%d+OpenAD_prop_1%d
          OpenAD_prop_1%d = 0.0d0
        ENDIF
        OpenAD_Symbol_4 = INT(OpenAD_Symbol_4)+1
      END DO
          end if
        end subroutine head
