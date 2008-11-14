
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
       subroutine head(X1,X2,Y)
          use OAD_tape
          use OAD_rev

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
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      type(active) :: OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
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
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C

          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
! original function
C$OPENAD XXX Template ad_template.f
      A%v = (1.0D00/(X1%v/X2%v))
      B%v = (X2%v*A%v)
      C%v = X2%v
      C%v = SIN(C%v)
      D%v = A%v
      F%v = A%v
      F%v = ((F%v-A%v)*5.0D-01)
      E%v = ((D%v-A%v)*5.0D-01)
      Y%v = (B%v*F%v+C%v*E%v)
          end if
          if (our_rev_mode%tape) then
! taping
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_0 = (X1%v/X2%v)
      A%v = (1.0D00/OpenAD_Symbol_0)
      OpenAD_Symbol_3 = (INT(1 _w2f__i8)/X2%v)
      OpenAD_Symbol_4 = (-(X1%v/(X2%v*X2%v)))
      OpenAD_Symbol_2 = (-(1.0D00 /(OpenAD_Symbol_0 * OpenAD_Symbol_0)) 
     +)
      B%v = (X2%v*A%v)
      OpenAD_Symbol_5 = A%v
      OpenAD_Symbol_6 = X2%v
      C%v = X2%v
      OpenAD_Symbol_25 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
      OpenAD_Symbol_26 = (OpenAD_Symbol_4 * OpenAD_Symbol_2)
      OpenAD_Symbol_27 = (OpenAD_Symbol_25 * OpenAD_Symbol_6)
      OpenAD_Symbol_28 = (OpenAD_Symbol_26 * OpenAD_Symbol_6)
          double_tape(double_tape_pointer) = OpenAD_Symbol_25
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_26
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_27
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_28
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_5
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
      OpenAD_Symbol_12 = 1_w2f__i8
      OpenAD_Symbol_13 = (-1_w2f__i8)
      OpenAD_Symbol_10 = 5.0D-01
      OpenAD_Symbol_14 = (D%v-A%v)
      E%v = (OpenAD_Symbol_14*5.0D-01)
      OpenAD_Symbol_17 = 1_w2f__i8
      OpenAD_Symbol_18 = (-1_w2f__i8)
      OpenAD_Symbol_15 = 5.0D-01
      Y%v = (B%v*F%v+C%v*E%v)
      OpenAD_Symbol_21 = F%v
      OpenAD_Symbol_22 = B%v
      OpenAD_Symbol_19 = 1_w2f__i8
      OpenAD_Symbol_23 = E%v
      OpenAD_Symbol_24 = C%v
      OpenAD_Symbol_20 = 1_w2f__i8
      OpenAD_Symbol_30 = (5.0D-01 * OpenAD_Symbol_24)
      OpenAD_Symbol_31 = (5.0D-01 * OpenAD_Symbol_22)
      OpenAD_Symbol_32 = (INT((-1_w2f__i8)) * OpenAD_Symbol_30 + INT(( -
     +1_w2f__i8)) * OpenAD_Symbol_31)
          double_tape(double_tape_pointer) = OpenAD_Symbol_23
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_21
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_30
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_31
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_32
          double_tape_pointer = double_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_33 = double_tape(double_tape_pointer)
          A%d = A%d+Y%d*OpenAD_Symbol_33
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_34 = double_tape(double_tape_pointer)
          F%d = F%d+Y%d*OpenAD_Symbol_34
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_35 = double_tape(double_tape_pointer)
          D%d = D%d+Y%d*OpenAD_Symbol_35
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_36 = double_tape(double_tape_pointer)
          B%d = B%d+Y%d*OpenAD_Symbol_36
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_37 = double_tape(double_tape_pointer)
          C%d = C%d+Y%d*OpenAD_Symbol_37
          Y%d = 0.0d0
          A%d = A%d+F%d
          F%d = 0.0d0
          A%d = A%d+D%d
          D%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_38 = double_tape(double_tape_pointer)
          OpenAD_Symbol_29%d = OpenAD_Symbol_29%d+C%d*OpenAD_Symbol_38
          C%d = 0.0d0
          C%d = C%d+OpenAD_Symbol_29%d
          OpenAD_Symbol_29%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_39 = double_tape(double_tape_pointer)
          X2%d = X2%d+B%d*OpenAD_Symbol_39
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_40 = double_tape(double_tape_pointer)
          X2%d = X2%d+B%d*OpenAD_Symbol_40
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_41 = double_tape(double_tape_pointer)
          X1%d = X1%d+B%d*OpenAD_Symbol_41
          B%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_42 = double_tape(double_tape_pointer)
          X2%d = X2%d+A%d*OpenAD_Symbol_42
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_43 = double_tape(double_tape_pointer)
          X1%d = X1%d+A%d*OpenAD_Symbol_43
          A%d = 0.0d0
          X2%d = X2%d+C%d
          C%d = 0.0d0
          end if 
        end subroutine head
