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
        double precision, dimension(2) :: t
        integer i
C$openad INDEPENDENT(x)
        i = 2
        call barExt(t(i))
        i = 1
        call foo(x,y(i))
C$openad DEPENDENT(y)
      end subroutine
