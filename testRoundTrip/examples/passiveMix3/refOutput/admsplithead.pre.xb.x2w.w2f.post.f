C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(M1, M2)
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
      REAL(w2f__8) M1
      type(active) :: M2
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0
      type(active) :: OpenAD_tyc_0
      type(active) :: OpenAD_tyc_2


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,M1)
      CALL OAD_S_MIN_D(OpenAD_tyc_0,M2,OAD_CTMP0)
      M2%v = OAD_CTMP0%v
          end if
          if (our_rev_mode%tape) then
C taping
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,M1)
      CALL OAD_S_MIN_D(OpenAD_tyc_0,M2,OAD_CTMP0)
      M2%v = OAD_CTMP0%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OAD_CTMP0%d = OAD_CTMP0%d+M2%d
      M2%d = 0.0d0
      CALL OAD_S_MIN_D(OpenAD_tyc_2,M2,OAD_CTMP0)
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
      EXTERNAL foo
      type(active) :: OAD_CTMP0
      type(active) :: OAD_CTMP1
      REAL(w2f__8) P
      REAL(w2f__8) T
      type(active) :: T1
      type(active) :: OpenAD_tyc_1
      type(active) :: OpenAD_tyc_4


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
      P = SQRT(3.0D00)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,T)
      CALL OAD_S_MIN_D(OpenAD_tyc_1,X(1),OAD_CTMP0)
      T1%v = OAD_CTMP0%v
      CALL OAD_S_MIN_D(X(1),T1,OAD_CTMP1)
      Y(1)%v = OAD_CTMP1%v
      CALL foo(P,T1)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      T = 2.0D00
      P = SQRT(3.0D00)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_1,T)
      CALL OAD_S_MIN_D(OpenAD_tyc_1,X(1),OAD_CTMP0)
      T1%v = OAD_CTMP0%v
      CALL OAD_S_MIN_D(X(1),T1,OAD_CTMP1)
      Y(1)%v = OAD_CTMP1%v
      CALL foo(P,T1)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(P,T1)
      OAD_CTMP1%d = OAD_CTMP1%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL OAD_S_MIN_D(X(1),T1,OAD_CTMP1)
      OAD_CTMP0%d = OAD_CTMP0%d+T1%d
      T1%d = 0.0d0
      CALL OAD_S_MIN_D(OpenAD_tyc_4,X(1),OAD_CTMP0)
          end if
        end subroutine head