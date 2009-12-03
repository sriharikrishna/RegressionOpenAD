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

      use w2f__types
      use OAD_active
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
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
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      type(active) :: S
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12


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
      I = 1
      Y(1)%v = 0.0
      Y(2)%v = 0.0
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        S%v = X(I)%v
        IF (S%v.LT.0.0D00) THEN
          X(INT(I))%v = (X(I)%v*2.0D00)
        ELSE
          S%v = 0.0D00
        ENDIF
        Y(INT(I))%v = (X(I)%v+S%v)
      enddo
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      I = 1
      Y(1)%v = 0.0
      Y(2)%v = 0.0
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        S%v = X(I)%v
        IF (S%v.LT.0.0D00) THEN
          OpenAD_Symbol_0 = (X(I)%v*2.0D00)
          X(INT(I))%v = OpenAD_Symbol_0
          OpenAD_Symbol_2 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          S%v = 0.0D00
          OpenAD_Symbol_3 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        Y(INT(I))%v = (X(I)%v+S%v)
      enddo
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        S%d = S%d+Y(I)%d
        X(I)%d = X(I)%d+Y(I)%d
        Y(I)%d = 0.0d0
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_1.ne.0) THEN
          OpenAD_prop_0%d = OpenAD_prop_0%d+X(I)%d*(2.0D00)
          X(I)%d = 0.0d0
          X(I)%d = X(I)%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
        ELSE
          S%d = 0.0d0
        ENDIF
        X(I)%d = X(I)%d+S%d
        S%d = 0.0d0
        I = I-1
      enddo
      Y(2)%d = 0.0d0
      Y(1)%d = 0.0d0
          end if
        end subroutine head
