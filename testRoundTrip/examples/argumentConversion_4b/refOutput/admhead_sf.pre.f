      module all_globals_mod

      end module

C$openad XXX Template ad_template.f
      subroutine foo(x,y) 
        double precision x(2)
        double precision y
        y = x(1)*x(2)
      end subroutine

C$openad XXX Template ad_template.f
      subroutine head(x,y) 
      interface 
         subroutine foo(x,y) 
         double precision x(2)
         double precision y
         end subroutine
      end interface
      double precision, dimension(2) :: x
      double precision, dimension(2,2) :: ax,apx
      double precision y(1),py
      integer i,j
C$openad INDEPENDENT(x)
C$openad xxx simple loop
      do i=1,2
         do j=1,2
            ax(i,j) = x(i)
            apx(i,j) = i*4.0
         end do
      end do
C$openad xxx simple loop
      do i=1,2
         call foo(ax(i,:),y(1))
         call foo(apx(i,:),py)
      end do
C$openad DEPENDENT(y)
      end subroutine

