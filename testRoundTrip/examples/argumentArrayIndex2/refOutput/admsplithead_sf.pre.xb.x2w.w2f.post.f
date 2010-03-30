
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
      type(active) :: X
      type(active) :: Y
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      Y%v = (X%v*2.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
      Y%v = (X%v*2.0D00)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      X%d = X%d+Y%d*(2.0D00)
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) K
      INTEGER(w2f__i4) L
      REAL(w2f__8) P(1 : 2)
      REAL(w2f__8) Q(1 : 2)
      type(active) :: OpenAD_tyc_0
      type(active) :: OpenAD_tyc_1
      type(active) :: OpenAD_tyc_2
      type(active) :: OpenAD_tyc_3


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
      K = 1
      CALL foo(X(K),Y)
      P(1) = 1.0
      L = 1
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,P(K))
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,Q(L))
      CALL foo(OpenAD_tyc_0,OpenAD_tyc_1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(P(K),OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(Q(L),OpenAD_tyc_1)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      K = 1
      CALL foo(X(K),Y)
      integer_tape(integer_tape_pointer) = K
      integer_tape_pointer = integer_tape_pointer+1
      P(1) = 1.0
      L = 1
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,P(K))
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,Q(L))
      CALL foo(OpenAD_tyc_0,OpenAD_tyc_1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(P(K),OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(Q(L),OpenAD_tyc_1)
      integer_tape(integer_tape_pointer) = K
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = L
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      L = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      K = integer_tape(integer_tape_pointer)
      CALL foo(OpenAD_tyc_2,OpenAD_tyc_3)
      integer_tape_pointer = integer_tape_pointer-1
      K = integer_tape(integer_tape_pointer)
      CALL foo(X(K),Y)
          end if
        end subroutine head
