C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo()
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
      SAVE /cb/
      COMMON /cb/ G
      type(active) :: G
C
C     **** Local Variables and Functions ****
C
      type(active) :: OpenAD_prp_0
C
C     **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
      G%v = (G%v*2.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
      G%v = (G%v*2.0D00)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OpenAD_prp_0%d = OpenAD_prp_0%d+G%d*(2.0D00)
      G%d = 0.0d0
      G%d = G%d+OpenAD_prp_0%d
      OpenAD_prp_0%d = 0.0d0
          end if
        end subroutine foo
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE foo1()
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
      SAVE /cb/
      COMMON /cb/ G
      type(active) :: G
C
C     **** Local Variables and Functions ****
C
      type(active) :: OpenAD_prp_1
C
C     **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
      G%v = (G%v*3.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
      G%v = (G%v*3.0D00)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OpenAD_prp_1%d = OpenAD_prp_1%d+G%d*(3.0D00)
      G%d = 0.0d0
      G%d = G%d+OpenAD_prp_1%d
      OpenAD_prp_1%d = 0.0d0
          end if
        end subroutine foo1
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE bar()
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
      SAVE /cb/
      COMMON /cb/ G
      type(active) :: G
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      EXTERNAL foo1


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
      CALL foo()
      CALL foo1()
          end if
          if (our_rev_mode%tape) then
C taping
      CALL foo()
      CALL foo1()
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo1()
      CALL foo()
          end if
        end subroutine bar
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
      SAVE /cb/
      COMMON /cb/ G
      type(active) :: G
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL bar
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

         if (our_rev_mode%plain) then
C original function
      G%v = X(1)%v
      CALL bar()
      Y(1)%v = G%v
          end if
          if (our_rev_mode%tape) then
C taping
      G%v = X(1)%v
      CALL bar()
      Y(1)%v = G%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      G%d = G%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL bar()
      X(1)%d = X(1)%d+G%d
      G%d = 0.0d0
          end if
        end subroutine head
