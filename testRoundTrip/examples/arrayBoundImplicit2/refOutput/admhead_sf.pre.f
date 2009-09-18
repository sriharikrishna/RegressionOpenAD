      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
        double precision, dimension(2) :: x,y
        double precision, dimension(:), allocatable :: p 
        allocate (p(3))
C$openad INDEPENDENT(x)
        p(:2) = x
        y = p(:2)
C$openad DEPENDENT(y)
      end subroutine
