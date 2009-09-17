      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y) 
        double precision, dimension(2) :: x
        double precision y
        double precision t
        t = x(1)
        call barExt(t)
        y = t*x(2)
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
        double precision, dimension(2) :: x
        double precision, dimension(1) :: y
        double precision t
C$openad INDEPENDENT(x)
        call barExt(t)
        call foo(x,y)
C$openad DEPENDENT(y)
      end subroutine
