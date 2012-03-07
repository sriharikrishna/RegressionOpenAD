
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

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

C$OPENAD XXX File_start [head.f]
      MODULE globals
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: GX
      type(active) :: GY
      contains
      subroutine mod_globals_init()
      	use OAD_active
      	GX%d = 0
      	GY%d = 0
      end subroutine
C
C     **** Statements ****
C
      END MODULE
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE bar(BARX, BARY)
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
      REAL(w2f__8) BARX
      REAL(w2f__8) BARY
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) T


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
      T = BARX
      BARX = BARY
      BARY = T
          end if
          if (our_rev_mode%tape) then
C taping
      T = BARX
      BARX = BARY
      BARY = T
          end if
          if (our_rev_mode%adjoint) then
C adjoint
          end if
        end subroutine bar
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo()
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
      REAL(w2f__8) OpenAD_tyc_0
      REAL(w2f__8) OpenAD_tyc_1
      REAL(w2f__8) OpenAD_tyc_2
      REAL(w2f__8) OpenAD_tyc_3


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,GX)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,GY)
      CALL bar(OpenAD_tyc_0,OpenAD_tyc_1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(GX,OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(GY,OpenAD_tyc_1)
          end if
          if (our_rev_mode%tape) then
C taping
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,GX)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,GY)
      CALL bar(OpenAD_tyc_0,OpenAD_tyc_1)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(GX,OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(GY,OpenAD_tyc_1)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL bar(OpenAD_tyc_2,OpenAD_tyc_3)
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

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
      use oad_intrinsics
      use globals
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
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      GX%v = X(1)%v
      GY%v = GX%v
      Y(1)%v = GY%v
          end if
          if (our_rev_mode%tape) then
C taping
      GX%v = X(1)%v
      GY%v = GX%v
      Y(1)%v = GY%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      GY%d = GY%d+Y(1)%d
      Y(1)%d = 0.0d0
      GX%d = GX%d+GY%d
      GY%d = 0.0d0
      X(1)%d = X(1)%d+GX%d
      GX%d = 0.0d0
          end if
        end subroutine head
      subroutine OAD_globalVar_init()
      	use globals
      	call mod_globals_init()
      end subroutine
