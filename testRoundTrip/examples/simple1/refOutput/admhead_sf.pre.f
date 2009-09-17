      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
        double precision, dimension(2), intent(inout) :: x
        double precision, dimension(2), intent(inout) :: y
          double precision t
C$openad INDEPENDENT(x)
          t = x(1)*x(2)
        y(1) = sin(t)
        y(2) = cos(t)
C$openad DEPENDENT(y)
      end subroutine
