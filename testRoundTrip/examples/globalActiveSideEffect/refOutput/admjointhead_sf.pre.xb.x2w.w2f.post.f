      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Statements ****
C
      END MODULE
      module globals
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: AGLOBALACTIVE
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
      subroutine foo(P)
          use OAD_tape
          use OAD_rev
          use OAD_cp
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      use globals
      use globals
      use globals
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_1
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: P
C
C     **** Local Variables and Functions ****
C
      real(w2f__8) :: OpenAD_Symbol_2
      real(w2f__8) :: OpenAD_Symbol_3
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
           if (our_rev_mode%arg_store) then
C store arguments
      call cp_store_real_scalar(AGLOBALACTIVE%v,theArgFStack,theArgFStac
     +koffset,theArgFStackSize)
      call cp_store_real_scalar(P%v,theArgFStack,theArgFStackoffset,theA
     +rgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      P%v = theArgFStack(theArgFStackoffset)
C          write(*,'(A,EN26.16E3)') "restore(s)  ", P%v
      theArgFStackoffset = theArgFStackoffset-1
      AGLOBALACTIVE%v = theArgFStack(theArgFStackoffset)
C          write(*,'(A,EN26.16E3)') "restore(s)  ", AGLOBALACTIVE%v
      theArgFStackoffset = theArgFStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode = our_rev_mode
            our_rev_mode%arg_store = .false.
C original function
      AGLOBALACTIVE%v = (P%v*AGLOBALACTIVE%v)
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
      OpenAD_Symbol_1 = (P%v*AGLOBALACTIVE%v)
      OpenAD_lin_0 = AGLOBALACTIVE%v
      OpenAD_lin_1 = P%v
      AGLOBALACTIVE%v = OpenAD_Symbol_1
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
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
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      OpenAD_prop_0%d = OpenAD_prop_0%d+AGLOBALACTIVE%d*(OpenAD_Symbol_2
     +)
      P%d = P%d+AGLOBALACTIVE%d*(OpenAD_Symbol_3)
      AGLOBALACTIVE%d = 0.0d0
      AGLOBALACTIVE%d = AGLOBALACTIVE%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
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
      use globals
      use globals
      use globals
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_5
      real(w2f__8) :: OpenAD_lin_2
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      real(w2f__8) :: ANINACTIVE
      external foo
      real(w2f__8) :: OpenAD_Symbol_4
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
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
           if (our_rev_mode%arg_store) then
C store arguments
      call cp_store_real_scalar(AGLOBALACTIVE%v,theArgFStack,theArgFStac
     +koffset,theArgFStackSize)
          end if
          if (our_rev_mode%arg_restore) then
C restore arguments
      AGLOBALACTIVE%v = theArgFStack(theArgFStackoffset)
C          write(*,'(A,EN26.16E3)') "restore(s)  ", AGLOBALACTIVE%v
      theArgFStackoffset = theArgFStackoffset-1
          end if
          if (our_rev_mode%plain) then
            our_orig_mode = our_rev_mode
            our_rev_mode%arg_store = .false.
C original function
C$OPENAD XXX Template ad_template.f
      ANINACTIVE = 4.445600128173828125D+01
      AGLOBALACTIVE%v = 1.61803400516510009766D00
      CALL foo(X(1))
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,ANINACTIVE)
      CALL foo(OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(ANINACTIVE,OpenAD_Symbol_0)
      Y(1)%v = SIN(AGLOBALACTIVE%v)
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
      ANINACTIVE = 4.445600128173828125D+01
      AGLOBALACTIVE%v = 1.61803400516510009766D00
      CALL foo(X(1))
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,ANINACTIVE)
      CALL foo(OpenAD_Symbol_0)
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(ANINACTIVE,OpenAD_Symbol_0)
      Y(1)%v = SIN(AGLOBALACTIVE%v)
      OpenAD_lin_2 = COS(AGLOBALACTIVE%v)
      double_tape(double_tape_pointer) = OpenAD_lin_2
      double_tape_pointer = double_tape_pointer+1
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
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      AGLOBALACTIVE%d = AGLOBALACTIVE%d+Y(1)%d*(OpenAD_Symbol_4)
      Y(1)%d = 0.0d0
      CALL foo(OpenAD_Symbol_5)
      CALL foo(X(1))
      AGLOBALACTIVE%d = 0.0d0
C adjoint end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
          end if
        end subroutine head
