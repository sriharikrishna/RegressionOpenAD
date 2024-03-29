#include "OADmpi.inc"

subroutine ring(x)

 ! use mpi
 implicit none ! after 'use' before 'include'
 include 'mpif.h'

 double precision  x, lx, rx
 integer myid, numprocs, i, rc, ierr, leftId, rightId,req(4)
 call MPI_COMM_RANK(MPI_COMM_WORLD, myid, ierr)
 call MPI_COMM_SIZE(MPI_COMM_WORLD, numprocs, ierr)
 do i=1,numprocs
    ! compute something
    x=sin(x)
    ! get the neighbor id
    leftId=MODULO(myId-1,numprocs)
    rightId=MODULO(myId+1,numprocs)
    ! antiwait for all non-blocking requests
    call OAD_MPI_AWAITALL(4,req,MPI_STATUSES_IGNORE,ierr)
    ! send to left
    call OAD_MPI_ISEND(x,1,MPI_DOUBLE_PRECISION,leftId,0,& 
         MPI_COMM_WORLD,req(1),ierr) 
    ! send to right
    call OAD_MPI_ISEND(x,1,MPI_DOUBLE_PRECISION,rightId,0,& 
         MPI_COMM_WORLD,req(2),ierr)
    ! recv from left
    call OAD_MPI_IRECV(lx,1,MPI_DOUBLE_PRECISION,leftId,0,& 
         MPI_COMM_WORLD,req(3),ierr) 
    ! recv from right
    call OAD_MPI_IRECV(rx,1,MPI_DOUBLE_PRECISION,rightId,0,& 
         MPI_COMM_WORLD,req(4),ierr)
    ! wait for all non-blocking requests
    call OAD_MPI_WAITALL(4,req,MPI_STATUSES_IGNORE,ierr)
    ! add the neighbors contributions
    ! print *,MYID, LX, X, RX
    x=x+rx+lx
 end do
end

subroutine compute(x,f)

 ! use mpi
 implicit none ! after 'use' before 'include'
 include 'mpif.h'

 double precision  x, f
 integer ierr
!$openad independent(x)
 call ring(x) 
 call OAD_MPI_REDUCE(x,f,1,MPI_DOUBLE_PRECISION,MPI_SUM,0,&
      MPI_COMM_WORLD,ierr)
!$openad dependent(f)
end
