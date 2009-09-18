      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(3), intent(in) :: x
        double precision, dimension(3), intent(out) :: y
          integer i,j,k
C$openad INDEPENDENT(x)
        if (x(1).lt.4.0) then 
C$openad xxx simple loop

           do i=1,3
      	y(i) = x(i)
           end do
        else
C$openad xxx simple loop

           do i=1,3
      	y(i) = 2.0*x(i)
           end do
        end if
C$openad DEPENDENT(y)
      end subroutine
