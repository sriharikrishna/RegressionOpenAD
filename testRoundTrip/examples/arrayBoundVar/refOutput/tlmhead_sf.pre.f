!$openad xxx file_start [OAD_intrinsics.f90]
      module OAD_intrinsics
      end module
!$openad xxx file_start [all_globals_mod.f]
      module all_globals_mod

      end module

!$openad xxx file_start [head.f]
C$openad XXX Template ad_template.f
      subroutine head(x,y)
      use OAD_intrinsics
      double precision, dimension(2) :: x
      double precision, dimension(2) :: y
        double precision, dimension(size(x)) :: z
      integer :: i,j, n=2
C$openad INDEPENDENT(x)
      z=x
        y=z
C$openad DEPENDENT(y)
      end subroutine

