
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

      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
C
C     **** Parameters and Result ****
C
      type(active) :: X
      type(active) :: Y(1:5)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5


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
C$OPENAD XXX Simple loop
      DO I = 1,5,1
        Y(INT(I))%v = X%v
        Y(6-I)%v = X%v
      enddo
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,5,1
        Y(INT(I))%v = X%v
        Y(6-I)%v = X%v
      enddo
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      I = 1+1*((5-1)/1)
      do while (I.GE.1)
        X%d = X%d+Y(6-I)%d
        Y(6-I)%d = 0.0d0
        X%d = X%d+Y(I)%d
        Y(I)%d = 0.0d0
        I = I-1
      enddo
          end if
        end subroutine head
