      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision x(2),y(2)
          integer i
        double precision s
C$openad INDEPENDENT(x)
          i = 1
          y(1) = 0.0
        y(2) = 0.0
C$openad xxx simple loop
        do i=1,2
            s = x(i)
          if (s.lt.0.D0) then
             x(i) = x(i)*2
          else
             s = 0.D0
            end if
            y(i) = x(i)+s
          end do
C$openad DEPENDENT(y)
      end subroutine
