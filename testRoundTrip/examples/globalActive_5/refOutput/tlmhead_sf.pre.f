      module all_globals_mod
        double precision x(2)
        double precision y(1)
      end module

c$openad XXX Template ad_template.f
       subroutine head() 

         use all_globals_mod

c$openad INDEPENDENT(x)
         y(1)=x(1)*x(2)
c$openad DEPENDENT(y)

       end subroutine
