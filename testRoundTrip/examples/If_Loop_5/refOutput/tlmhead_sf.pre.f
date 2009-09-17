      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision x(2),y(2)
          integer i
C$openad INDEPENDENT(x)
          i = 1
          do while (i<3)
            if (i<2) then
              y(2) = sin(x(1))
            else
              y(1) = cos(x(2))
            end if
            i = i+1
          end do
          y(2) = y(1)*y(2)
C$openad DEPENDENT(y)
      end subroutine
