
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

      SUBROUTINE head(X, OBJ)
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
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_30
      type(active) :: OpenAD_Symbol_31
      type(active) :: OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:6)
      type(active) :: OBJ(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) A
      REAL(w2f__8) D00
      type(active) :: D03
      REAL(w2f__8) D11
      type(active) :: D12
      type(active) :: F
      type(active) :: G
      type(active) :: LOC1
      type(active) :: M00
      type(active) :: M03
      type(active) :: M11
      type(active) :: M12
      type(active) :: M22
      type(active) :: M33
      type(active) :: MATR(0:3)
      REAL(w2f__8) SQRT3
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_54
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_56


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
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(OBJ)
C
C     **** Statements ****
C

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
C$OPENAD XXX Template ad_template.f
      A = 5.0D-01
      SQRT3 = 5.77350258827209472656D-01
      MATR(0)%v = (X(2)%v-X(1)%v)
      MATR(1)%v = (SQRT3*(X(3)%v*2.0D00-X(2)%v-X(1)%v))
      MATR(2)%v = (X(5)%v-X(4)%v)
      MATR(3)%v = (SQRT3*(X(6)%v*2.0D00-X(5)%v-X(4)%v))
      M03%v = (MATR(0)%v*MATR(3)%v)
      M12%v = (MATR(1)%v*MATR(2)%v)
      G%v = (M03%v-M12%v)
      D00 = (M03%v*2.0D00)
      D11 = (M12%v*2.0D00)
      M00%v = (MATR(0)%v*MATR(0)%v)
      M11%v = (MATR(1)%v*MATR(1)%v)
      M22%v = (MATR(2)%v*MATR(2)%v)
      M33%v = (MATR(3)%v*MATR(3)%v)
      D12%v = (M00%v*M33%v)
      D03%v = (M11%v*M22%v)
      F%v = (D03%v+D12%v)
      LOC1%v = (A*(1.0D00/G%v))
      OBJ(1)%v = (F%v*LOC1%v)

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
      A = 5.0D-01
      SQRT3 = 5.77350258827209472656D-01
      MATR(0)%v = (X(2)%v-X(1)%v)
      OpenAD_Symbol_0 = (X(3)%v*2.0D00-X(2)%v-X(1)%v)
      MATR(1)%v = (SQRT3*OpenAD_Symbol_0)
      OpenAD_Symbol_2 = SQRT3
          double_tape(double_tape_pointer) = OpenAD_Symbol_2
          double_tape_pointer = double_tape_pointer+1
      MATR(2)%v = (X(5)%v-X(4)%v)
      OpenAD_Symbol_4 = (X(6)%v*2.0D00-X(5)%v-X(4)%v)
      MATR(3)%v = (SQRT3*OpenAD_Symbol_4)
      OpenAD_Symbol_6 = SQRT3
          double_tape(double_tape_pointer) = OpenAD_Symbol_6
          double_tape_pointer = double_tape_pointer+1
      M03%v = (MATR(0)%v*MATR(3)%v)
      OpenAD_Symbol_8 = MATR(3)%v
      OpenAD_Symbol_9 = MATR(0)%v
      M12%v = (MATR(1)%v*MATR(2)%v)
      OpenAD_Symbol_10 = MATR(2)%v
      OpenAD_Symbol_11 = MATR(1)%v
      G%v = (M03%v-M12%v)
      D00 = (M03%v*2.0D00)
      D11 = (M12%v*2.0D00)
      M00%v = (MATR(0)%v*MATR(0)%v)
      OpenAD_Symbol_12 = MATR(0)%v
      OpenAD_Symbol_13 = MATR(0)%v
      M11%v = (MATR(1)%v*MATR(1)%v)
      OpenAD_Symbol_14 = MATR(1)%v
      OpenAD_Symbol_15 = MATR(1)%v
      M22%v = (MATR(2)%v*MATR(2)%v)
      OpenAD_Symbol_16 = MATR(2)%v
      OpenAD_Symbol_17 = MATR(2)%v
      M33%v = (MATR(3)%v*MATR(3)%v)
      OpenAD_Symbol_18 = MATR(3)%v
      OpenAD_Symbol_19 = MATR(3)%v
      D12%v = (M00%v*M33%v)
      OpenAD_Symbol_20 = M33%v
      OpenAD_Symbol_21 = M00%v
      D03%v = (M11%v*M22%v)
      OpenAD_Symbol_22 = M22%v
      OpenAD_Symbol_23 = M11%v
      F%v = (D03%v+D12%v)
      OpenAD_Symbol_24 = (1.0D00/G%v)
      LOC1%v = (A*OpenAD_Symbol_24)
      OpenAD_Symbol_28 = (-(1.0D00/(G%v*G%v)))
      OpenAD_Symbol_26 = A
      OBJ(1)%v = (F%v*LOC1%v)
      OpenAD_Symbol_29 = LOC1%v
      OpenAD_Symbol_30 = F%v
      OpenAD_Symbol_33 = (OpenAD_Symbol_28 * OpenAD_Symbol_26 *
     >  OpenAD_Symbol_30)
      OpenAD_Symbol_34 = (OpenAD_Symbol_16 * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_35 = (OpenAD_Symbol_17 * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_36 = (OpenAD_Symbol_14 * OpenAD_Symbol_22 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_37 = (OpenAD_Symbol_15 * OpenAD_Symbol_22 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_38 = (OpenAD_Symbol_18 * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_39 = (OpenAD_Symbol_19 * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_40 = (OpenAD_Symbol_12 * OpenAD_Symbol_20 *
     >  OpenAD_Symbol_29)
      OpenAD_Symbol_41 = (OpenAD_Symbol_13 * OpenAD_Symbol_20 *
     >  OpenAD_Symbol_29)
          double_tape(double_tape_pointer) = OpenAD_Symbol_8
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_9
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_10
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_11
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_33
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_34
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_35
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_36
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_37
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_38
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_39
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_40
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_41
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
          OpenAD_Symbol_42 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_43 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_44 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_45 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_46 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_47 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_48 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_49 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_50 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_51 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_52 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_53 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_54 = double_tape(double_tape_pointer)
          MATR(0)%d = MATR(0)%d+OBJ(1)%d*OpenAD_Symbol_42
          MATR(0)%d = MATR(0)%d+OBJ(1)%d*OpenAD_Symbol_43
          MATR(3)%d = MATR(3)%d+OBJ(1)%d*OpenAD_Symbol_44
          MATR(3)%d = MATR(3)%d+OBJ(1)%d*OpenAD_Symbol_45
          MATR(1)%d = MATR(1)%d+OBJ(1)%d*OpenAD_Symbol_46
          MATR(1)%d = MATR(1)%d+OBJ(1)%d*OpenAD_Symbol_47
          MATR(2)%d = MATR(2)%d+OBJ(1)%d*OpenAD_Symbol_48
          MATR(2)%d = MATR(2)%d+OBJ(1)%d*OpenAD_Symbol_49
          G%d = G%d+OBJ(1)%d*OpenAD_Symbol_50
          OBJ(1)%d = 0.0d0
          M12%d = M12%d+G%d*-1_w2f__i8
          M03%d = M03%d+G%d*1_w2f__i8
          G%d = 0.0d0
          MATR(2)%d = MATR(2)%d+M12%d*OpenAD_Symbol_51
          MATR(1)%d = MATR(1)%d+M12%d*OpenAD_Symbol_52
          M12%d = 0.0d0
          MATR(3)%d = MATR(3)%d+M03%d*OpenAD_Symbol_53
          MATR(0)%d = MATR(0)%d+M03%d*OpenAD_Symbol_54
          M03%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_55 = double_tape(double_tape_pointer)
          OpenAD_Symbol_32%d = OpenAD_Symbol_32%d+MATR(3)%d*OpenAD_Symbo
     +l_55
          MATR(3)%d = 0.0d0
          X(6)%d = X(6)%d+OpenAD_Symbol_32%d*2.0D00
          X(5)%d = X(5)%d+OpenAD_Symbol_32%d*-1_w2f__i8
          X(4)%d = X(4)%d+OpenAD_Symbol_32%d*-1_w2f__i8
          OpenAD_Symbol_32%d = 0.0d0
          X(4)%d = X(4)%d+MATR(2)%d*-1_w2f__i8
          X(5)%d = X(5)%d+MATR(2)%d*1_w2f__i8
          MATR(2)%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_56 = double_tape(double_tape_pointer)
          OpenAD_Symbol_31%d = OpenAD_Symbol_31%d+MATR(1)%d*OpenAD_Symbo
     +l_56
          MATR(1)%d = 0.0d0
          X(3)%d = X(3)%d+OpenAD_Symbol_31%d*2.0D00
          X(2)%d = X(2)%d+OpenAD_Symbol_31%d*-1_w2f__i8
          X(1)%d = X(1)%d+OpenAD_Symbol_31%d*-1_w2f__i8
          OpenAD_Symbol_31%d = 0.0d0
          X(1)%d = X(1)%d+MATR(0)%d*-1_w2f__i8
          X(2)%d = X(2)%d+MATR(0)%d*1_w2f__i8
          MATR(0)%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if 
        end subroutine head
