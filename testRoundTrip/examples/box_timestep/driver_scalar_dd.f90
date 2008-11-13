! ========== begin copyright notice ==============
! This file is part of 
! ---------------
! xaifBooster
! ---------------
! Distributed under the BSD license as follows:
! Copyright (c) 2005, The University of Chicago
! All rights reserved.
!
! Redistribution and use in source and binary forms, 
! with or without modification, are permitted provided that the following conditions are met:
!
!    - Redistributions of source code must retain the above copyright notice, 
!      this list of conditions and the following disclaimer.
!    - Redistributions in binary form must reproduce the above copyright notice, 
!      this list of conditions and the following disclaimer in the documentation 
!      and/or other materials provided with the distribution.
!    - Neither the name of The University of Chicago nor the names of its contributors 
!      may be used to endorse or promote products derived from this software without 
!      specific prior written permission.
!
! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
! EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
! OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
! SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
! INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
! PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
! INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
! LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
! OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
! 
! General Information:
! xaifBooster is intended for the transformation of 
! numerical programs represented as xml files according 
! to the XAIF schema. It is part of the OpenAD framework. 
! The main application is automatic 
! differentiation, i.e. the generation of code for 
! the computation of derivatives. 
! The following people are the principal authors of the 
! current version: 
! 	Uwe Naumann
!	Jean Utke
! Additional contributors are: 
!	Andrew Lyons
!	Peter Fine
!
! For more details about xaifBooster and its use in OpenAD please visit:
!   http://www.mcs.anl.gov/openad
!
! This work is partially supported by:
! 	NSF-ITR grant OCE-0205590
! ========== end copyright notice ==============
program driver

  implicit none

  integer, parameter :: kdim=3
  integer i,j,n,m
  double precision :: h
  double precision jac(kdim,kdim)

  double precision :: gamma_t
  double precision :: nullforce(1 : 2)
  double precision :: tstar(1 : 2)


  double precision :: told(1 : 3)
  double precision :: tnow(1 : 3)
  double precision :: tnow_ph(1 : 3)
  double precision :: uvel

  double precision :: tnew(1 : 3)
  double precision :: tnew_ph(1 : 3)

  external box_timestep

  open(2,action='read',file='params.conf')
  read(2,'(I5,/,I5,/,F8.1)') n, m, h
  close(2)

  open(2,file='tmpOutput/dd.out')
  write(2,*) "DD"
  do i=1,kdim
     gamma_t=1.0D0
     nullforce=(/1.0D0,1.0D0/)
     tstar=(/1.0D0,1.0D0/)
     told=(/1.0D0,1.0D0,1.0D0/)
     tnow=(/1.0D0,1.0D0,1.0D0/)
     tnow_ph=tnow
     tnew=(/0.0D0,0.0D0,0.0D0/)
     tnew_ph=tnew
     uvel=1.0D0
     do j=1,kdim
        if (j==i) then
           tnow_ph(i)=tnow_ph(i)+h
        endif
     end do
     call box_timestep(gamma_t,tStar,nullforce,uvel, &
& tnow,told,tnew)
     call box_timestep(gamma_t,tStar,nullforce,uvel, &
& tnow_ph,told,tnew_ph)
     do j=1,kdim
        jac(j,i)=(tnew_ph(j)-tnew(j))/h
     end do
  end do
  do i=1,kdim
     do j=1,kdim
        write(2,'(A,I3,A,I3,A,EN26.16E3)') "F(",i,",",j,")=",jac(i,j)
     end do
  end do
  close(2)

end program driver