!$openad xxx file_start [OAD_intrinsics.f90]
      module OAD_intrinsics
        interface oad_s_min
          module procedure oad_s_min_d
        end interface
        contains
          subroutine oad_s_min_d(a,b,r)
            double precision,intent(in) :: a
            double precision,intent(in) :: b
            double precision,intent(out) :: r
            if (a<b) then
              r = a
            else
              r = b
            end if
          end subroutine
      end module
!$openad xxx file_start [all_globals_mod.f]
      module all_globals_mod

      end module

!$openad xxx file_start [head.f]
C$openad XXX Template ad_template.f
      subroutine head(x,y)
      use OAD_intrinsics
      double precision, dimension(2), intent(inout) :: x
      double precision, dimension(1), intent(inout) :: y
        double precision :: oad_ctmp0
C$openad INDEPENDENT(x)
          call oad_s_min(x(1),x(2),oad_ctmp0)
          y(1) = oad_ctmp0
C$openad DEPENDENT(y)
      end subroutine
