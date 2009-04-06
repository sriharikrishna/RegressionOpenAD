
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
C with or without modification, are permitted provided that the following conditions are met:
C
C    - Redistributions of source code must retain the above copyright notice, 
C      this list of conditions and the following disclaimer.
C    - Redistributions in binary form must reproduce the above copyright notice, 
C      this list of conditions and the following disclaimer in the documentation 
C      and/or other materials provided with the distribution.
C    - Neither the name of The University of Chicago nor the names of its contributors 
C      may be used to endorse or promote products derived from this software without 
C      specific prior written permission.
C
C THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
C EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
C OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
C SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
C INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
C PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
C INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
C LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
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

      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev
          use OAD_cp

          ! original arguments get inserted before version
          ! and declared here together with all local variables
          ! generated by xaifBooster

      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      type(active) :: T1
      type(active) :: T2
      type(active) :: Y1
      type(active) :: Y2
      type(active) :: Y3
      type(active) :: Y4
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C


          ! checkpointing stacks and offsets
          integer :: cp_loop_variable_1,cp_loop_variable_2,
     +cp_loop_variable_3,cp_loop_variable_4,cp_loop_variable_5
          ! floats 'F'
          double precision, dimension(:), allocatable, save :: 
     +theArgFStack
          integer, save :: theArgFStackoffset=0, theArgFStackSize=0
          ! integers 'I'
          integer, dimension(:), allocatable, save :: 
     +theArgIStack
          integer, save :: theArgIStackoffset=0, theArgIStackSize=0
          ! booleans 'B'
          logical, dimension(:), allocatable, save :: 
     +theArgBStack
          integer, save :: theArgBStackoffset=0, theArgBStackSize=0
          ! strings 'S'
          character*(80), dimension(:), allocatable, save :: 
     +theArgSStack
          integer, save :: theArgSStackoffset=0, theArgSStackSize=0

          type(modeType) :: our_orig_mode

! external C function used in inlined code
          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f

          if (our_rev_mode%arg_store) then 
C store arguments

          end if 
          if (our_rev_mode%arg_restore) then
C restore arguments

          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
      T1%v = (X(1)%v/X(2)%v)
      T2%v = COS(T1%v)
      Y1%v = EXP(T2%v)
      Y2%v = (T2%v*3.14000010490417480469D00)
      Y3%v = SIN(T2%v)
      Y4%v = (T1%v*T2%v)
      Y(1)%v = Y1%v
      Y(2)%v = Y2%v
      Y(3)%v = Y3%v
      Y(4)%v = Y4%v

C original function end
            our_rev_mode=our_orig_mode
          end if 
          if (our_rev_mode%tape) then
C            print*, " tape       ", our_rev_mode
            our_rev_mode%arg_store=.TRUE.
            our_rev_mode%arg_restore=.FALSE.
            our_rev_mode%plain=.TRUE.
            our_rev_mode%tape=.FALSE.
            our_rev_mode%adjoint=.FALSE.
C taping
      T1%v = (X(1)%v/X(2)%v)
      OpenAD_Symbol_0 = (INT(1_w2f__i8)/X(2)%v)
      OpenAD_Symbol_1 = (-(X(1)%v/(X(2)%v*X(2)%v)))
      T2%v = COS(T1%v)
      OpenAD_Symbol_2 = (-SIN(T1%v))
      Y1%v = EXP(T2%v)
      OpenAD_Symbol_3 = EXP(T2%v)
      Y2%v = (T2%v*3.14000010490417480469D00)
      Y3%v = SIN(T2%v)
      OpenAD_Symbol_5 = COS(T2%v)
      Y4%v = (T1%v*T2%v)
      OpenAD_Symbol_6 = T2%v
      OpenAD_Symbol_7 = T1%v
      Y(1)%v = Y1%v
      OpenAD_Symbol_8 = (OpenAD_Symbol_6 + OpenAD_Symbol_2 *
     >  OpenAD_Symbol_7)
      OpenAD_Symbol_9 = (OpenAD_Symbol_2 * 3.14000010490417480469D00)
      OpenAD_Symbol_10 = (OpenAD_Symbol_2 * OpenAD_Symbol_5)
      OpenAD_Symbol_11 = (OpenAD_Symbol_2 * OpenAD_Symbol_3)
          double_tape(double_tape_pointer) = OpenAD_Symbol_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_1
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_9
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_10
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_8
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_11
          double_tape_pointer = double_tape_pointer+1
      Y(2)%v = Y2%v
      Y(3)%v = Y3%v
      Y(4)%v = Y4%v

C taping end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.FALSE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.FALSE.
            our_rev_mode%adjoint=.TRUE.
          end if 
          if (our_rev_mode%adjoint) then
C            print*, " adjoint    ", our_rev_mode
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
C adjoint
          Y4%d = Y4%d+Y(4)%d
          Y(4)%d = 0.0d0
          Y3%d = Y3%d+Y(3)%d
          Y(3)%d = 0.0d0
          Y2%d = Y2%d+Y(2)%d
          Y(2)%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_12 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_13 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_14 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_15 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_16 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_17 = double_tape(double_tape_pointer)
          T1%d = T1%d+Y(1)%d*(OpenAD_Symbol_12)
          Y(1)%d = 0.0d0
          T1%d = T1%d+Y4%d*(OpenAD_Symbol_13)
          Y4%d = 0.0d0
          T1%d = T1%d+Y3%d*(OpenAD_Symbol_14)
          Y3%d = 0.0d0
          T1%d = T1%d+Y2%d*(OpenAD_Symbol_15)
          Y2%d = 0.0d0
          X(2)%d = X(2)%d+T1%d*(OpenAD_Symbol_16)
          X(1)%d = X(1)%d+T1%d*(OpenAD_Symbol_17)
          T1%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if 
        end subroutine head
