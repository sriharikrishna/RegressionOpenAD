
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
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)


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
        Y(1)%v = (X(2)%v-X(1)%v)
      ELSE
        Y(1)%v = (X(1)%v-X(2)%v)
      ENDIF
      IF (Y(1)%v.eq.0.0D00) THEN
        Y(2)%v = X(1)%v
      ELSE
        Y(2)%v = Y(1)%v
      ENDIF
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      IF (X(1)%v.LE.X(2)%v) THEN
        Y(1)%v = (X(2)%v-X(1)%v)
        OpenAD_Symbol_2 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        Y(1)%v = (X(1)%v-X(2)%v)
        OpenAD_Symbol_3 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
      IF (Y(1)%v.eq.0.0D00) THEN
        Y(2)%v = X(1)%v
        OpenAD_Symbol_4 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        Y(2)%v = Y(1)%v
        OpenAD_Symbol_5 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_0.ne.0) THEN
        X(1)%d = X(1)%d+Y(2)%d
        Y(2)%d = 0.0d0
      ELSE
        OpenAD_prop_0%d = OpenAD_prop_0%d+Y(2)%d
        Y(2)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prop_0%d
        OpenAD_prop_0%d = 0.0d0
      ENDIF
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_1.ne.0) THEN
        X(1)%d = X(1)%d-Y(1)%d
        X(2)%d = X(2)%d+Y(1)%d
        Y(1)%d = 0.0d0
      ELSE
        X(2)%d = X(2)%d-Y(1)%d
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
      ENDIF
          end if
        end subroutine head
