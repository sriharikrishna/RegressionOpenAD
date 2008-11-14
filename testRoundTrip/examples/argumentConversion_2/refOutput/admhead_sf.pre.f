      module all_globals_mod

      end module

c$openad XXX Template ad_template.f
	subroutine foo(x,y) 
	  double precision x
	  double precision y
	  y=x
	end subroutine

c$openad XXX Template ad_template.f
	subroutine head(x,y) 
	  double precision x
	  double precision y, py
          real :: oad_ctmp0
c$openad INDEPENDENT(x)
	  call foo(x,y)
          oad_ctmp0 = 2.0
          call foo(oad_ctmp0,py)
c$openad DEPENDENT(y)
	end subroutine

