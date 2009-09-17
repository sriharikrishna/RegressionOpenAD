      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x1,x2,y1,y2) 
        double precision t1,t2,x1,x2,y1,y2
C$openad INDEPENDENT(x1)
C$openad INDEPENDENT(x2)
        t1 = x1*x2
        t2 = x1*sin(t1)
          y1 = cos(t2)
          y2 = t2*x2
C$openad DEPENDENT(y1)
C$openad DEPENDENT(y2)
      end subroutine
