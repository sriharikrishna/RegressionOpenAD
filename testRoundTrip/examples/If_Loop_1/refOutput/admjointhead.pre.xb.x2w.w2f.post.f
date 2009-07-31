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
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_Symbol_1
      integer(w2f__i8) :: OpenAD_Symbol_10
      integer(w2f__i8) :: OpenAD_Symbol_11
      integer(w2f__i8) :: OpenAD_Symbol_12
      integer(w2f__i8) :: OpenAD_Symbol_13
      integer(w2f__i8) :: OpenAD_Symbol_2
      integer(w2f__i8) :: OpenAD_Symbol_3
      integer(w2f__i8) :: OpenAD_Symbol_4
      integer(w2f__i8) :: OpenAD_Symbol_5
      integer(w2f__i8) :: OpenAD_Symbol_6
      integer(w2f__i8) :: OpenAD_Symbol_7
      integer(w2f__i8) :: OpenAD_Symbol_8
      integer(w2f__i8) :: OpenAD_Symbol_9
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: I
      real(w2f__8) :: OpenAD_Symbol_14
      real(w2f__8) :: OpenAD_Symbol_15
      real(w2f__8) :: OpenAD_Symbol_16
      real(w2f__8) :: OpenAD_Symbol_17
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
      Y(1)%v = X(1)%v
      IF (Y(1)%v.GT.0.0D00) THEN
        DO I = 1,3,1
          Y(1)%v = (X(1)%v*Y(1)%v)
        END DO
      ELSE
        Y(1)%v = (Y(1)%v/X(1)%v)
      ENDIF
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
      Y(1)%v = X(1)%v
      IF (Y(1)%v.GT.0.0D00) THEN
        OpenAD_Symbol_5 = 0_w2f__i8
        DO I = 1,3,1
          OpenAD_Symbol_0 = (X(1)%v*Y(1)%v)
          OpenAD_lin_0 = Y(1)%v
          OpenAD_lin_1 = X(1)%v
          Y(1)%v = OpenAD_Symbol_0
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
          OpenAD_Symbol_5 = (INT(OpenAD_Symbol_5)+INT(1_w2f__i8))
        END DO
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_7 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OpenAD_Symbol_1 = (Y(1)%v/X(1)%v)
        OpenAD_lin_2 = (INT(1_w2f__i8)/X(1)%v)
        OpenAD_lin_3 = (-(Y(1)%v/(X(1)%v*X(1)%v)))
        Y(1)%v = OpenAD_Symbol_1
        double_tape(double_tape_pointer) = OpenAD_lin_2
        double_tape_pointer = double_tape_pointer+1
        double_tape(double_tape_pointer) = OpenAD_lin_3
        double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_6 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
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
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_2.ne.0) THEN
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_4 = 1
        do while (INT(OpenAD_Symbol_4).LE.INT(OpenAD_Symbol_3))
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_14 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_15 = double_tape(double_tape_pointer)
          OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d*(OpenAD_Symbol_14)
          X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_15)
          Y(1)%d = 0.0d0
          Y(1)%d = Y(1)%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
          OpenAD_Symbol_4 = INT(OpenAD_Symbol_4)+1
        END DO
      ELSE
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_16 = double_tape(double_tape_pointer)
        double_tape_pointer = double_tape_pointer-1
        OpenAD_Symbol_17 = double_tape(double_tape_pointer)
        X(1)%d = X(1)%d+Y(1)%d*(OpenAD_Symbol_16)
        OpenAD_prop_1%d = OpenAD_prop_1%d+Y(1)%d*(OpenAD_Symbol_17)
        Y(1)%d = 0.0d0
        Y(1)%d = Y(1)%d+OpenAD_prop_1%d
        OpenAD_prop_1%d = 0.0d0
      ENDIF
      X(1)%d = X(1)%d+Y(1)%d
      Y(1)%d = 0.0d0
C adjoint end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
          end if
        end subroutine head
