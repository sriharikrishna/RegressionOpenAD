      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(1) :: x
        double precision, dimension(1) :: y
        double precision, parameter :: PI = 3.14159265358979323844D0
C$openad INDEPENDENT(x)
          y(1) = sin(x(1)*2*PI)
C$openad DEPENDENT(y)
      end subroutine
