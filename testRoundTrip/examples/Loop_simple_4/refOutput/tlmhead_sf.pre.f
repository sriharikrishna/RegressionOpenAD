      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y,k)
        double precision, dimension(2), intent(in) :: x
        double precision, dimension(2), intent(inout) :: y
          integer i,j,k
        j = k
C$openad xxx simple loop
          do i=1,2
            y(j) = y(j)+x(i)*x(i)
          end do
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2), intent(in) :: x
        double precision, dimension(2), intent(out) :: y
C$openad INDEPENDENT(x)
        y(1) = 1.0
        y(2) = 1.0
          call foo(x,y,1)
        call foo(x,y,2)
C$openad DEPENDENT(y)
      end subroutine
