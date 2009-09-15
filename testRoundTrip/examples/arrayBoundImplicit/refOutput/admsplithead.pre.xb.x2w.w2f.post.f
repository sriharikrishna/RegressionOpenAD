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
      subroutine foo(X,Y)
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
      type(active) :: X(1:)
      type(active) :: Y(1:)
C
C     **** Statements ****
C
           integer :: iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f
          if (our_rev_mode%plain) then
C original function
      Y(1:)%v = X(1:)%v
          end if
          if (our_rev_mode%tape) then
C taping
      Y(1:)%v = X(1:)%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      X(1:)%d = X(1:)%d+Y(1:)%d
      Y(1:)%d = 0.0d0
          end if
        end subroutine foo
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
        subroutine foo(X,Y)
        use w2f__types
      use OAD_active
        type(active) :: X(1:)
        type(active) :: Y(1:)
        END SUBROUTINE
      end interface
           integer :: iaddr
          external iaddr
C
C     **** Statements ****
C
          if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
      CALL foo(X,Y)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      CALL foo(X,Y)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(X,Y)
          end if
        end subroutine head
