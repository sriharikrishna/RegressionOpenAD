      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
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
      subroutine foo(X)
          use OAD_tape
          use OAD_rev
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X
C
C     **** Statements ****
C
           integer :: iaddr
          external iaddr
          if (our_rev_mode%plain) then
C original function
      X%v = (X%v+1.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
      X%v = (X%v+1.0D00)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OpenAD_prop_0%d = OpenAD_prop_0%d+X%d
      X%d = 0.0d0
      X%d = X%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
          end if
        end subroutine foo
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
      subroutine bar(X)
          use OAD_tape
          use OAD_rev
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
C
C     **** Statements ****
C
           integer :: iaddr
          external iaddr
          if (our_rev_mode%plain) then
C original function
      X(1)%v = (X(1)%v+1.0D00)
          end if
          if (our_rev_mode%tape) then
C taping
      X(1)%v = (X(1)%v+1.0D00)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OpenAD_prop_1%d = OpenAD_prop_1%d+X(1)%d
      X(1)%d = 0.0d0
      X(1)%d = X(1)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
          end if
        end subroutine bar
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
      subroutine head(X,Y)
          use OAD_tape
          use OAD_rev
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        subroutine foo(X)
        use w2f__types
      use OAD_active
        type(active) :: X
        END SUBROUTINE
      end interface
      interface
        subroutine bar(X)
        use w2f__types
      use OAD_active
        type(active) :: X(1:1)
        END SUBROUTINE
      end interface
           integer :: iaddr
          external iaddr
C
C     **** Statements ****
C
          if (our_rev_mode%plain) then
C original function
      CALL foo(X(1))
      Y(1:2)%v = X(1:2)%v
      CALL bar(Y(2:2))
          end if
          if (our_rev_mode%tape) then
C taping
      CALL foo(X(1))
      Y(1:2)%v = X(1:2)%v
      CALL bar(Y(2:2))
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL bar(Y(2:2))
      X(1:2)%d = X(1:2)%d+Y(1:2)%d
      Y(1:2)%d = 0.0d0
      CALL foo(X(1))
          end if
        end subroutine head
