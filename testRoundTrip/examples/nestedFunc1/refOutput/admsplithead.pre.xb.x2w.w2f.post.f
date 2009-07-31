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
      subroutine head(J,X,Y)
          use OAD_tape
          use OAD_rev
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Parameters and Result ****
C
      integer(w2f__i4) :: J
      type(active) :: X(1:J)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i8) :: t__1
      integer(w2f__i8) :: t__2
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
           integer :: iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
          if (our_rev_mode%plain) then
C original function
      Y(1)%v = 1.0
      CALL FOO()
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      Y(1)%v = 1.0
      CALL FOO()
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL FOO()
      Y(1)%d = 0.0d0
          end if
C     $OpenAD$ END REPLACEMENT
      contains
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
        subroutine FOO()
          use OAD_tape
          use OAD_rev
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
        use w2f__types
        use OAD_active
        implicit none
C
C       **** Global Variables & Derived Type Definitions ****
C
        real(w2f__8) :: OpenAD_Symbol_0
        integer(w2f__i8) :: OpenAD_Symbol_1
        integer(w2f__i8) :: OpenAD_Symbol_2
        integer(w2f__i8) :: OpenAD_Symbol_3
        integer(w2f__i8) :: OpenAD_Symbol_4
        integer(w2f__i8) :: OpenAD_Symbol_5
        integer(w2f__i8) :: OpenAD_Symbol_6
        real(w2f__8) :: OpenAD_lin_0
        real(w2f__8) :: OpenAD_lin_1
        type(active) :: OpenAD_prop_0
C
C       **** Local Variables and Functions ****
C
        integer(w2f__i4) :: I
        integer(w2f__i8) :: OpenAD_Symbol_7
        real(w2f__8) :: OpenAD_Symbol_8
        real(w2f__8) :: OpenAD_Symbol_9
           integer :: iaddr
          external iaddr
C
C       **** Statements ****
C
          if (our_rev_mode%plain) then
C original function
        DO I = 1,J,1
          Y(1)%v = (X(J)%v*Y(1)%v)
        END DO
          end if
          if (our_rev_mode%tape) then
C taping
        OpenAD_Symbol_3 = 0_w2f__i8
        DO I = 1,J,1
          OpenAD_Symbol_0 = (X(J)%v*Y(1)%v)
          OpenAD_lin_0 = Y(1)%v
          OpenAD_lin_1 = X(J)%v
          Y(1)%v = OpenAD_Symbol_0
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = J
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_3 = (INT(OpenAD_Symbol_3)+INT(1_w2f__i8))
        END DO
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
        integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
        OpenAD_Symbol_2 = 1
        do while (INT(OpenAD_Symbol_2).LE.INT(OpenAD_Symbol_1))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_8 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_9 = double_tape(double_tape_pointer)
          OpenAD_prop_0%d = OpenAD_prop_0%d+Y(1)%d*(OpenAD_Symbol_8)
          X(INT(OpenAD_Symbol_7))%d = X(INT(OpenAD_Symbol_7))%d+Y(1)%d*(
     +OpenAD_Symbol_9)
          Y(1)%d = 0.0d0
          Y(1)%d = Y(1)%d+OpenAD_prop_0%d
          OpenAD_prop_0%d = 0.0d0
          OpenAD_Symbol_2 = INT(OpenAD_Symbol_2)+1
        END DO
          end if
        end subroutine FOO
        end subroutine head
