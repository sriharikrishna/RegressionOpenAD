      module all_globals_mod

      end module

c$openad XXX Template ad_template.f
	subroutine bar(x,y, k )
	  double precision, dimension(4), intent(in) :: x
	  double precision, dimension(4), intent(out) :: y
          integer i,k
c$openad xxx simple loop	 
	  do i=1,2*k
	    y(i)=x(i) 
	  end do
	end subroutine

c$openad XXX Template ad_template.f
	subroutine head(x,y)
	  double precision, dimension(4), intent(in) :: x
	  double precision, dimension(4), intent(out) :: y
          integer i,j
          integer :: oad_ctmp0
c$openad INDEPENDENT(x)
          oad_ctmp0 = 2
          call bar(x,y,oad_ctmp0)
c$openad DEPENDENT(y)
	end subroutine
