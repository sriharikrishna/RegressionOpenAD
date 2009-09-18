      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine bar(x,y, k )
        double precision, dimension(4), intent(in) :: x
        double precision, dimension(4), intent(out) :: y
          integer i,k
C$openad xxx simple loop

        do i=1,2*k
          y(i) = x(i)
        end do
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(4), intent(in) :: x
        double precision, dimension(4), intent(out) :: y
          integer i,j
C$openad INDEPENDENT(x)
        call bar(x,y,2)
C$openad DEPENDENT(y)
      end subroutine
