      module globals
      double precision gx
      double precision gy
      end module

      subroutine head(x,y) 
      use globals
        double precision, dimension(2) :: x
        double precision, dimension(1) :: y
c$openad INDEPENDENT(x)
        gx = x(1)
        gy = gx
        y(1) = gy
c$openad DEPENDENT(y)
       end subroutine
