      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(3), intent(in) :: x
        double precision, dimension(3), intent(out) :: y
          integer i,j,k
C$openad INDEPENDENT(x)
          do i=1,3
            y(i) = x(i)
          end do
C$openad xxx simple loop
          do i=1,3
            do j=1,3
              do k=1,3
                y(i) = y(i)*x(j)
              end do
            end do
          end do
C$openad DEPENDENT(y)
      end subroutine
