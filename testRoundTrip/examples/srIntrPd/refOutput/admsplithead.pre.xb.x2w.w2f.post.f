
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
      REAL(w2f__8) OpenAD_lin_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1
      EXTERNAL oad_s_max_d
      EXTERNAL oad_s_min_d
      REAL(w2f__8) P1
      REAL(w2f__8) P2
      REAL(w2f__8) OpenAD_Symbol_12


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
      P1 = 2.39999999999999991118D00
      P2 = (-3.0D+01)
      CALL oad_s_min_d(X(1),X(2),OAD_CTMP0)
      CALL oad_s_max_d(P1,P2,OAD_CTMP1)
      Y(1)%v = (OAD_CTMP0%v*OAD_CTMP1)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      P1 = 2.39999999999999991118D00
      P2 = (-3.0D+01)
      CALL oad_s_min_d(X(1),X(2),OAD_CTMP0)
      CALL oad_s_max_d(P1,P2,OAD_CTMP1)
      Y(1)%v = (OAD_CTMP0%v*OAD_CTMP1)
      OpenAD_lin_0 = OAD_CTMP1
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_12 = double_tape(double_tape_pointer)
      OAD_CTMP0%d = OAD_CTMP0%d+Y(1)%d*(OpenAD_Symbol_12)
      Y(1)%d = 0.0d0
      CALL oad_s_max_d(P1,P2,OAD_CTMP1)
      CALL oad_s_min_d(X(1),X(2),OAD_CTMP0)
          end if
        end subroutine head
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE oad_s_min_d(A, B, R)
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
      type(active) :: A
      type(active) :: B
      type(active) :: R


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
      IF (A%v.LT.B%v) THEN
        R%v = A%v
      ELSE
        R%v = B%v
      ENDIF
          end if
          if (our_rev_mode%tape) then
C taping
      IF (A%v.LT.B%v) THEN
        R%v = A%v
        OpenAD_Symbol_1 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        R%v = B%v
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
        A%d = A%d+R%d
        R%d = 0.0d0
      ELSE
        B%d = B%d+R%d
        R%d = 0.0d0
      ENDIF
          end if
        end subroutine oad_s_min_d
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE oad_s_max_d(A, B, R)
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
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) A
      INTENT(IN) A
      REAL(w2f__8) B
      INTENT(IN) B
      REAL(w2f__8) R
      INTENT(OUT) R


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
      IF (A.GT.B) THEN
        R = A
      ELSE
        R = B
      ENDIF
          end if
          if (our_rev_mode%tape) then
C taping
      IF (A.GT.B) THEN
        R = A
        OpenAD_Symbol_7 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        R = B
        OpenAD_Symbol_8 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_6 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_6.ne.0) THEN
      ENDIF
          end if
        end subroutine oad_s_max_d
