
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
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

      SUBROUTINE head(X1, X2, Y)
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
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      type(active) :: OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      type(active) :: OpenAD_Symbol_22
      type(active) :: OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X1
      type(active) :: X2
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      type(active) :: A
      type(active) :: B
      type(active) :: C
      type(active) :: D
      type(active) :: E
      type(active) :: F
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
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
      A%v = (1.0D00/(X1%v/X2%v))
      B%v = (X2%v*A%v)
      C%v = X2%v
      C%v = SIN(C%v)
      D%v = A%v
      F%v = A%v
      F%v = ((F%v-A%v)*5.0D-01)
      E%v = ((D%v-A%v)*5.0D-01)
      Y%v = (B%v*F%v+C%v*E%v)

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
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (X1%v/X2%v)
      A%v = (1.0D00/OpenAD_Symbol_0)
      OpenAD_Symbol_3 = (INT(1_w2f__i8)/X2%v)
      OpenAD_Symbol_4 = (-(X1%v/(X2%v*X2%v)))
      OpenAD_Symbol_2 = (-(1.0D00 /(OpenAD_Symbol_0 * OpenAD_Symbol_0))
     > )
      B%v = (X2%v*A%v)
      OpenAD_Symbol_5 = A%v
      OpenAD_Symbol_6 = X2%v
      C%v = X2%v
      OpenAD_Symbol_17 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
      OpenAD_Symbol_18 = (OpenAD_Symbol_4 * OpenAD_Symbol_2)
      double_tape(double_tape_pointer) = OpenAD_Symbol_17
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_18
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_6
      double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_8 = SIN(C%v)
      OpenAD_Symbol_7 = COS(C%v)
      C%v = OpenAD_Symbol_8
      D%v = A%v
      F%v = A%v
      double_tape(double_tape_pointer) = OpenAD_Symbol_7
      double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_9 = (F%v-A%v)
      F%v = (OpenAD_Symbol_9*5.0D-01)
      OpenAD_Symbol_11 = (D%v-A%v)
      E%v = (OpenAD_Symbol_11*5.0D-01)
      Y%v = (B%v*F%v+C%v*E%v)
      OpenAD_Symbol_13 = F%v
      OpenAD_Symbol_14 = B%v
      OpenAD_Symbol_15 = E%v
      OpenAD_Symbol_16 = C%v
      OpenAD_Symbol_20 = (5.0D-01 * OpenAD_Symbol_14)
      OpenAD_Symbol_21 = (5.0D-01 * OpenAD_Symbol_16)
      double_tape(double_tape_pointer) = OpenAD_Symbol_13
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_20
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_15
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_Symbol_21
      double_tape_pointer = double_tape_pointer+1

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
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_24 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_25 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_26 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_27 = double_tape(double_tape_pointer)
      OpenAD_Symbol_23%d = OpenAD_Symbol_23%d+Y%d*(OpenAD_Symbol_24)
      C%d = C%d+Y%d*(OpenAD_Symbol_25)
      OpenAD_Symbol_22%d = OpenAD_Symbol_22%d+Y%d*(OpenAD_Symbol_26)
      B%d = B%d+Y%d*(OpenAD_Symbol_27)
      Y%d = 0.0d0
      A%d = A%d-OpenAD_Symbol_23%d
      D%d = D%d+OpenAD_Symbol_23%d
      OpenAD_Symbol_23%d = 0.0d0
      A%d = A%d-OpenAD_Symbol_22%d
      F%d = F%d+OpenAD_Symbol_22%d
      OpenAD_Symbol_22%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_28 = double_tape(double_tape_pointer)
      A%d = A%d+F%d
      F%d = 0.0d0
      A%d = A%d+D%d
      D%d = 0.0d0
      OpenAD_Symbol_19%d = OpenAD_Symbol_19%d+C%d*(OpenAD_Symbol_28)
      C%d = 0.0d0
      C%d = C%d+OpenAD_Symbol_19%d
      OpenAD_Symbol_19%d = 0.0d0
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_29 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_30 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_31 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_32 = double_tape(double_tape_pointer)
      A%d = A%d+B%d*(OpenAD_Symbol_29)
      X2%d = X2%d+B%d*(OpenAD_Symbol_30)
      B%d = 0.0d0
      X2%d = X2%d+A%d*(OpenAD_Symbol_31)
      X1%d = X1%d+A%d*(OpenAD_Symbol_32)
      A%d = 0.0d0
      X2%d = X2%d+C%d
      C%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if 
        end subroutine head
