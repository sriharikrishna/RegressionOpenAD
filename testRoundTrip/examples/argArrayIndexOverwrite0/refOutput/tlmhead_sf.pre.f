      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y,k)
        double precision x,y
        integer k
        y = x*k
        k = k+2
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2) :: x
        double precision y
        integer k
C$openad INDEPENDENT(x)
        k = 1
        call foo(x(k),y,k)
C$openad DEPENDENT(y)
      end subroutine

