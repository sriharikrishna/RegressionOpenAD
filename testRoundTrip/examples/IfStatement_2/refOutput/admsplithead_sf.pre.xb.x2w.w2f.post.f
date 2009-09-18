
      MODULE all_globals_mod
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

      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev

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
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_20
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      Y(1)%v = 2.0
      IF (X(1)%v.GT.0.0D00) THEN
        Y(1)%v = X(1)%v
        IF (X(1)%v.GT.1.0D00) THEN
        ELSE
          IF (X(1)%v.GT.0.0D00) THEN
            Y(1)%v = X(1)%v
          ENDIF
        ENDIF
      ENDIF
      Y(1)%v = (Y(1)%v*Y(1)%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      Y(1)%v = 2.0
      IF (X(1)%v.GT.0.0D00) THEN
        Y(1)%v = X(1)%v
        IF (X(1)%v.GT.1.0D00) THEN
          OpenAD_Symbol_6 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          IF (X(1)%v.GT.0.0D00) THEN
            Y(1)%v = X(1)%v
            OpenAD_Symbol_4 = 1_w2f__i8
            integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
            integer_tape_pointer = integer_tape_pointer+1
          ELSE
            OpenAD_Symbol_5 = 0_w2f__i8
            integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
            integer_tape_pointer = integer_tape_pointer+1
          ENDIF
          OpenAD_Symbol_7 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_9 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_9
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OpenAD_Symbol_8 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
      OpenAD_Symbol_0 = (Y(1)%v*Y(1)%v)
      OpenAD_lin_0 = Y(1)%v
      OpenAD_lin_1 = Y(1)%v
      Y(1)%v = OpenAD_Symbol_0
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_19 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_20 = double_tape(double_tape_pointer)
      OpenAD_prop_2%d = OpenAD_prop_2%d+Y(1)%d*(OpenAD_Symbol_19)
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y(1)%d*(OpenAD_Symbol_20)
      Y(1)%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_2%d
      OpenAD_prop_2%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_1.ne.0) THEN
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_2.ne.0) THEN
          OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d
          Y(1)%d = 0.0d0
          Y(1)%d = Y(1)%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
        ELSE
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
          IF (OpenAD_Symbol_3.ne.0) THEN
            X(1)%d = X(1)%d+Y(1)%d
            Y(1)%d = 0.0d0
          ENDIF
        ENDIF
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
      ENDIF
      Y(1)%d = 0.0d0
          end if 
        end subroutine head
