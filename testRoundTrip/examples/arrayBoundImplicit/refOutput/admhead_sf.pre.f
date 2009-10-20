      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y)
      double precision, dimension(:) :: x
      double precision, dimension(:) :: y
        y = x
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y)
      interface
        subroutine foo(x,y)
        double precision, dimension(:) :: x
        double precision, dimension(:) :: y
        end subroutine
      end interface
      double precision, dimension(2) :: x
      double precision, dimension(2) :: y
C$openad INDEPENDENT(x)
      call foo(x,y)
C$openad DEPENDENT(y)
      end subroutine
