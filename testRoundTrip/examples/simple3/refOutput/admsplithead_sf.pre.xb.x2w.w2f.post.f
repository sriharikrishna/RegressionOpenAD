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
      subroutine head(X1,X2,Y1,Y2)
          use OAD_tape
          use OAD_rev
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_acc_2
      real(w2f__8) :: OpenAD_acc_3
      real(w2f__8) :: OpenAD_acc_4
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_1
      real(w2f__8) :: OpenAD_lin_2
      real(w2f__8) :: OpenAD_lin_3
      real(w2f__8) :: OpenAD_lin_4
      real(w2f__8) :: OpenAD_lin_5
      real(w2f__8) :: OpenAD_lin_6
      real(w2f__8) :: OpenAD_lin_7
      real(w2f__8) :: OpenAD_lin_8
      real(w2f__8) :: OpenAD_tmp_0
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
      type(active) :: V3
      type(active) :: V4
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_Symbol_1
      real(w2f__8) :: OpenAD_Symbol_2
      real(w2f__8) :: OpenAD_Symbol_3
      real(w2f__8) :: OpenAD_Symbol_4
      real(w2f__8) :: OpenAD_Symbol_5
      real(w2f__8) :: OpenAD_Symbol_6
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
           integer :: iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f
          if (our_rev_mode%plain) then
C original function
      V3%v = (X1%v*X2%v)
      V4%v = (X1%v*V3%v)
      Y1%v = (V4%v*X2%v*V3%v)
      Y2%v = SIN(V4%v)
          end if
          if (our_rev_mode%tape) then
C taping
      V3%v = (X1%v*X2%v)
      OpenAD_lin_0 = X2%v
      OpenAD_lin_1 = X1%v
      V4%v = (X1%v*V3%v)
      OpenAD_lin_2 = V3%v
      OpenAD_lin_3 = X1%v
      OpenAD_tmp_0 = (X2%v*V3%v)
      Y1%v = (V4%v*OpenAD_tmp_0)
      OpenAD_lin_4 = OpenAD_tmp_0
      OpenAD_lin_6 = V3%v
      OpenAD_lin_7 = X2%v
      OpenAD_lin_5 = V4%v
      Y2%v = SIN(V4%v)
      OpenAD_lin_8 = COS(V4%v)
      OpenAD_acc_0 = (OpenAD_lin_6*OpenAD_lin_5)
      OpenAD_acc_1 = (OpenAD_lin_7*OpenAD_lin_5+OpenAD_lin_3*OpenAD_lin_
     +4)
      OpenAD_acc_2 = (OpenAD_lin_3*OpenAD_lin_8)
      OpenAD_acc_3 = (OpenAD_lin_2*OpenAD_lin_4)
      OpenAD_acc_4 = (OpenAD_lin_2*OpenAD_lin_8)
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_4
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_0 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_4 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_5 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_6 = double_tape(double_tape_pointer)
      X1%d = X1%d+Y1%d*(OpenAD_Symbol_0)
      V3%d = V3%d+Y1%d*(OpenAD_Symbol_1)
      X2%d = X2%d+Y1%d*(OpenAD_Symbol_2)
      Y1%d = 0.0d0
      X1%d = X1%d+Y2%d*(OpenAD_Symbol_3)
      V3%d = V3%d+Y2%d*(OpenAD_Symbol_4)
      Y2%d = 0.0d0
      X2%d = X2%d+V3%d*(OpenAD_Symbol_5)
      X1%d = X1%d+V3%d*(OpenAD_Symbol_6)
      V3%d = 0.0d0
          end if
        end subroutine head
