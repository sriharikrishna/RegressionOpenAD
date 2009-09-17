      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo() 
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
        double precision, dimension(2) :: x
        double precision, dimension(1) :: y
        double precision t, t1
C$openad INDEPENDENT(x)
        t = x(1)
        t1 = t*2
        call foo()
        y(1) = 2*t+3*t1
C$openad DEPENDENT(y)
      end subroutine

