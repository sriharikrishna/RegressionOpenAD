      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(1) :: x
        double precision, dimension(1) :: y
C$openad INDEPENDENT(x)
          y(1) = DBLE(x(1))*DBLE(2)
C$openad DEPENDENT(y)
      end subroutine
