
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
       subroutine foo(X,Y)
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
      REAL(w2f__8) OpenAD_Symbol_2
C
C     **** Parameters and Result ****
C
      type(active) :: X
      type(active) :: Y
C
C     **** Statements ****
C

          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
! original function
C$OPENAD XXX Template ad_template.f
      Y%v = (X%v*2.0D00)
          end if
          if (our_rev_mode%tape) then
! taping
C$OPENAD XXX Template ad_template.f
      Y%v = (X%v*2.0D00)
      OpenAD_Symbol_2 = 2.0D00
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
          X%d = X%d+Y%d*2.0D00
          Y%d = 0.0d0
          end if 
        end subroutine foo
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
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_0
      type(active) :: OpenAD_Symbol_1
      type(active) :: OpenAD_Symbol_4
      type(active) :: OpenAD_Symbol_5
      type(active) :: OpenAD_Symbol_6
      type(active) :: OpenAD_Symbol_8
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) K
      INTEGER(w2f__i4) L
      REAL(w2f__8) P(1 : 2)
      type(active) :: Q(1 : 2)
      REAL(w2f__8) R
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
C$OPENAD XXX Template ad_template.f
      K = 1
      CALL foo(X(K),Y)
      Q(1)%v = Y%v
      Y%v = Q(1)%v
      P(1) = 1.0
      L = 1
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,P(K))
      CALL foo(OpenAD_Symbol_0,Q(L))
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(P(K),OpenAD_Symbol_0)
      R = P(1)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_1,R)
      CALL foo(OpenAD_Symbol_1,Q(L))
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(R,OpenAD_Symbol_1)
          end if
          if (our_rev_mode%tape) then
! taping
C$OPENAD XXX Template ad_template.f
      K = 1
      CALL foo(X(K),Y)
          integer_tape(integer_tape_pointer) = K
          integer_tape_pointer = integer_tape_pointer+1
      Q(1)%v = Y%v
      Y%v = Q(1)%v
      P(1) = 1.0
      L = 1
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_0,P(K))
      CALL foo(OpenAD_Symbol_0,Q(L))
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(P(K),OpenAD_Symbol_0)
          integer_tape(integer_tape_pointer) = K
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = L
          integer_tape_pointer = integer_tape_pointer+1
      R = P(1)
C!! requested inline of 'convert_p2a_scalar' has no defn
      CALL convert_p2a_scalar(OpenAD_Symbol_1,R)
      CALL foo(OpenAD_Symbol_1,Q(L))
C!! requested inline of 'convert_a2p_scalar' has no defn
      CALL convert_a2p_scalar(R,OpenAD_Symbol_1)
          integer_tape(integer_tape_pointer) = L
          integer_tape_pointer = integer_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
          integer_tape_pointer = integer_tape_pointer-1
          L = integer_tape(integer_tape_pointer)
      CALL foo(OpenAD_Symbol_6,Q(L))
          integer_tape_pointer = integer_tape_pointer-1
          L = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          K = integer_tape(integer_tape_pointer)
      CALL foo(OpenAD_Symbol_8,Q(L))
          OpenAD_Symbol_5%d = OpenAD_Symbol_5%d+Y%d
          Y%d = 0.0d0
          Q(1)%d = Q(1)%d+OpenAD_Symbol_5%d
          OpenAD_Symbol_5%d = 0.0d0
          OpenAD_Symbol_4%d = OpenAD_Symbol_4%d+Q(1)%d
          Q(1)%d = 0.0d0
          Y%d = Y%d+OpenAD_Symbol_4%d
          OpenAD_Symbol_4%d = 0.0d0
          integer_tape_pointer = integer_tape_pointer-1
          K = integer_tape(integer_tape_pointer)
      CALL foo(X(K),Y)
          end if 
        end subroutine head