      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(1), intent(in) :: x
        double precision, dimension(1), intent(out) :: y
          integer i
C$openad INDEPENDENT(x)
          i = 2
        if (x(1).lt.1.0) then 
            y(1) = i*x(1)
          goto 2
       endif 
       y(1) = y(1)*2
         goto 3  
 2       y(1) = y(1)*3
 3       return 
C$openad DEPENDENT(y)
      end subroutine
