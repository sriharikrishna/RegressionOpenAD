      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
        double precision,intent(in) :: x
        double precision,intent(out) :: y
C$openad INDEPENDENT(x)
        y = sin(x*x)
C$openad DEPENDENT(y)
      end subroutine
