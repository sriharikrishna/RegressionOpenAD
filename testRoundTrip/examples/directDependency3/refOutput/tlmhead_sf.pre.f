      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo()
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2) :: x
        double precision y
        double precision t, t1
C$openad INDEPENDENT(x)
        t = x(1)
        call foo()
        y = 2*t
C$openad DEPENDENT(y)
      end subroutine

