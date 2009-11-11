
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) K
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_9


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
      IF (X(1)%v.eq.0.0D00) THEN
        K = 1
      ELSE
        K = 2
      ENDIF
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        Y(INT(I))%v = X(K)%v
      enddo
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      IF (X(1)%v.eq.0.0D00) THEN
        K = 1
        OpenAD_Symbol_1 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        K = 2
        OpenAD_Symbol_2 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        Y(INT(I))%v = X(K)%v
      enddo
      integer_tape(integer_tape_pointer) = K
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      K = integer_tape(integer_tape_pointer)
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        X(K)%d = X(K)%d+Y(I)%d
        Y(I)%d = 0.0d0
        I = I-1
      enddo
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_0.ne.0) THEN
      ENDIF
          end if
        end subroutine head
