      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y) 
        double precision x
        double precision y
        y = x
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
        double precision x
        double precision y, py
C$openad INDEPENDENT(x)
        call foo(x,y)
        call foo(2.0,py)
C$openad DEPENDENT(y)
      end subroutine

