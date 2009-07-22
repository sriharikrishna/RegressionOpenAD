
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
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
      INTEGER(w2f__i8) OpenAD_Symbol_18
      INTEGER(w2f__i8) OpenAD_Symbol_19
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_20
      INTEGER(w2f__i8) OpenAD_Symbol_21
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:3)
      type(active) :: Y(1:3)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      INTEGER(w2f__i8) OpenAD_Symbol_22
      INTEGER(w2f__i8) OpenAD_Symbol_23
      INTEGER(w2f__i8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26


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
C$OPENAD XXX Simple loop\t
      DO I = 1, 3, 1
        Y(INT(I))%v = X(I)%v
      END DO
      DO I = 1, 3, 1
        DO J = 1, 3, 1
          DO K = 1, 3, 1
            Y(INT(I))%v = (X(J)%v*Y(I)%v)
          END DO
        END DO
      END DO
          end if
          if (our_rev_mode%tape) then
! taping
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop\t
      DO I = 1, 3, 1
        Y(INT(I))%v = X(I)%v
      END DO
      OpenAD_Symbol_7 = 0_w2f__i8
      DO I = 1, 3, 1
        OpenAD_Symbol_8 = 0_w2f__i8
        DO J = 1, 3, 1
          OpenAD_Symbol_9 = 0_w2f__i8
          DO K = 1, 3, 1
            OpenAD_Symbol_0 = (X(J)%v*Y(I)%v)
            OpenAD_lin_0 = Y(I)%v
            OpenAD_lin_1 = X(J)%v
            Y(INT(I))%v = OpenAD_Symbol_0
            double_tape(double_tape_pointer) = OpenAD_lin_0
            double_tape_pointer = double_tape_pointer+1
            double_tape(double_tape_pointer) = OpenAD_lin_1
            double_tape_pointer = double_tape_pointer+1
            integer_tape(integer_tape_pointer) = I
            integer_tape_pointer = integer_tape_pointer+1
            integer_tape(integer_tape_pointer) = J
            integer_tape_pointer = integer_tape_pointer+1
            OpenAD_Symbol_9 = (INT(OpenAD_Symbol_9) + INT(1_w2f__i8))
          END DO
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_9
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_8 = (INT(OpenAD_Symbol_8) + INT(1_w2f__i8))
        END DO
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
        integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_7 = (INT(OpenAD_Symbol_7) + INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
      integer_tape_pointer = integer_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_2 = 1
      DO WHILE(INT(OpenAD_Symbol_2) .LE. INT(OpenAD_Symbol_1))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_4 = 1
        DO WHILE(INT(OpenAD_Symbol_4) .LE. INT(OpenAD_Symbol_3))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_5 = integer_tape(integer_tape_pointer)
          OpenAD_Symbol_6 = 1
          DO WHILE(INT(OpenAD_Symbol_6) .LE. INT(OpenAD_Symbol_5))
            integer_tape_pointer = integer_tape_pointer-1
            OpenAD_Symbol_23 = integer_tape(integer_tape_pointer)
            integer_tape_pointer = integer_tape_pointer-1
            OpenAD_Symbol_24 = integer_tape(integer_tape_pointer)
            double_tape_pointer = double_tape_pointer-1
            OpenAD_Symbol_25 = double_tape(double_tape_pointer)
            double_tape_pointer = double_tape_pointer-1
            OpenAD_Symbol_26 = double_tape(double_tape_pointer)
            OpenAD_prop_0%d = OpenAD_prop_0%d+Y(INT(OpenAD_Symbol_24))%d
     +*(OpenAD_Symbol_25)
            X(INT(OpenAD_Symbol_23))%d = X(INT(OpenAD_Symbol_23))%d+Y(IN
     +T(OpenAD_Symbol_24))%d*(OpenAD_Symbol_26)
            Y(INT(OpenAD_Symbol_24))%d = 0.0d0
            Y(INT(OpenAD_Symbol_24))%d = Y(INT(OpenAD_Symbol_24))%d+Open
     +AD_prop_0%d
            OpenAD_prop_0%d = 0.0d0
            OpenAD_Symbol_6 = INT(OpenAD_Symbol_6) + 1
          END DO
          OpenAD_Symbol_4 = INT(OpenAD_Symbol_4) + 1
        END DO
        OpenAD_Symbol_2 = INT(OpenAD_Symbol_2) + 1
      END DO
      I = 1 + 1 *((3 - 1) / 1)
      DO WHILE(I .GE. 1)
        X(I)%d = X(I)%d+Y(I)%d
        Y(I)%d = 0.0d0
        I = I - 1
      END DO
          end if 
        end subroutine head
