c$openad XXX Template ad_template.f
        subroutine opt(reqarg,optarg,outarg) 
          double precision,intent(in) :: reqarg
          double precision,optional,intent(in) :: optarg
          double precision,intent(inout) :: outarg
          if(present(optarg)) then
            if(optarg .ge. 1) then
              outarg = outarg*optarg
            end if
          end if
        end subroutine opt

        subroutine head(x,y) 
          double precision,dimension(2) :: x
          double precision,dimension(1) :: y
c$openad INDEPENDENT(x)
          interface
            subroutine opt(reqarg,optarg,outarg)
              double precision,intent(in) :: reqarg
              double precision,optional,intent(in) :: optarg
              double precision,intent(inout) :: outarg
            end subroutine opt
          end interface
          y = x(1)*2
          call opt(x(1),x(2),y(1))
c$openad DEPENDENT(y)
        end subroutine head

