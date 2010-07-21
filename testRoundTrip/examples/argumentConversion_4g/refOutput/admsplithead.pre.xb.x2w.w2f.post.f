
C$OPENAD XXX File_start [head.f]
      MODULE m
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Top Level Pragmas ****
C
      interface FOO
        module procedure FOOI
      end interface

C
C     **** Statements ****
C
      CONTAINS
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

        SUBROUTINE FOOI(X)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

        use w2f__types
        use OAD_active
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        REAL(w2f__8) X(1 :)


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
          end if
          if (our_rev_mode%tape) then
C taping
          end if
          if (our_rev_mode%adjoint) then
C adjoint
          end if
        end subroutine FOOI
      END
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
      use m
      use oad_intrinsics
      use m
      use oad_intrinsics
      use m
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:)
      type(active) :: Y(1:)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_tyc_0(:)
      ALLOCATABLE OpenAD_tyc_0
      REAL(w2f__8) OpenAD_tyc_1(:)
      ALLOCATABLE OpenAD_tyc_1
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

         if (our_rev_mode%plain) then
C original function
      Y(1:)%v = X(1:)%v
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_tyc_0,Y)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,Y)
      CALL FOOI(OpenAD_tyc_0)
C!! requested inline of 'oad_ShapeTest' has no defn
      CALL oad_ShapeTest(OpenAD_tyc_0,Y)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(Y,OpenAD_tyc_0)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      Y(1:)%v = X(1:)%v
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_tyc_0,Y)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(OpenAD_tyc_0,Y)
      CALL FOOI(OpenAD_tyc_0)
C!! requested inline of 'oad_ShapeTest' has no defn
      CALL oad_ShapeTest(OpenAD_tyc_0,Y)
C!! requested inline of 'oad_convert' has no defn
      CALL oad_convert(Y,OpenAD_tyc_0)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
C!! requested inline of 'oad_AllocateMatching' has no defn
      CALL oad_AllocateMatching(OpenAD_tyc_1,Y)
      CALL FOOI(OpenAD_tyc_1)
      X(1:)%d = X(1:)%d+Y(1:)%d
      Y(1:)%d = 0.0d0
          end if
        end subroutine head
