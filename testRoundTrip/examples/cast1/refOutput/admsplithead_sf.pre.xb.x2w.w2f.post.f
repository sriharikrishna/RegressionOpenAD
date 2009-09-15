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
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
           integer :: iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f
          if (our_rev_mode%plain) then
C original function
      Y(1)%v = (INT(X(1)%v)*DBLE(2.5))
          end if
          if (our_rev_mode%tape) then
C taping
      Y(1)%v = (INT(X(1)%v)*DBLE(2.5))
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      Y(1)%d = 0.0d0
          end if
        end subroutine head
