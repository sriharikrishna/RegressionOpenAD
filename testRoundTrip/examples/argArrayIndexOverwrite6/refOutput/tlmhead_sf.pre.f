      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(a)
        double precision a
        a = a*2
      end subroutine

C$openad XXX Template ad_template.f
      subroutine bar(a,k)
        double precision a
        integer k
        k = k*2
        a = a*k
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2) :: x
        double precision y
        integer i
C$openad INDEPENDENT(x)
        i = 1
        call foo(x(i))
        call bar(x(i+1),i)
        y = x(1)*x(2)
C$openad DEPENDENT(y)
      end subroutine

