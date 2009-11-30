      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
      double precision, dimension(2), intent(inout) :: x
      double precision, dimension(1), intent(inout) :: y
        double precision :: oad_ctmp0
C$openad INDEPENDENT(x)
          call oad_s_min_d(x(1),x(2),oad_ctmp0)
          y(1) = oad_ctmp0
C$openad DEPENDENT(y)
      end subroutine
            subroutine oad_s_min_d(a,b,r)
              double precision,intent(in) :: a
              double precision,intent(in) :: b
              double precision,intent(out) :: r
              if (a<b) then
                r = a
              else
                r = b
              end if
            end
