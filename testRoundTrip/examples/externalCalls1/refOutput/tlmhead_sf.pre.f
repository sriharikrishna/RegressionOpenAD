!$openad xxx file_start [OAD_intrinsics.f90]
      module OAD_intrinsics
      end module
!$openad xxx file_start [all_globals_mod.f]
      module all_globals_mod

      end module

!$openad xxx file_start [head.f]
C$openad XXX Template ad_template.f
      subroutine foo(x,y)
        use OAD_intrinsics
        double precision, dimension(2) :: x
        double precision y
        double precision t
        t=x(1)
        call barExt(t)
        y = t*x(2)
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        use OAD_intrinsics
        double precision, dimension(2) :: x
        double precision, dimension(1) :: y
        double precision t
C$openad INDEPENDENT(x)
        call barExt(t)
        call foo(x,y)
C$openad DEPENDENT(y)
      end subroutine
