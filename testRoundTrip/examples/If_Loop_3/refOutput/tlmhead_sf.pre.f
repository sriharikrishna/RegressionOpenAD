      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(1), intent(in) :: x
        double precision, dimension(1), intent(out) :: y
          integer i,j,k
C$openad INDEPENDENT(x)
          do i=1,1
            y(1) = x(1)
            if (y(1)>0.) then
              y(1) = x(1)
              do j=1,3
                y(1) = x(1)
                do k=1,3
                  y(1) = x(1)
                  if (x(1)>0) then
                    y(1) = y(1)*x(1)
                  end if
                end do
              end do
            else
              y(1) = y(1)/x(1)
            end if
          end do
C$openad DEPENDENT(y)

      end subroutine
