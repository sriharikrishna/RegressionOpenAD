      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, intent(in) :: x
        double precision, dimension(5), intent(out) :: y
          integer i

C$openad INDEPENDENT(x)
C
C         
C$openad xxx simple loop
          do i=1,5
            y(i) = x
            y(6-i) = x
          end do

C$openad DEPENDENT(y)
      end subroutine
