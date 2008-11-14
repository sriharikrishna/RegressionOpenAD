
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
       subroutine head(X,Y)
          use OAD_tape
          use OAD_rev

          ! original arguments get inserted before version
          ! and declared here together with all local variables
          ! generated by xaifBooster

      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      type(active) :: Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) OAD_CTMP0
      REAL(w2f__8) P
      REAL(w2f__8) Q
      EXTERNAL sq
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C

          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
! original function
      OAD_CTMP0 = 2
      CALL sq(OAD_CTMP0,X,Y)
      P = 2.0D00
      Q = (P * P)
          end if
          if (our_rev_mode%tape) then
! taping
      OAD_CTMP0 = 2
      CALL sq(OAD_CTMP0,X,Y)
      P = 2.0D00
      Q = (P * P)
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
      CALL sq(OAD_CTMP0,X,Y)
          end if 
        end subroutine head
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
       subroutine sq(N,U,V)
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
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
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
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) N
      type(active) :: U(1 : 2)
      type(active) :: V(1 : 2)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
C
C     **** Statements ****
C

          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
! original function
      V(1)%v = SQRT((U(1)%v**2)+(U(2)%v**2))
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*U(1)%v*2.0D00)
          end if
          if (our_rev_mode%tape) then
! taping
      OpenAD_Symbol_0 = SQRT((U(1)%v**2)+(U(2)%v**2))
      OpenAD_Symbol_4 = (2*(U(1)%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_2 = 1_w2f__i8
      OpenAD_Symbol_6 = (2*(U(2)%v**(2-INT(1 _w2f__i8))))
      OpenAD_Symbol_3 = 1_w2f__i8
      OpenAD_Symbol_1 = (5.0D-01 / OpenAD_Symbol_0)
      V(1)%v = OpenAD_Symbol_0
      OpenAD_Symbol_31 = (OpenAD_Symbol_4 * OpenAD_Symbol_1)
      OpenAD_Symbol_32 = (OpenAD_Symbol_6 * OpenAD_Symbol_1)
          double_tape(double_tape_pointer) = OpenAD_Symbol_31
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_32
          double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_26 = (U(1)%v*2.0D00)
      V(2)%v = ((U(1)%v**3)+SIN(U(2)%v)+(U(2)%v/U(1)%v)-COS(U(1)%v)+(U(2
     +)%v**3)+U(2)%v*OpenAD_Symbol_26)
      OpenAD_Symbol_14 = (3*(U(1)%v**(3-INT(1 _w2f__i8))))
      OpenAD_Symbol_12 = 1_w2f__i8
      OpenAD_Symbol_20 = COS(U(2)%v)
      OpenAD_Symbol_18 = 1_w2f__i8
      OpenAD_Symbol_21 = (INT(1 _w2f__i8)/U(1)%v)
      OpenAD_Symbol_22 = (-(U(2)%v/(U(1)%v*U(1)%v)))
      OpenAD_Symbol_19 = 1_w2f__i8
      OpenAD_Symbol_16 = 1_w2f__i8
      OpenAD_Symbol_23 = (-SIN(U(1)%v))
      OpenAD_Symbol_17 = (-1_w2f__i8)
      OpenAD_Symbol_13 = 1_w2f__i8
      OpenAD_Symbol_10 = 1_w2f__i8
      OpenAD_Symbol_24 = (3*(U(2)%v**(3-INT(1 _w2f__i8))))
      OpenAD_Symbol_11 = 1_w2f__i8
      OpenAD_Symbol_8 = 1_w2f__i8
      OpenAD_Symbol_27 = OpenAD_Symbol_26
      OpenAD_Symbol_29 = 2.0D00
      OpenAD_Symbol_28 = U(2)%v
      OpenAD_Symbol_9 = 1_w2f__i8
      OpenAD_Symbol_33 = (2.0D00 * OpenAD_Symbol_28)
      OpenAD_Symbol_34 = (OpenAD_Symbol_23 * INT((-1_w2f__i8)))
          double_tape(double_tape_pointer) = OpenAD_Symbol_27
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_33
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_24
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_34
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_21
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_22
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_20
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_14
          double_tape_pointer = double_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_35 = double_tape(double_tape_pointer)
          U(1)%d = U(1)%d+V(2)%d*OpenAD_Symbol_35
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_36 = double_tape(double_tape_pointer)
          U(2)%d = U(2)%d+V(2)%d*OpenAD_Symbol_36
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_37 = double_tape(double_tape_pointer)
          U(1)%d = U(1)%d+V(2)%d*OpenAD_Symbol_37
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_38 = double_tape(double_tape_pointer)
          U(2)%d = U(2)%d+V(2)%d*OpenAD_Symbol_38
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_39 = double_tape(double_tape_pointer)
          U(1)%d = U(1)%d+V(2)%d*OpenAD_Symbol_39
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_40 = double_tape(double_tape_pointer)
          U(2)%d = U(2)%d+V(2)%d*OpenAD_Symbol_40
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_41 = double_tape(double_tape_pointer)
          U(1)%d = U(1)%d+V(2)%d*OpenAD_Symbol_41
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_42 = double_tape(double_tape_pointer)
          U(2)%d = U(2)%d+V(2)%d*OpenAD_Symbol_42
          V(2)%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_43 = double_tape(double_tape_pointer)
          U(2)%d = U(2)%d+V(1)%d*OpenAD_Symbol_43
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_44 = double_tape(double_tape_pointer)
          U(1)%d = U(1)%d+V(1)%d*OpenAD_Symbol_44
          V(1)%d = 0.0d0
          end if 
        end subroutine sq
