      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y)
        double precision x(2)
        double precision y
        y = x(1)*x(2)
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2) :: x
        double precision, dimension(2,3) :: ax,apx
        double precision y,py
C$openad INDEPENDENT(x)
        do i=1,2
          ax(i,2) = x(i)
          end do
        call foo(ax(1,2),y)
        call foo(apx(1,2),py)
C$openad DEPENDENT(y)
      end subroutine

