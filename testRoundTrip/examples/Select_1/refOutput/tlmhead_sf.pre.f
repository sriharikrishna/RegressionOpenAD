      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(1), intent(in) :: x
        double precision, dimension(1), intent(out) :: y
          integer i
C$openad INDEPENDENT(x)
          i = 1
          y(1) = 2.
          select case (i) 
          case (1)
            y(1) = x(1)
          case (2)
            y(1) = x(1)
          case default
            y(1) = x(1)
          end select
          y(1) = y(1)*y(1)
C$openad DEPENDENT(y)
      end subroutine
