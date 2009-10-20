      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(j,x,y)
      double precision, dimension(j), intent(in) :: x
        double precision, dimension(1), intent(out) :: y
        integer j
C$openad INDEPENDENT(x)
        y(1) = 1.0
        call foo()
C$openad DEPENDENT(y)
      contains
      subroutine foo()
      integer i
      do i=1,j
         y(1) = y(1)*x(j)
      end do
      end subroutine
      end subroutine
