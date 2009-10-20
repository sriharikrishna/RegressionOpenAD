      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y)
        double precision x
        double precision y
        y = x*x
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2) :: x, px
        double precision y, py
C$openad INDEPENDENT(x)
        call foo(x(1),y)
        call foo(px(1),py)
C$openad DEPENDENT(y)
      end subroutine

