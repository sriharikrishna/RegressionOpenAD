      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine bar(c,d)
        double precision c,d
        d = c*c
      end subroutine

C$openad XXX Template ad_template.f
      subroutine foo(a,b)
        double precision a,b
        call bar(a,b)
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(1) :: x
        double precision, dimension(1) :: y
C$openad INDEPENDENT(x)
        call foo(x(1),y(1))
C$openad DEPENDENT(y)
      end subroutine
