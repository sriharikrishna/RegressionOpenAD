      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
        double precision, dimension(1), intent(inout) :: x
        double precision, dimension(1), intent(inout) :: y
          logical l
C$openad INDEPENDENT(x)
          l = .true.
          if (l) then 
            y(1) = x(1)*4
          else
            y(1) = x(1)*2
          end if 
C$openad DEPENDENT(y)
      end subroutine
