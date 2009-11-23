      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
          implicit double precision (s,t)
        double precision, dimension(1), intent(inout) :: x
        double precision, dimension(1), intent(inout) :: y
C$openad INDEPENDENT(x)
          s = x(1)
          t = s
        y(1) = sin(t)
C$openad DEPENDENT(y)
      end subroutine
