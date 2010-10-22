
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Top Level Pragmas ****
!
interface OAD_S_MIN
  module procedure OAD_S_MIN_D
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

  SUBROUTINE OAD_S_MIN_D(A0, A1, R)
    use OAD_tape
    use OAD_rev

! original arguments get inserted before version
!         ! and declared here together with all local variables
!         ! generated by xaifBooster

  use w2f__types
  IMPLICIT NONE
!
!       **** Global Variables & Derived Type Definitions ****
!
  INTEGER(w2f__i8) OpenAD_Symbol_0
  INTEGER(w2f__i8) OpenAD_Symbol_1
  INTEGER(w2f__i8) OpenAD_Symbol_2
  INTEGER(w2f__i8) OpenAD_Symbol_3
  INTEGER(w2f__i8) OpenAD_Symbol_4
  INTEGER(w2f__i8) OpenAD_Symbol_5
!
!       **** Parameters and Result ****
!
  type(active) :: A0
  type(active) :: A1
  type(active) :: R


    integer iaddr
    external iaddr
!
!       **** Statements ****
!

   if (our_rev_mode%plain) then
! original function
  IF (A0%v.LT.A1%v) THEN
    R%v = A0%v
  ELSE
    R%v = A1%v
  ENDIF
    end if
    if (our_rev_mode%tape) then
! taping
  IF (A0%v.LT.A1%v) THEN
    R%v = A0%v
    OpenAD_Symbol_1 = 1_w2f__i8
    integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
    integer_tape_pointer = integer_tape_pointer+1
  ELSE
    R%v = A1%v
    OpenAD_Symbol_2 = 0_w2f__i8
    integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
    integer_tape_pointer = integer_tape_pointer+1
  ENDIF
    end if
    if (our_rev_mode%adjoint) then
! adjoint
  integer_tape_pointer = integer_tape_pointer-1
  OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
  IF (OpenAD_Symbol_0.ne.0) THEN
    A0%d = A0%d+R%d
    R%d = 0.0d0
  ELSE
    A1%d = A1%d+R%d
    R%d = 0.0d0
  ENDIF
    end if
  end subroutine OAD_S_MIN_D
END

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use OAD_active
      use w2f__types
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      type(active) :: OAD_CTMP1
      REAL(w2f__8) OAD_CTMP2
      REAL(w2f__8) OAD_CTMP3
      REAL(w2f__8) T
      type(active) :: T1
      REAL(w2f__8) T2
      type(active) :: OpenAD_tyc_0
      type(active) :: OpenAD_tyc_1
      type(active) :: OpenAD_tyc_11
      type(active) :: OpenAD_tyc_13
      type(active) :: OpenAD_tyc_2
      type(active) :: OpenAD_tyc_3
      type(active) :: OpenAD_tyc_4
      type(active) :: OpenAD_tyc_5
      type(active) :: OpenAD_tyc_6
      type(active) :: OpenAD_tyc_7


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
      T = 2.0D00
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,T)
      CALL OAD_S_MIN_D(OpenAD_tyc_0,X(1),OAD_CTMP0)
      T1%v = OAD_CTMP0%v
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,T)
      CALL OAD_S_MIN_D(T1,OpenAD_tyc_1,OAD_CTMP1)
      Y(1)%v = OAD_CTMP1%v
      OAD_CTMP3 = 2.5D00
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_2,T)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_3,OAD_CTMP3)
      CALL OAD_S_MIN_D(OpenAD_tyc_2,OpenAD_tyc_3,OpenAD_tyc_4)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP2,OpenAD_tyc_4)
      T2 = OAD_CTMP2
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      T = 2.0D00
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,T)
      CALL OAD_S_MIN_D(OpenAD_tyc_0,X(1),OAD_CTMP0)
      T1%v = OAD_CTMP0%v
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,T)
      CALL OAD_S_MIN_D(T1,OpenAD_tyc_1,OAD_CTMP1)
      Y(1)%v = OAD_CTMP1%v
      OAD_CTMP3 = 2.5D00
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_2,T)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_3,OAD_CTMP3)
      CALL OAD_S_MIN_D(OpenAD_tyc_2,OpenAD_tyc_3,OpenAD_tyc_4)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP2,OpenAD_tyc_4)
      T2 = OAD_CTMP2
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL OAD_S_MIN_D(OpenAD_tyc_5,OpenAD_tyc_6,OpenAD_tyc_7)
      OAD_CTMP1%d = OAD_CTMP1%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL OAD_S_MIN_D(T1,OpenAD_tyc_11,OAD_CTMP1)
      OAD_CTMP0%d = OAD_CTMP0%d+T1%d
      T1%d = 0.0d0
      CALL OAD_S_MIN_D(OpenAD_tyc_13,X(1),OAD_CTMP0)
          end if
        end subroutine head
