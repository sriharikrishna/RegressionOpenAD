
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
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
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE lagran(I, X, A, SP, LAG)
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
      REAL(w2f__8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      REAL(w2f__8) OpenAD_tmp_0
      REAL(w2f__8) OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) X
      type(active) :: A(1:4)
      INTEGER(w2f__i4) SP
      type(active) :: LAG
C
C     **** Local Variables and Functions ****
C
      type(active) :: DENOM
      INTEGER(w2f__i4) K
      type(active) :: NUMER
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      NUMER%v = 1.0D00
      DENOM%v = 1.0D00
C$OPENAD XXX Simple loop
      DO K = 1,SP,1
        IF (I.ne.K) THEN
          DENOM%v = (DENOM%v*(A(I)%v-A(K)%v))
          NUMER%v = (NUMER%v*(X-A(K)%v))
        ENDIF
      END DO
      LAG%v = (NUMER%v/DENOM%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      NUMER%v = 1.0D00
      DENOM%v = 1.0D00
C$OPENAD XXX Simple loop
      DO K = 1,SP,1
        IF (I.ne.K) THEN
          OpenAD_tmp_0 = (A(I)%v-A(K)%v)
          OpenAD_Symbol_0 = (DENOM%v*OpenAD_tmp_0)
          OpenAD_lin_0 = OpenAD_tmp_0
          OpenAD_lin_1 = DENOM%v
          DENOM%v = OpenAD_Symbol_0
          OpenAD_tmp_1 = (X-A(K)%v)
          OpenAD_Symbol_1 = (NUMER%v*OpenAD_tmp_1)
          OpenAD_lin_2 = OpenAD_tmp_1
          OpenAD_lin_3 = NUMER%v
          NUMER%v = OpenAD_Symbol_1
          OpenAD_acc_0 = (INT((-1_w2f__i8))*OpenAD_lin_3)
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_2
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_acc_0
          double_tape_pointer = double_tape_pointer+1
        ENDIF
      END DO
      integer_tape(integer_tape_pointer) = SP
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = I
      integer_tape_pointer = integer_tape_pointer+1
      LAG%v = (NUMER%v/DENOM%v)
      OpenAD_lin_5 = (INT(1_w2f__i8)/DENOM%v)
      OpenAD_lin_6 = (-(NUMER%v/(DENOM%v*DENOM%v)))
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_6
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_14 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_15 = double_tape(double_tape_pointer)
      DENOM%d = DENOM%d+LAG%d*(OpenAD_Symbol_14)
      NUMER%d = NUMER%d+LAG%d*(OpenAD_Symbol_15)
      LAG%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      I = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      SP = integer_tape(integer_tape_pointer)
      K = 1+1*((SP-1)/1)
      do while (K.GE.1)
        IF (I.ne.K) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_10 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_11 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_12 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_13 = double_tape(double_tape_pointer)
          A(K)%d = A(K)%d+NUMER%d*(OpenAD_Symbol_10)
          OpenAD_prop_1%d = OpenAD_prop_1%d+NUMER%d*(OpenAD_Symbol_11)
          NUMER%d = 0.0d0
          OpenAD_prop_2%d = OpenAD_prop_2%d+DENOM%d*(OpenAD_Symbol_12)
          OpenAD_prop_0%d = OpenAD_prop_0%d+DENOM%d*(OpenAD_Symbol_13)
          DENOM%d = 0.0d0
          A(K)%d = A(K)%d-OpenAD_prop_2%d
          A(I)%d = A(I)%d+OpenAD_prop_2%d
          OpenAD_prop_2%d = 0.0d0
          NUMER%d = NUMER%d+OpenAD_prop_1%d
          OpenAD_prop_1%d = 0.0d0
          DENOM%d = DENOM%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
        ENDIF
        K = K-1
      END DO
      DENOM%d = 0.0d0
      NUMER%d = 0.0d0
          end if
        end subroutine lagran
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
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:4)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL lagran
      INTEGER(w2f__i4) OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1
      INTEGER(w2f__i4) OAD_CTMP2


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
      OAD_CTMP0 = 2
      OAD_CTMP1 = 2.0D00
      OAD_CTMP2 = 4
      CALL lagran(OAD_CTMP0,OAD_CTMP1,X,OAD_CTMP2,Y(1))
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OAD_CTMP0 = 2
      OAD_CTMP1 = 2.0D00
      OAD_CTMP2 = 4
      CALL lagran(OAD_CTMP0,OAD_CTMP1,X,OAD_CTMP2,Y(1))
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL lagran(OAD_CTMP0,OAD_CTMP1,X,OAD_CTMP2,Y(1))
          end if
        end subroutine head
