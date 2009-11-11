
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE head(J, X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) J
      type(active) :: X(1:J)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i8) t__1
      INTEGER(w2f__i8) t__2
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
      Y(1)%v = 1.0
      CALL FOO()
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      Y(1)%v = 1.0
      CALL FOO()
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL FOO()
      Y(1)%d = 0.0d0
          end if
C     $OpenAD$ END REPLACEMENT
      CONTAINS
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE FOO()
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

        use w2f__types
        use OAD_active
        IMPLICIT NONE
C
C       **** Global Variables & Derived Type Definitions ****
C
        REAL(w2f__8) OpenAD_Symbol_0
        INTEGER(w2f__i8) OpenAD_Symbol_1
        INTEGER(w2f__i8) OpenAD_Symbol_2
        INTEGER(w2f__i8) OpenAD_Symbol_3
        INTEGER(w2f__i8) OpenAD_Symbol_4
        INTEGER(w2f__i8) OpenAD_Symbol_5
        INTEGER(w2f__i8) OpenAD_Symbol_6
        REAL(w2f__8) OpenAD_lin_0
        REAL(w2f__8) OpenAD_lin_1
        type(active) :: OpenAD_prop_0
C
C       **** Local Variables and Functions ****
C
        INTEGER(w2f__i4) I
        INTEGER(w2f__i8) OpenAD_Symbol_7
        REAL(w2f__8) OpenAD_Symbol_8
        REAL(w2f__8) OpenAD_Symbol_9


          integer iaddr
          external iaddr
C
C       **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
        DO I = 1,J,1
          Y(1)%v = (X(J)%v*Y(1)%v)
        enddo
          end if
          if (our_rev_mode%tape) then
C taping
        OpenAD_Symbol_3 = 0_w2f__i8
        DO I = 1,J,1
          OpenAD_Symbol_0 = (X(J)%v*Y(1)%v)
          OpenAD_lin_0 = Y(1)%v
          OpenAD_lin_1 = X(J)%v
          Y(1)%v = OpenAD_Symbol_0
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = J
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_3 = (INT(OpenAD_Symbol_3)+INT(1_w2f__i8))
        enddo
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
        integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_2 = 1
        do while (INT(OpenAD_Symbol_2).LE.INT(OpenAD_Symbol_1))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_8 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_9 = double_tape(double_tape_pointer)
          OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d*(OpenAD_Symbol_8)
          X(INT(OpenAD_Symbol_7))%d = X(INT(OpenAD_Symbol_7))%d+Y(1)%d*(
     +OpenAD_Symbol_9)
          Y(1)%d = 0.0d0
          Y(1)%d = Y(1)%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
          OpenAD_Symbol_2 = INT(OpenAD_Symbol_2)+1
        enddo
          end if
        end subroutine FOO
        end subroutine head
