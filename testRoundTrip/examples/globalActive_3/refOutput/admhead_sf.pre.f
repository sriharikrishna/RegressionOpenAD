      module all_globals_mod

      end module

      module globals

        double precision aGlobal

      end module


C$openad XXX Template ad_template.f
      subroutine foo(x,y) 

        double precision, dimension(2) :: x
        double precision y
        y = x(1)*x(2)
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y) 

          use globals

        double precision, dimension(2) :: x
        double precision, dimension(1) :: y
C$openad INDEPENDENT(x)
        call foo(x,aGlobal)
          y(1) = aGlobal
C$openad DEPENDENT(y)
      end subroutine
