      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(1), intent(in) :: x
        double precision, dimension(1), intent(out) :: y
          integer i

C$openad INDEPENDENT(x)

          y(1) = x(1)

C$openad xxx simple loop
          do i=3,1,-1
            y(1) = y(1)*x(1)
          end do
          y(1) = y(1)
C$openad DEPENDENT(y)
      end subroutine
