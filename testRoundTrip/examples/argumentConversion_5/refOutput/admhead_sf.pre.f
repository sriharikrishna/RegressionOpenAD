      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y) 
        double precision x(2,1)
        double precision y
        y = x(1,1)*x(2,1)
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
        double precision, dimension(2) :: x,px
        double precision y,py
C$openad INDEPENDENT(x)
        call foo(x,y)
        call foo(px,py)
C$openad DEPENDENT(y)
      end subroutine

