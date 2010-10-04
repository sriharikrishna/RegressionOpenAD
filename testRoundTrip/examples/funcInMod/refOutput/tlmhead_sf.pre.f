!$openad xxx file_start [OAD_intrinsics.f90]
      module OAD_intrinsics
      end module
!$openad xxx file_start [all_globals_mod.f]
      module all_globals_mod

      end module

!$openad xxx file_start [head.f]
      module m
      public :: foo, mx
         interface oad_s_foo
           module procedure oad_s_foo_i
           module procedure oad_s_foo_ii
         end interface
         interface foo
           module procedure foo_i
           module procedure foo_ii
         end interface
         double precision :: mx
      contains
         double precision function foo_i(x)
         use OAD_intrinsics
           double precision :: x
           mx = mx+x
           foo_i=mx
         end function
         integer function foo_ii(x)
         use OAD_intrinsics
           integer :: x
           foo_ii = x+1
         end function
         subroutine oad_s_foo_i(x,foo_i)
         use OAD_intrinsics
           double precision :: x
           double precision,intent(out) :: foo_i
           mx = mx+x
           foo_i=mx
         end subroutine oad_s_foo_i
         subroutine oad_s_foo_ii(x,foo_ii)
         use OAD_intrinsics
           integer :: x
           integer,intent(out) :: foo_ii
           foo_ii = x+1
         end subroutine oad_s_foo_ii
      end module

C$openad XXX Template ad_template.f
      subroutine head(x,y)
      use OAD_intrinsics
      use m
      double precision, dimension(1), intent(inout) :: x
      double precision, dimension(1), intent(inout) :: y
        double precision :: oad_ctmp0
        double precision :: oad_ctmp1
        integer :: oad_ctmp2
C$openad INDEPENDENT(x)
          mx=x(1)
          call oad_s_foo(x(1),oad_ctmp1)
          call oad_s_foo(oad_ctmp1,oad_ctmp0)
          y(1) = oad_ctmp0
          call oad_s_foo(2,oad_ctmp2)
          i = oad_ctmp2
C$openad DEPENDENT(y)
      end subroutine
