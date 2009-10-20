      module all_globals_mod

      end module

      subroutine foo(x,y)
      double precision :: x,y
        y = x
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(2), intent(in) :: x
        double precision, dimension(2), intent(out) :: y
          integer i,j
C$openad INDEPENDENT(x)
C$openad xxx simple loop
       j = 1
       do i=1,2
          call foo(x(j),y(j))
       end do
       j = 2
       call foo(x(j),y(j))
C$openad DEPENDENT(y)
      end subroutine
