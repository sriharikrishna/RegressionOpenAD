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
      type(active) :: X(1:)
      type(active) :: Y(1:)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL barext
      REAL(w2f__8) OpenAD_tyc_0(:)
      ALLOCATABLE OpenAD_tyc_0


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
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,X)
      CALL barext(OpenAD_tyc_0)
C!! requested inline of 'oad_ShapeTest' has no defn
      CALL oad_ShapeTest(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(X,OpenAD_tyc_0)
      Y(1)%v = (X(1)%v+X(2)%v)
      Y(2)%v = (-(X(1)%v+X(2)%v))
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,X)
      CALL barext(OpenAD_tyc_0)
C!! requested inline of 'oad_ShapeTest' has no defn
      CALL oad_ShapeTest(OpenAD_tyc_0,X)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(X,OpenAD_tyc_0)
      Y(1)%v = (X(1)%v+X(2)%v)
      Y(2)%v = (-(X(1)%v+X(2)%v))
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      X(2)%d = X(2)%d-Y(2)%d
      X(1)%d = X(1)%d-Y(2)%d
      Y(2)%d = 0.0d0
      X(2)%d = X(2)%d+Y(1)%d
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
          end if
        end subroutine head
