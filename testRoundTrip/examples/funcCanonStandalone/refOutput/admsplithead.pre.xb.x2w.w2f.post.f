
C$OPENAD XXX File_start [head.f]
      Function bar(X)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) X
      INTENT(IN) X
      REAL(w2f__8) bar
C
C     **** Statements ****
C
      bar = MAX(X, 4.0D00)
      RETURN
      END FUNCTION
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE oad_s_bar(X, BAR)
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
      type(active) :: BAR
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      REAL(w2f__8) OAD_CTMP1


          integer iaddr
          external iaddr
C
C     **** Statements ****
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
        end subroutine oad_s_bar
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
      EXTERNAL oad_s_bar
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
      CALL oad_s_bar(X(1),OAD_CTMP0)
      Y(1)%v = (OAD_CTMP0%v*2.0D00)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_0,OAD_CTMP1)
      CALL oad_s_bar(Y(1),OpenAD_Symbol_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP1,OpenAD_Symbol_0)
      T = OAD_CTMP1
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      CALL oad_s_bar(X(1),OAD_CTMP0)
      Y(1)%v = (OAD_CTMP0%v*2.0D00)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_Symbol_0,OAD_CTMP1)
      CALL oad_s_bar(Y(1),OpenAD_Symbol_0)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OAD_CTMP1,OpenAD_Symbol_0)
      T = OAD_CTMP1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL oad_s_bar(Y(1),OpenAD_Symbol_8)
      OAD_CTMP0%d = OAD_CTMP0%d+Y(1)%d*(2.0D00)
      Y(1)%d = 0.0d0
      CALL oad_s_bar(X(1),OAD_CTMP0)
          end if
        end subroutine head
