!$openad xxx file_start [OAD_intrinsics.f90]
      module OAD_intrinsics
      end module
!$openad xxx file_start [all_globals_mod.f]
      module all_globals_mod

      end module

!$openad xxx file_start [head.f]
C$openad XXX Template ad_template.f
      subroutine foo()
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
      use OAD_intrinsics
        double precision, dimension(2) :: x
        double precision, dimension(1) :: y
        double precision t, t1
C$openad INDEPENDENT(x)
        t=x(1)
        t1 = t*2
        call foo()
        y(1) = 2*t+3*t1
C$openad DEPENDENT(y)
      end subroutine

