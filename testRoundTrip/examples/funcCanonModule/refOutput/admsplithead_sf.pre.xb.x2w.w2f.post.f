
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use w2f__types
use OAD_active
IMPLICIT NONE
SAVE
!
!     **** Top Level Pragmas ****
!
interface OAD_S_MAX
  module procedure OAD_S_MAX_D
end interface

!
!     **** Statements ****
!
CONTAINS
!#########################################################
! This file is part of OpenAD released under the LGPL.   #
! The full COPYRIGHT notice can be found in the top      #
! level directory of the OpenAD distribution             #
!#########################################################

  SUBROUTINE OAD_S_MAX_D(A, B, R)
    use OAD_tape
    use OAD_rev

! original arguments get inserted before version
!         ! and declared here together with all local variables
!         ! generated by xaifBooster

  use w2f__types
  use OAD_active
  IMPLICIT NONE
!
!       **** Global Variables & Derived Type Definitions ****
!
  INTEGER(w2f__i8) OpenAD_Symbol_2
  INTEGER(w2f__i8) OpenAD_Symbol_3
  INTEGER(w2f__i8) OpenAD_Symbol_4
  INTEGER(w2f__i8) OpenAD_Symbol_5
  INTEGER(w2f__i8) OpenAD_Symbol_6
  INTEGER(w2f__i8) OpenAD_Symbol_7
!
!       **** Parameters and Result ****
!
  type(active) :: A
  REAL(w2f__8) B
  INTENT(IN) B
  type(active) :: R


    integer iaddr
    external iaddr
!
!       **** Statements ****
!

   if (our_rev_mode%plain) then
! original function
  IF (A%v.GT.B) THEN
    R%v = A%v
  ELSE
    R%v = B
  ENDIF
    end if
    if (our_rev_mode%tape) then
! taping
  IF (A%v.GT.B) THEN
    R%v = A%v
    OpenAD_Symbol_3 = 1_w2f__i8
    integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
    integer_tape_pointer = integer_tape_pointer+1
  ELSE
    R%v = B
    OpenAD_Symbol_4 = 0_w2f__i8
    integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
    integer_tape_pointer = integer_tape_pointer+1
  ENDIF
    end if
    if (our_rev_mode%adjoint) then
! adjoint
  integer_tape_pointer = integer_tape_pointer-1
  OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
  IF (OpenAD_Symbol_2.ne.0) THEN
    A%d = A%d+R%d
    R%d = 0.0d0
  ELSE
    R%d = 0.0d0
  ENDIF
    end if
  end subroutine OAD_S_MAX_D
END

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

C$OPENAD XXX File_start [head.f]
      MODULE foo
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      CONTAINS

        Function BAR(X)
        use w2f__types
        use OAD_active
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        REAL(w2f__8) X
        INTENT(IN) X
        REAL(w2f__8) BAR
C
C       **** Statements ****
C
        BAR = MAX(X, 4.0D00)
        RETURN
        END FUNCTION
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE OAD_S_BAR(X, BAR)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

        use w2f__types
        use OAD_active
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        type(active) :: X
        type(active) :: BAR
C
C       **** Local Variables and Functions ****
C
        type(active) :: OAD_CTMP0
        REAL(w2f__8) OAD_CTMP1


          integer iaddr
          external iaddr
C
C       **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
        OAD_CTMP1 = 4.0D00
        CALL OAD_S_MAX_D(X,OAD_CTMP1,OAD_CTMP0)
        BAR%v = OAD_CTMP0%v
          end if
          if (our_rev_mode%tape) then
C taping
        OAD_CTMP1 = 4.0D00
        CALL OAD_S_MAX_D(X,OAD_CTMP1,OAD_CTMP0)
        BAR%v = OAD_CTMP0%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
        OAD_CTMP0%d = OAD_CTMP0%d+BAR%d
        BAR%d = 0.0d0
        CALL OAD_S_MAX_D(X,OAD_CTMP1,OAD_CTMP0)
          end if
        end subroutine OAD_S_BAR
      END
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
      use foo
      use oad_intrinsics
      use foo
      use oad_intrinsics
      use foo
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_8
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1
      REAL(w2f__8) T


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
      CALL OAD_S_BAR(X(1),OAD_CTMP0)
      Y(1)%v = (OAD_CTMP0%v*2.0D00)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,OAD_CTMP1)
      CALL OAD_S_BAR(Y(1),OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(OAD_CTMP1,OpenAD_Symbol_0)
      T = OAD_CTMP1
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      CALL OAD_S_BAR(X(1),OAD_CTMP0)
      Y(1)%v = (OAD_CTMP0%v*2.0D00)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,OAD_CTMP1)
      CALL OAD_S_BAR(Y(1),OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(OAD_CTMP1,OpenAD_Symbol_0)
      T = OAD_CTMP1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL OAD_S_BAR(Y(1),OpenAD_Symbol_8)
      OAD_CTMP0%d = OAD_CTMP0%d+Y(1)%d*(2.0D00)
      Y(1)%d = 0.0d0
      CALL OAD_S_BAR(X(1),OAD_CTMP0)
          end if
        end subroutine head
