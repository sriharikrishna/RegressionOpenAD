c$openad XXX Template ad_template.f
	subroutine head(x,y) 
	  double precision, dimension(2) :: x
	  double precision, dimension(1) :: y
c$openad INDEPENDENT(x)
          y=ubound(x,1)
c$openad DEPENDENT(y)
	end subroutine
