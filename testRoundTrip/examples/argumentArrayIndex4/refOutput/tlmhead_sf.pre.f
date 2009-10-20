      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y)
        double precision x
        double precision y
        y = x*2
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2) :: x
        double precision y
        double precision, dimension(2) :: p,q
        double precision r,s
        integer k,l
C$openad INDEPENDENT(x)
        k = 1
        call foo(x(k),y)
C activate q
        q(1) = y
        y = q(1)
        p(1) = 1.0
        l = 1
        call foo(p(k),q(l))
        r = p(1)
          call foo(r,q(l))
C$openad DEPENDENT(y)
      end subroutine
