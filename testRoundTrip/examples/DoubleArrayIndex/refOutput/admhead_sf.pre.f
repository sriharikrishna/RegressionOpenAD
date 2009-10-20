      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(a)
        double precision a
        a = a*2
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2) :: x
        double precision y
        integer i
C$openad INDEPENDENT(x)
        i = 1
        call foo(x(i))
        call foo(x(i))
        y = x(1)*x(2)
C$openad DEPENDENT(y)
      end subroutine

