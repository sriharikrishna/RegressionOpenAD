      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
C ========== begin copyright notice ==============
C This file is part of 
C ---------------
C xaifBooster
C ---------------
C Distributed under the BSD license as follows:
C Copyright (c) 2005, The University of Chicago
C All rights reserved.
C
C Redistribution and use in source and binary forms, 
C with or without modification, are permitted provided that the following
C  conditions are met:
C
C    - Redistributions of source code must retain the above copyright not
C ice, 
C      this list of conditions and the following disclaimer.
C    - Redistributions in binary form must reproduce the above copyright 
C notice, 
C      this list of conditions and the following disclaimer in the docume
C ntation 
C      and/or other materials provided with the distribution.
C    - Neither the name of The University of Chicago nor the names of its
C  contributors 
C      may be used to endorse or promote products derived from this softw
C are without 
C      specific prior written permission.
C
C THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
C  IS" AND ANY 
C EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLI
C ED WARRANTIES 
C OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
C  IN NO EVENT 
C SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, IND
C IRECT, 
C INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BU
C T NOT LIMITED TO, 
C PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROF
C ITS; OR BUSINESS 
C INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
C  CONTRACT, STRICT 
C LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY W
C AY OUT OF THE USE 
C OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
C 
C General Information:
C xaifBooster is intended for the transformation of 
C numerical programs represented as xml files according 
C to the XAIF schema. It is part of the OpenAD framework. 
C The main application is automatic 
C differentiation, i.e. the generation of code for 
C the computation of derivatives. 
C The following people are the principal authors of the 
C current version: 
C 	Uwe Naumann
C	Jean Utke
C Additional contributors are: 
C	Andrew Lyons
C	Peter Fine
C
C For more details about xaifBooster and its use in OpenAD please visit:
C   http://www.mcs.anl.gov/openad
C
C This work is partially supported by:
C 	NSF-ITR grant OCE-0205590
C ========== end copyright notice ==============
      subroutine foo()
          use OAD_tape
          use OAD_rev
          use OAD_cp
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C         ! checkpointing stacks and offsets
          integer :: cp_loop_variable_1,cp_loop_variable_2,cp_loop_varia
     +ble_3,cp_loop_variable_4,cp_loop_variable_5
C         ! floats 'F'
          double precision,dimension(:),allocatable,save :: theArgFStack
          integer,save :: theArgFStackoffset=0,theArgFStackSize=0
C         ! integers 'I'
          integer,dimension(:),allocatable,save :: theArgIStack
          integer,save :: theArgIStackoffset=0,theArgIStackSize=0
C         ! booleans 'B'
          logical,dimension(:),allocatable,save :: theArgBStack
          integer,save :: theArgBStackoffset=0,theArgBStackSize=0
C         ! strings 'S'
          character*(80),dimension(:),allocatable,save :: theArgSStack
          integer,save :: theArgSStackoffset=0,theArgSStackSize=0
           type(modeType) :: our_orig_mode
C external C function used in inlined code
          integer :: iaddr
          external iaddr
           if (our_rev_mode%arg_store) then
C store arguments
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
          end if
          if (our_rev_mode%plain) then
            our_orig_mode = our_rev_mode
            our_rev_mode%arg_store = .false.
C original function
C original function end
            our_rev_mode = our_orig_mode
          end if
          if (our_rev_mode%tape) then
C            print*, " tape       ", our_rev_mode
            our_rev_mode%arg_store = .true.
            our_rev_mode%arg_restore = .false.
            our_rev_mode%plain = .true.
            our_rev_mode%tape = .false.
            our_rev_mode%adjoint = .false.
C taping
C taping end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .false.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .false.
            our_rev_mode%adjoint = .true.
          end if
          if (our_rev_mode%adjoint) then
C            print*, " adjoint    ", our_rev_mode
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
C adjoint
C adjoint end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
          end if
        end subroutine foo
C ========== begin copyright notice ==============
C This file is part of 
C ---------------
C xaifBooster
C ---------------
C Distributed under the BSD license as follows:
C Copyright (c) 2005, The University of Chicago
C All rights reserved.
C
C Redistribution and use in source and binary forms, 
C with or without modification, are permitted provided that the following
C  conditions are met:
C
C    - Redistributions of source code must retain the above copyright not
C ice, 
C      this list of conditions and the following disclaimer.
C    - Redistributions in binary form must reproduce the above copyright 
C notice, 
C      this list of conditions and the following disclaimer in the docume
C ntation 
C      and/or other materials provided with the distribution.
C    - Neither the name of The University of Chicago nor the names of its
C  contributors 
C      may be used to endorse or promote products derived from this softw
C are without 
C      specific prior written permission.
C
C THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
C  IS" AND ANY 
C EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLI
C ED WARRANTIES 
C OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
C  IN NO EVENT 
C SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, IND
C IRECT, 
C INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BU
C T NOT LIMITED TO, 
C PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROF
C ITS; OR BUSINESS 
C INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
C  CONTRACT, STRICT 
C LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY W
C AY OUT OF THE USE 
C OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
C 
C General Information:
C xaifBooster is intended for the transformation of 
C numerical programs represented as xml files according 
C to the XAIF schema. It is part of the OpenAD framework. 
C The main application is automatic 
C differentiation, i.e. the generation of code for 
C the computation of derivatives. 
C The following people are the principal authors of the 
C current version: 
C 	Uwe Naumann
C	Jean Utke
C Additional contributors are: 
C	Andrew Lyons
C	Peter Fine
C
C For more details about xaifBooster and its use in OpenAD please visit:
C   http://www.mcs.anl.gov/openad
C
C This work is partially supported by:
C 	NSF-ITR grant OCE-0205590
C ========== end copyright notice ==============
      subroutine head(X,Y)
          use OAD_tape
          use OAD_rev
          use OAD_cp
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      external foo
      type(active) :: T
      type(active) :: T1
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C         ! checkpointing stacks and offsets
          integer :: cp_loop_variable_1,cp_loop_variable_2,cp_loop_varia
     +ble_3,cp_loop_variable_4,cp_loop_variable_5
C         ! floats 'F'
          double precision,dimension(:),allocatable,save :: theArgFStack
          integer,save :: theArgFStackoffset=0,theArgFStackSize=0
C         ! integers 'I'
          integer,dimension(:),allocatable,save :: theArgIStack
          integer,save :: theArgIStackoffset=0,theArgIStackSize=0
C         ! booleans 'B'
          logical,dimension(:),allocatable,save :: theArgBStack
          integer,save :: theArgBStackoffset=0,theArgBStackSize=0
C         ! strings 'S'
          character*(80),dimension(:),allocatable,save :: theArgSStack
          integer,save :: theArgSStackoffset=0,theArgSStackSize=0
           type(modeType) :: our_orig_mode
C external C function used in inlined code
          integer :: iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
           if (our_rev_mode%arg_store) then
C store arguments
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
          end if
          if (our_rev_mode%plain) then
            our_orig_mode = our_rev_mode
            our_rev_mode%arg_store = .false.
C original function
      T%v = X(1)%v
      T1%v = (T%v*2.0D00)
      CALL foo()
      Y(1)%v = (T%v*2.0D00+T1%v*3.0D00)
C original function end
            our_rev_mode = our_orig_mode
          end if
          if (our_rev_mode%tape) then
C            print*, " tape       ", our_rev_mode
            our_rev_mode%arg_store = .true.
            our_rev_mode%arg_restore = .false.
            our_rev_mode%plain = .true.
            our_rev_mode%tape = .false.
            our_rev_mode%adjoint = .false.
C taping
C$OPENAD XXX Template ad_template.f
      T%v = X(1)%v
      T1%v = (T%v*2.0D00)
      CALL foo()
      Y(1)%v = (T%v*2.0D00+T1%v*3.0D00)
C taping end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .false.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .false.
            our_rev_mode%adjoint = .true.
          end if
          if (our_rev_mode%adjoint) then
C            print*, " adjoint    ", our_rev_mode
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
C adjoint
      T1%d = T1%d+Y(1)%d*(3.0D00)
      T%d = T%d+Y(1)%d*(2.0D00)
      Y(1)%d = 0.0d0
      CALL foo()
      T%d = T%d+T1%d*(2.0D00)
      T1%d = 0.0d0
      X(1)%d = X(1)%d+T%d
      T%d = 0.0d0
C adjoint end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
          end if
        end subroutine head
