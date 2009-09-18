      module all_globals_mod

      end module

        subroutine head(x,y)
          implicit none
          double precision, dimension(2) :: x
          double precision, dimension(2) :: y
          real(8) :: p, q
          integer :: oad_ctmp0
C$openad INDEPENDENT(x)
          oad_ctmp0 = 2
          call sq(oad_ctmp0,x,y)
          p = 2.
          q = p*p
C$openad DEPENDENT(y)
        end subroutine

        subroutine sq (n,u,v)
          implicit none
          integer :: n
          real(8), dimension(2) :: u
          real(8), dimension(2) :: v
          v(1) = sqrt(u(1)**2+u(2)**2)
          v(2) = u(2)/u(1)+sin(u(2))-cos(u(1))+u(1)**3+u(2)**3+2*u(1)*u(
     +2)
        end subroutine
