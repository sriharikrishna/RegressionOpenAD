
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
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
      Y(1)%v = X(1)%v
C$OPENAD XXX Simple loop
      DO I = 3,1,(-1)
        Y(1)%v = (X(1)%v*Y(1)%v)
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      Y(1)%v = X(1)%v
C$OPENAD XXX Simple loop
      DO I = 3,1,(-1)
        OpenAD_Symbol_0 = (X(1)%v*Y(1)%v)
        OpenAD_lin_0 = Y(1)%v
        OpenAD_lin_1 = X(1)%v
        Y(1)%v = OpenAD_Symbol_0
        double_tape(double_tape_pointer) = OpenAD_lin_0
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_lin_1
        double_tape_pointer = double_tape_pointer+1
      END DO
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y(1)%d
      Y(1)%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      I = 3-(-1)*((3-1)/(-1))
      do while (I.LE.3)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_4 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_5 = double_tape(double_tape_pointer)
        OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d*(OpenAD_Symbol_4)
        X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_5)
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prop_0%d
        OpenAD_prop_0%d = 0.0d0
        I = I-(-1)
      END DO
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
          end if
        end subroutine head
