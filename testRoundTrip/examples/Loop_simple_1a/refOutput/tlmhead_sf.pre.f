      module all_globals_mod

      end module

c$openad XXX Template ad_template.f
	subroutine head(x,y)
	  double precision, dimension(1), intent(in) :: x
	  double precision, dimension(1), intent(out) :: y
          integer i

c$openad INDEPENDENT(x)
          
          y(1)=x(1) 

c$openad xxx simple loop
          do i=3,1,-1
            y(1)=y(1)*x(1)
          end do
          y(1)=y(1) 
c$openad DEPENDENT(y)
	end subroutine
