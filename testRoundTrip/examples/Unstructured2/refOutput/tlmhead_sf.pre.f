      module all_globals_mod

      end module

      subroutine head(x,y)
        double precision, dimension(1), intent(inout) :: x
        double precision, dimension(1), intent(inout) :: y
        integer :: i,j,ii
C$openad INDEPENDENT(x)
        do j = 1, 5
          do ii = 1, 5
            exit
          end do
          do ii = 1, 5
            y(1) = x(1)
          end do
        end do
        return
C$openad DEPENDENT(y)
      end subroutine head
