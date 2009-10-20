      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
      double precision x(4),y(4)
      double precision c,d
      double precision p
C$openad INDEPENDENT(x)
      p = 2.0
      call foo(x(1),x(2),c,d)
      call foo(x(1),p,c,d)
      y(3) = c*d
      y(4) = c+d
      y(1) = x(3)
      y(2) = x(4)
C$openad DEPENDENT(y)
      end subroutine head

C$openad XXX Template ad_template.f
      subroutine foo(a,b,c,d)
      double precision a,b,c,d
      c = sin(a*b)
      d = cos(a+b)
      end subroutine
