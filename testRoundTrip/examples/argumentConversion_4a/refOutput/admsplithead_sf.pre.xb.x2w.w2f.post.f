
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
      SUBROUTINE foo(X, Y)
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
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      Y%v = (X(1)%v*X(2)%v)
          end if
          if (our_rev_mode%tape) then
C taping
      Y%v = (X(1)%v*X(2)%v)
      OpenAD_Symbol_2 = X(2)%v
      OpenAD_Symbol_3 = X(1)%v
      double_tape(double_tape_pointer) = OpenAD_Symbol_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_3
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_10 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_11 = double_tape(double_tape_pointer)
      X(2)%d = X(2)%d+Y%d*(OpenAD_Symbol_10)
      X(1)%d = X(1)%d+Y%d*(OpenAD_Symbol_11)
      Y%d = 0.0d0
          end if
        end subroutine foo
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
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0(1:2,1:3)
      type(active) :: OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_13(1:2,1:3)
      type(active) :: OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) APX(1 : 2, 1 : 3)
      type(active) :: AX(1:2,1:3)
      EXTERNAL foo
      INTEGER(w2f__i4) I
      REAL(w2f__8) PY
      INTEGER(w2f__i8) OpenAD_Symbol_12


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
      DO I = 1, 2, 1
        AX(INT(I),2)%v = X(I)%v
      END DO
      CALL foo(AX(1,2),Y)
C!! requested inline of 'convert_p2a_matrix' has no defn
      CALL convert_p2a_matrix(OpenAD_Symbol_0,APX)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
      CALL foo(OpenAD_Symbol_0(1,2),OpenAD_Symbol_1)
C!! requested inline of 'convert_a2p_matrix' has no defn
      CALL convert_a2p_matrix(APX,OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_6 = 0_w2f__i8
      DO I = 1,2,1
        AX(INT(I),2)%v = X(I)%v
        integer_tape(integer_tape_pointer) = I
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_6 = (INT(OpenAD_Symbol_6)+INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      CALL foo(AX(1,2),Y)
C!! requested inline of 'convert_p2a_matrix' has no defn
      CALL convert_p2a_matrix(OpenAD_Symbol_0,APX)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_1,PY)
      CALL foo(OpenAD_Symbol_0(1,2),OpenAD_Symbol_1)
C!! requested inline of 'convert_a2p_matrix' has no defn
      CALL convert_a2p_matrix(APX,OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(PY,OpenAD_Symbol_1)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(OpenAD_Symbol_13(1,2),OpenAD_Symbol_14)
      CALL foo(AX(1,2),Y)
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_4 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_5 = 1
      do while (INT(OpenAD_Symbol_5).LE.INT(OpenAD_Symbol_4))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_12 = integer_tape(integer_tape_pointer)
        X(INT(OpenAD_Symbol_12))%d = X(INT(OpenAD_Symbol_12))%d+AX(INT(O
     +penAD_Symbol_12),2)%d
        AX(INT(OpenAD_Symbol_12),2)%d = 0.0d0
        OpenAD_Symbol_5 = INT(OpenAD_Symbol_5)+1
      END DO
          end if
        end subroutine head
