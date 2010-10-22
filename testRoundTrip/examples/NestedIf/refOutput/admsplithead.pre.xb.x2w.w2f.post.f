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
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prp_0


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

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      IF (X(1)%v.LE.X(2)%v) THEN
        IF (X(1)%v.eq.X(2)%v) THEN
          Y(1)%v = (X(1)%v*X(1)%v)
        ELSE
          Y(1)%v = (X(2)%v-X(1)%v)
        ENDIF
      ELSE
        Y(1)%v = (X(1)%v-X(2)%v)
      ENDIF
      Y(2)%v = Y(1)%v
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      IF (X(1)%v.LE.X(2)%v) THEN
        IF (X(1)%v.eq.X(2)%v) THEN
          Y(1)%v = (X(1)%v*X(1)%v)
          OpenAD_lin_0 = X(1)%v
          OpenAD_lin_1 = X(1)%v
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
          OpenAD_Symbol_2 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          Y(1)%v = (X(2)%v-X(1)%v)
          OpenAD_Symbol_3 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_5 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        Y(1)%v = (X(1)%v-X(2)%v)
        OpenAD_Symbol_4 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
      Y(2)%v = Y(1)%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OpenAD_prp_0%d = OpenAD_prp_0%d+Y(2)%d
      Y(2)%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prp_0%d
      OpenAD_prp_0%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_0.ne.0) THEN
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_1.ne.0) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_12 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_13 = double_tape(double_tape_pointer)
          X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_12)
          X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_13)
          Y(1)%d = 0.0d0
        ELSE
          X(1)%d = X(1)%d-Y(1)%d
          X(2)%d = X(2)%d+Y(1)%d
          Y(1)%d = 0.0d0
        ENDIF
      ELSE
        X(2)%d = X(2)%d-Y(1)%d
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
      ENDIF
          end if
        end subroutine head
