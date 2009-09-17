      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
        subroutine foo(x,y,a)
          double precision, dimension(1), intent(in) :: x
          double precision, dimension(1), intent(out) :: y
        integer a
          y(a) = x(a)
        end subroutine


C$openad XXX Template ad_template.f
      subroutine head(x,y)
        double precision, dimension(1), intent(in) :: x
        double precision, dimension(1), intent(out) :: y
          integer a
C$openad INDEPENDENT(x)
C set a
        a = 1
        call foo(x,y,a)
C unset a to make sure it is restored
        a = 20000
C$openad DEPENDENT(y)
      end subroutine
