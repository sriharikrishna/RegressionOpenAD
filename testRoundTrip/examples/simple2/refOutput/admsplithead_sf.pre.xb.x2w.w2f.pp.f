
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
       subroutine head(X1,X2,Y1,Y2)
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
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_2
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
      type(active) :: Y1
      type(active) :: Y2
C
C     **** Local Variables and Functions ****
C
      type(active) :: T1
      type(active) :: T2
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y1)
C$OPENAD DEPENDENT(Y2)
C
C     **** Statements ****
C

          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
! original function
C$OPENAD XXX Template ad_template.f
      T1%v = (X1%v*X2%v)
      T2%v = (X1%v*SIN(T1%v))
      Y1%v = COS(T2%v)
      Y2%v = (X2%v*T2%v)
          end if
          if (our_rev_mode%tape) then
! taping
C$OPENAD XXX Template ad_template.f
      T1%v = (X1%v*X2%v)
      OpenAD_Symbol_0 = X2%v
      OpenAD_Symbol_1 = X1%v
      OpenAD_Symbol_2 = SIN(T1%v)
      T2%v = (X1%v*OpenAD_Symbol_2)
      OpenAD_Symbol_3 = OpenAD_Symbol_2
      OpenAD_Symbol_5 = COS(T1%v)
      OpenAD_Symbol_4 = X1%v
      Y1%v = COS(T2%v)
      OpenAD_Symbol_6 = (-SIN(T2%v))
      Y2%v = (X2%v*T2%v)
      OpenAD_Symbol_7 = T2%v
      OpenAD_Symbol_8 = X2%v
      OpenAD_Symbol_9 = (OpenAD_Symbol_5 * OpenAD_Symbol_4)
      OpenAD_Symbol_10 = (OpenAD_Symbol_0 * OpenAD_Symbol_9)
      OpenAD_Symbol_11 = (OpenAD_Symbol_1 * OpenAD_Symbol_9)
          double_tape(double_tape_pointer) = OpenAD_Symbol_3
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_10
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_11
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_6
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_7
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_8
          double_tape_pointer = double_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_12 = double_tape(double_tape_pointer)
          T2%d = T2%d+Y2%d*OpenAD_Symbol_12
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_13 = double_tape(double_tape_pointer)
          X2%d = X2%d+Y2%d*OpenAD_Symbol_13
          Y2%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_14 = double_tape(double_tape_pointer)
          T2%d = T2%d+Y1%d*OpenAD_Symbol_14
          Y1%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_15 = double_tape(double_tape_pointer)
          X2%d = X2%d+T2%d*OpenAD_Symbol_15
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_16 = double_tape(double_tape_pointer)
          X1%d = X1%d+T2%d*OpenAD_Symbol_16
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_17 = double_tape(double_tape_pointer)
          X1%d = X1%d+T2%d*OpenAD_Symbol_17
          T2%d = 0.0d0
          end if 
        end subroutine head
