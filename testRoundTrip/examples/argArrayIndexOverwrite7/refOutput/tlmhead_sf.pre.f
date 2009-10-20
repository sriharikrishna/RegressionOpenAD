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
        integer, dimension(4) :: a
        integer i
C$openad INDEPENDENT(x)
        a(1) = 2
        a(2) = 1
        a(3) = 2
        a(4) = 3
        i = 1
        call foo(x(a(a(a(a(a(a(a(a(a(a(a(4)))))))))))))
        y = x(1)*x(2)
C$openad DEPENDENT(y)
      end subroutine

