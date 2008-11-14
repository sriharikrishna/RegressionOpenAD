      module all_globals_mod

      end module

c$openad XXX Template ad_template.f
        subroutine foo(x,y,a,j)
          double precision, dimension(1), intent(in) :: x
          double precision, dimension(1), intent(out) :: y
	  integer a(2,2)
          integer i,j
          y(1)=x(1)
c$openad xxx simple loop
          do i=1,2
            if (a(i,j).ne.0) then
              y(1)=y(1)*x(1)*a(i,j)
            else
              y(1)=0.0
            end if
          end do
c$openad DEPENDENT(y)
        end subroutine


c$openad XXX Template ad_template.f
	subroutine head(x,y)
	  double precision, dimension(1), intent(in) :: x
	  double precision, dimension(1), intent(out) :: y
          integer a(2,2)
          integer :: oad_ctmp0
c$openad INDEPENDENT(x)
c set a
	  do i=1,2
            do j=1,2
	      a(i,j)=i+j
	    end do
	  end do
          oad_ctmp0 = 2
          call foo(x,y,a,oad_ctmp0)
c unset a to make sure it is restored
          do i=1,2
            do j=1,2
              a(i,j)=0
            end do
          end do
c$openad DEPENDENT(y)
	end subroutine
