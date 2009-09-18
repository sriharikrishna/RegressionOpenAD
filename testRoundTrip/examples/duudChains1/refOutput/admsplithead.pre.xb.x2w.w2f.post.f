
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
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      type(active) :: T(1:2)
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7


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
      DO I = 1,2,1
        T(INT(I))%v = (X(I)%v*2.0D00)
        Y(INT(I))%v = (T(I)%v*4.0D00)
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_2 = 0_w2f__i8
      DO I = 1,2,1
        T(INT(I))%v = (X(I)%v*2.0D00)
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        Y(INT(I))%v = (T(I)%v*4.0D00)
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_2 = (INT(OpenAD_Symbol_2)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
      integer_tape_pointer = integer_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_1 = 1
      do while (INT(OpenAD_Symbol_1).LE.INT(OpenAD_Symbol_0))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_6 = integer_tape(integer_tape_pointer)
        T(INT(OpenAD_Symbol_6))%d = T(INT(OpenAD_Symbol_6))%d+Y(INT(Open
     +AD_Symbol_6))%d*(4.0D00)
        Y(INT(OpenAD_Symbol_6))%d = 0.0d0
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
        X(INT(OpenAD_Symbol_7))%d = X(INT(OpenAD_Symbol_7))%d+T(INT(Open
     +AD_Symbol_7))%d*(2.0D00)
        T(INT(OpenAD_Symbol_7))%d = 0.0d0
        OpenAD_Symbol_1 = INT(OpenAD_Symbol_1)+1
      END DO
          end if 
        end subroutine head
