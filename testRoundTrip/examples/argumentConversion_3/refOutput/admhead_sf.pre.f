      module all_globals_mod

      end module

      module globals
      double precision gx
      double precision gy
      end module

      SUBROUTINE bar(barX,barY)
      double precision barx
      double precision bary
      double precision t
      t = barx
      barx = bary
      bary = t
      end subroutine

      SUBROUTINE foo( )
C foo is never called
C but gx and gy are active
      use globals
C here we need the conversion
      call bar(gx,gy)
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
      use globals
      double precision, dimension(2) :: x
      double precision, dimension(1) :: y
C$openad INDEPENDENT(x)
      gx = x(1)
C make sure the globals are activated
      gy = gx
      y(1) = gy
C$openad DEPENDENT(y)
      end subroutine
