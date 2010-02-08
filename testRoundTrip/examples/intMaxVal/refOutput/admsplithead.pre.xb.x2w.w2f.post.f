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
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I(1 : 3)
      INTEGER(w2f__i4) MAXI
      type(active) :: T
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8


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
      I(1) = 1
      I(2) = 0
      I(3) = (-1)
      MAXI = MAXVAL(I)
      T%v = (X(MAXI)%v*X(2)%v)
      Y(INT(MAXI))%v = SIN(T%v)
      Y(2)%v = COS(T%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      I(1) = 1
      I(2) = 0
      I(3) = (-1)
      MAXI = MAXVAL(I)
      T%v = (X(MAXI)%v*X(2)%v)
      OpenAD_Symbol_0 = X(2)%v
      OpenAD_Symbol_1 = X(MAXI)%v
      Y(INT(MAXI))%v = SIN(T%v)
      OpenAD_Symbol_2 = COS(T%v)
      double_tape(double_tape_pointer) = OpenAD_Symbol_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_2
      double_tape_pointer = double_tape_pointer+1
      integer_tape(integer_tape_pointer) = MAXI
      integer_tape_pointer = integer_tape_pointer+1
      Y(2)%v = COS(T%v)
      OpenAD_Symbol_3 = (-SIN(T%v))
      double_tape(double_tape_pointer) = OpenAD_Symbol_3
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      T%d = T%d+Y(2)%d*(OpenAD_Symbol_4)
      Y(2)%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_5 = integer_tape(integer_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_7 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_8 = double_tape(double_tape_pointer)
      T%d = T%d+Y(INT(OpenAD_Symbol_5))%d*(OpenAD_Symbol_6)
      Y(INT(OpenAD_Symbol_5))%d = 0.0d0
      X(2)%d = X(2)%d+T%d*(OpenAD_Symbol_7)
      X(INT(OpenAD_Symbol_5))%d = X(INT(OpenAD_Symbol_5))%d+T%d*(OpenAD_
     +Symbol_8)
      T%d = 0.0d0
          end if
        end subroutine head
