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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      LOGICAL(w2f__i4) L


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
      L = .TRUE.
      IF(L) THEN
        Y(1)%v = (X(1)%v*4.0D00)
      ELSE
        Y(1)%v = (X(1)%v*2.0D00)
      ENDIF
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      L = .TRUE.
      IF(L) THEN
        Y(1)%v = (X(1)%v*4.0D00)
        OpenAD_Symbol_1 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        Y(1)%v = (X(1)%v*2.0D00)
        OpenAD_Symbol_2 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_0.ne.0) THEN
        X(1)%d = X(1)%d+Y(1)%d*(4.0D00)
        Y(1)%d = 0.0d0
      ELSE
        X(1)%d = X(1)%d+Y(1)%d*(2.0D00)
        Y(1)%d = 0.0d0
      ENDIF
          end if
        end subroutine head
