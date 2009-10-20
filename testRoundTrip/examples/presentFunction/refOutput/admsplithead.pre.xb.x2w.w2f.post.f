
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE opt(REQARG, OPTARG, OUTARG)
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      type(active) :: OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      type(active) :: REQARG
      type(active) :: OPTARG
      OPTIONAL OPTARG
      type(active) :: OUTARG
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      IF (PRESENT(OPTARG)) THEN
        IF (OPTARG%v.LE.2.0D00) THEN
          OUTARG%v = (REQARG%v*OPTARG%v*OUTARG%v)
        ENDIF
      ELSE
        OUTARG%v = REQARG%v
      ENDIF
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      IF (PRESENT(OPTARG)) THEN
        IF (OPTARG%v.LE.2.0D00) THEN
          OpenAD_tmp_0 = (OPTARG%v*OUTARG%v)
          OpenAD_Symbol_0 = (REQARG%v*OpenAD_tmp_0)
          OpenAD_lin_0 = OpenAD_tmp_0
          OpenAD_lin_2 = OUTARG%v
          OpenAD_lin_3 = OPTARG%v
          OpenAD_lin_1 = REQARG%v
          OUTARG%v = OpenAD_Symbol_0
          OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
          OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_acc_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_acc_1
          double_tape_pointer = double_tape_pointer+1
          OpenAD_Symbol_3 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          OpenAD_Symbol_4 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_6 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OUTARG%v = REQARG%v
        OpenAD_Symbol_5 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_1.ne.0) THEN
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_2.ne.0) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_13 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_14 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_15 = double_tape(double_tape_pointer)
          OpenAD_prop_0%d = OpenAD_prop_0%d+OUTARG%d*(OpenAD_Symbol_13)
          OPTARG%d = OPTARG%d+OUTARG%d*(OpenAD_Symbol_14)
          REQARG%d = REQARG%d+OUTARG%d*(OpenAD_Symbol_15)
          OUTARG%d = 0.0d0
          OUTARG%d = OUTARG%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
        ENDIF
      ELSE
        REQARG%d = REQARG%d+OUTARG%d
        OUTARG%d = 0.0d0
      ENDIF
          end if
        end subroutine opt
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        SUBROUTINE opt(REQARG, OPTARG, OUTARG)
        use w2f__types
      use OAD_active
        type(active) :: REQARG
        INTENT(in) REQARG
        type(active) :: OPTARG
        OPTIONAL OPTARG
        INTENT(in) OPTARG
        type(active) :: OUTARG
        END SUBROUTINE
      end interface
C
C     **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
      Y(1)%v = (X(1)%v*2.0D00)
      CALL opt(X(2),X(1),Y(1))
          end if
          if (our_rev_mode%tape) then
C taping
      Y(1)%v = (X(1)%v*2.0D00)
      CALL opt(X(2),X(1),Y(1))
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL opt(X(2),X(1),Y(1))
      X(1)%d = X(1)%d+Y(1)%d*(2.0D00)
      Y(1)%d = 0.0d0
          end if
        end subroutine head
