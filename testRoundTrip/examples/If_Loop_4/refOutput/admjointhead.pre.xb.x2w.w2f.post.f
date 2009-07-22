
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
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      type(active) :: OpenAD_prop_0
      type(active) :: OpenAD_prop_1
      REAL(w2f__8) OpenAD_tmp_0
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
      INTEGER(w2f__i8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_18


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
C$OPENAD DEPENDENT(Y)
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
      PI = 3.14149999618530273438D00
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          Y(INT(I))%v = (PI*SIN(X(I)%v))
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
        ENDIF
      END DO
      Y(10)%v = (Y(1)%v*Y(9)%v)

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
      PI = 3.14149999618530273438D00
      OpenAD_Symbol_4 = 0_w2f__i8
      DO I = 1, 9, 1
        IF(I .GT. 5) THEN
          OpenAD_tmp_0 = SIN(X(I)%v)
          Y(INT(I))%v = (PI*OpenAD_tmp_0)
          OpenAD_lin_2 = COS(X(I)%v)
          OpenAD_lin_1 = PI
          OpenAD_acc_0 = (OpenAD_lin_2 * OpenAD_lin_1)
          double_tape(double_tape_pointer) = OpenAD_acc_0
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_5 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          Y(INT(I))%v = (PI+COS(X(I)%v))
          OpenAD_lin_4 = (-SIN(X(I)%v))
          double_tape(double_tape_pointer) = OpenAD_lin_4
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          OpenAD_Symbol_6 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_4 = (INT(OpenAD_Symbol_4) + INT(1_w2f__i8))
      END DO
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_0 = (Y(1)%v*Y(9)%v)
      OpenAD_lin_5 = Y(9)%v
      OpenAD_lin_6 = Y(1)%v
      Y(10)%v = OpenAD_Symbol_0
      double_tape(double_tape_pointer) = OpenAD_lin_5
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_6
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
      OpenAD_Symbol_17 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_18 = double_tape(double_tape_pointer)
      OpenAD_prop_1%d = OpenAD_prop_1%d+Y(10)%d*(OpenAD_Symbol_17)
      OpenAD_prop_0%d = OpenAD_prop_0%d+Y(10)%d*(OpenAD_Symbol_18)
      Y(10)%d = 0.0d0
      Y(9)%d = Y(9)%d+OpenAD_prop_1%d
      OpenAD_prop_1%d = 0.0d0
      Y(1)%d = Y(1)%d+OpenAD_prop_0%d
      OpenAD_prop_0%d = 0.0d0
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_2 = 1
      DO WHILE(INT(OpenAD_Symbol_2) .LE. INT(OpenAD_Symbol_1))
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_3 = integer_tape(integer_tape_pointer)
        IF(OpenAD_Symbol_3 .ne. 0) THEN
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_13 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_14 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_13))%d = X(INT(OpenAD_Symbol_13))%d+Y(INT(
     +OpenAD_Symbol_13))%d*(OpenAD_Symbol_14)
          Y(INT(OpenAD_Symbol_13))%d = 0.0d0
        ELSE
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_15 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_16 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_15))%d = X(INT(OpenAD_Symbol_15))%d+Y(INT(
     +OpenAD_Symbol_15))%d*(OpenAD_Symbol_16)
          Y(INT(OpenAD_Symbol_15))%d = 0.0d0
        ENDIF
        OpenAD_Symbol_2 = INT(OpenAD_Symbol_2) + 1
      END DO

C adjoint end
            our_rev_mode%arg_store=.FALSE.
            our_rev_mode%arg_restore=.TRUE.
            our_rev_mode%plain=.FALSE.
            our_rev_mode%tape=.TRUE.
            our_rev_mode%adjoint=.FALSE.
          end if 
        end subroutine head
