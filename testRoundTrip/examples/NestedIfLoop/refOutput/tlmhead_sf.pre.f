      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2), intent(in) :: x
        double precision, dimension(2), intent(out) :: y
          integer i
C$openad INDEPENDENT(x)
          if (x(1)<x(2)) then
            do i=1,2
              y(i) = x(i)*x(i)
            end do
          else
            do i=1,2
              y(i) = x(i)*x(i)
            end do
          end if
C$openad DEPENDENT(y)
      end subroutine
