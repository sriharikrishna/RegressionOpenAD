        module d
        end module d

c$openad XXX Template ad_template.f
	subroutine head(x,y) 
          use d
	  double precision, dimension(2) :: x
	  double precision, dimension(1) :: y
c$openad INDEPENDENT(x)
          call reed(x)
          y(1)=x(1)*x(2)
c$openad DEPENDENT(y)
	end subroutine
