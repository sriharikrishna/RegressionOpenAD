
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

      SUBROUTINE foo(X, Y, L, U, S)
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
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      type(active) :: OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      type(active) :: Y
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) U
      INTEGER(w2f__i4) S
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_9


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
C     **** Statements ****
C

          if (our_rev_mode%arg_store) then 
C store arguments
          call cp_store_real_scalar(Y%v,theArgFStack,theArgFStackoffset,
     +theArgFStackSize)
          call cp_store_int_scalar(L,theArgIStack,theArgIStackoffset,the
     +ArgIStackSize)
          call cp_store_int_scalar(U,theArgIStack,theArgIStackoffset,the
     +ArgIStackSize)
          call cp_store_int_scalar(S,theArgIStack,theArgIStackoffset,the
     +ArgIStackSize)
          call cp_store_real_vector(X,size(X),theArgFStack,theArgFStacko
     +ffset,theArgFStackSize)

          end if 
          if (our_rev_mode%arg_restore) then
C restore arguments
          do cp_loop_variable_1 = ubound(X,1),lbound(X,1),-1
             X(cp_loop_variable_1)%v = theArgFStack(theArgFStackoffset)
             theArgFStackoffset = theArgFStackoffset-1
C          write(*,'(A,EN26.16E3)') "restore(v)  ", 
C     +X(cp_loop_variable_1)%v
          enddo
          S = theArgIStack(theArgIStackoffset)
C          write(*,'(A,I5,I5)') "restore(s)  ", S, theArgIStackOffset
          theArgIStackoffset = theArgIStackoffset-1
          U = theArgIStack(theArgIStackoffset)
C          write(*,'(A,I5,I5)') "restore(s)  ", U, theArgIStackOffset
          theArgIStackoffset = theArgIStackoffset-1
          L = theArgIStack(theArgIStackoffset)
C          write(*,'(A,I5,I5)') "restore(s)  ", L, theArgIStackOffset
          theArgIStackoffset = theArgIStackoffset-1
          Y%v = theArgFStack(theArgFStackoffset)
C          write(*,'(A,EN26.16E3)') "restore(s)  ", Y%v
          theArgFStackoffset = theArgFStackoffset-1

          end if
          if (our_rev_mode%plain) then
            our_orig_mode=our_rev_mode
            our_rev_mode%arg_store=.FALSE.
C original function
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = L, U, S
        Y%v = (X(I)%v*Y%v)
      END DO

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
C$OPENAD XXX Simple loop
      DO I = L, U, S
        OpenAD_Symbol_2 = (X(I)%v*Y%v)
        OpenAD_Symbol_0 = Y%v
        OpenAD_Symbol_1 = X(I)%v
        Y%v = OpenAD_Symbol_2
          double_tape(double_tape_pointer) = OpenAD_Symbol_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_1
          double_tape_pointer = double_tape_pointer+1
      END DO
          integer_tape(integer_tape_pointer) = L
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = U
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = S
          integer_tape_pointer = integer_tape_pointer+1

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
          integer_tape_pointer = integer_tape_pointer-1
          S = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          U = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          L = integer_tape(integer_tape_pointer)
      I = L + S * ABS((L - U) / S)
      DO WHILE(((S .GT. 0.0D00) .AND.(I .GE. L)) .OR.((S .LT. 0.0D00)
     >  .AND.(I .LE. L)))
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_8 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_9 = double_tape(double_tape_pointer)
          OpenAD_Symbol_3%d = OpenAD_Symbol_3%d+Y%d*(OpenAD_Symbol_8)
          X(I)%d = X(I)%d+Y%d*(OpenAD_Symbol_9)
          Y%d = 0.0d0
          Y%d = Y%d+OpenAD_Symbol_3%d
          OpenAD_Symbol_3%d = 0.0d0
        I = I - S
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
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

      SUBROUTINE head(X, Y)
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) OAD_CTMP0
      INTEGER(w2f__i4) OAD_CTMP1
      INTEGER(w2f__i4) OAD_CTMP10
      INTEGER(w2f__i4) OAD_CTMP11
      INTEGER(w2f__i4) OAD_CTMP2
      INTEGER(w2f__i4) OAD_CTMP3
      INTEGER(w2f__i4) OAD_CTMP4
      INTEGER(w2f__i4) OAD_CTMP5
      INTEGER(w2f__i4) OAD_CTMP6
      INTEGER(w2f__i4) OAD_CTMP7
      INTEGER(w2f__i4) OAD_CTMP8
      INTEGER(w2f__i4) OAD_CTMP9
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
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
      Y(1:4)%v = X(1:4)%v
      OAD_CTMP0 = 1
      OAD_CTMP1 = 3
      OAD_CTMP2 = 1
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
      OAD_CTMP3 = 3
      OAD_CTMP4 = 1
      OAD_CTMP5 = (-1)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      OAD_CTMP6 = 1
      OAD_CTMP7 = 5
      OAD_CTMP8 = 2
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      OAD_CTMP9 = 5
      OAD_CTMP10 = 1
      OAD_CTMP11 = (-2)
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)

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
      Y(1:4)%v = X(1:4)%v
      OAD_CTMP0 = 1
      OAD_CTMP1 = 3
      OAD_CTMP2 = 1
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
      OAD_CTMP3 = 3
      OAD_CTMP4 = 1
      OAD_CTMP5 = (-1)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      OAD_CTMP6 = 1
      OAD_CTMP7 = 5
      OAD_CTMP8 = 2
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      OAD_CTMP9 = 5
      OAD_CTMP10 = 1
      OAD_CTMP11 = (-2)
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)

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
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
          X(1:4)%d = X(1:4)%d+Y(1:4)%d
          Y(1:4)%d = 0.0d0

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if 
        end subroutine head
