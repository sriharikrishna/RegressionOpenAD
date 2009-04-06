
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
      type(active) :: OpenAD_Symbol_10
      type(active) :: OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      INTEGER(w2f__i8) OpenAD_Symbol_22
      INTEGER(w2f__i8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:10)
      type(active) :: Y(1:10)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      REAL(w2f__8) PI
      INTEGER(w2f__i8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      INTEGER(w2f__i8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29


          integer iaddr
          external iaddr
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
! original function
C$OPENAD XXX Template ad_template.f
      PI = 3.14149999618530273438D00
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          Y(INT(I))%v = (PI*SIN(X(I)%v))
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
        ENDIF
      END DO
      Y(10)%v = (Y(1)%v*Y(9)%v)

          end if
          if (our_rev_mode%tape) then
! taping
C$OPENAD XXX Template ad_template.f
      PI = 3.14149999618530273438D00
      OpenAD_Symbol_15 = 0_w2f__i8
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          OpenAD_Symbol_0 = SIN(X(I)%v)
          Y(INT(I))%v = (PI*OpenAD_Symbol_0)
          OpenAD_Symbol_3 = COS(X(I)%v)
          OpenAD_Symbol_2 = PI
          OpenAD_Symbol_9 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
          double_tape(double_tape_pointer) = OpenAD_Symbol_9
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_16 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_16
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
          OpenAD_Symbol_5 = (-SIN(X(I)%v))
          double_tape(double_tape_pointer) = OpenAD_Symbol_5
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_17 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_17
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_15 = (INT(OpenAD_Symbol_15) + INT(1_w2f__i8))
      END DO
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_15
          integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_8 = (Y(1)%v*Y(9)%v)
      OpenAD_Symbol_6 = Y(9)%v
      OpenAD_Symbol_7 = Y(1)%v
      Y(10)%v = OpenAD_Symbol_8
          double_tape(double_tape_pointer) = OpenAD_Symbol_6
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_7
          double_tape_pointer = double_tape_pointer+1

          end if 
          if (our_rev_mode%adjoint) then
! adjoint
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_28 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_29 = double_tape(double_tape_pointer)
          OpenAD_Symbol_11%d = OpenAD_Symbol_11%d+Y(10)%d*(OpenAD_Symbol
     +_28)
          OpenAD_Symbol_10%d = OpenAD_Symbol_10%d+Y(10)%d*(OpenAD_Symbol
     +_29)
          Y(10)%d = 0.0d0
          Y(9)%d = Y(9)%d+OpenAD_Symbol_11%d
          OpenAD_Symbol_11%d = 0.0d0
          Y(1)%d = Y(1)%d+OpenAD_Symbol_10%d
          OpenAD_Symbol_10%d = 0.0d0
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_12 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_13 = 1
      DO WHILE(INT(OpenAD_Symbol_13) .LE. INT(OpenAD_Symbol_12))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_14 = integer_tape(integer_tape_pointer)
        IF(OpenAD_Symbol_14 .ne. 0) THEN
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_24 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_25 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_24))%d = X(INT(OpenAD_Symbol_24))%d+Y(INT(
     +OpenAD_Symbol_24))%d*(OpenAD_Symbol_25)
          Y(INT(OpenAD_Symbol_24))%d = 0.0d0
        ELSE
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_26 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_27 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_26))%d = X(INT(OpenAD_Symbol_26))%d+Y(INT(
     +OpenAD_Symbol_26))%d*(OpenAD_Symbol_27)
          Y(INT(OpenAD_Symbol_26))%d = 0.0d0
        ENDIF
        OpenAD_Symbol_13 = INT(OpenAD_Symbol_13) + 1
      END DO

          end if 
        end subroutine head
