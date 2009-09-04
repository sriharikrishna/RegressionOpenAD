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
      subroutine head(X,Y)
          use OAD_tape
          use OAD_rev
          use OAD_cp
C         ! original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster
      use w2f__types
      use OAD_active
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      integer(w2f__i8) :: OpenAD_Symbol_0
      integer(w2f__i8) :: OpenAD_Symbol_1
      integer(w2f__i8) :: OpenAD_Symbol_10
      integer(w2f__i8) :: OpenAD_Symbol_11
      integer(w2f__i8) :: OpenAD_Symbol_12
      integer(w2f__i8) :: OpenAD_Symbol_13
      integer(w2f__i8) :: OpenAD_Symbol_14
      integer(w2f__i8) :: OpenAD_Symbol_2
      integer(w2f__i8) :: OpenAD_Symbol_3
      integer(w2f__i8) :: OpenAD_Symbol_4
      integer(w2f__i8) :: OpenAD_Symbol_5
      integer(w2f__i8) :: OpenAD_Symbol_6
      integer(w2f__i8) :: OpenAD_Symbol_8
      integer(w2f__i8) :: OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:1)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: II
      integer(w2f__i4) :: J
      integer(w2f__i8) :: OpenAD_Symbol_15
      integer(w2f__i8) :: OpenAD_Symbol_7
C         ! checkpointing stacks and offsets
          integer :: cp_loop_variable_1,cp_loop_variable_2,cp_loop_varia
     +ble_3,cp_loop_variable_4,cp_loop_variable_5
C         ! floats 'F'
          double precision,dimension(:),allocatable,save :: theArgFStack
          integer,save :: theArgFStackoffset=0,theArgFStackSize=0
C         ! integers 'I'
          integer,dimension(:),allocatable,save :: theArgIStack
          integer,save :: theArgIStackoffset=0,theArgIStackSize=0
C         ! booleans 'B'
          logical,dimension(:),allocatable,save :: theArgBStack
          integer,save :: theArgBStackoffset=0,theArgBStackSize=0
C         ! strings 'S'
          character*(80),dimension(:),allocatable,save :: theArgSStack
          integer,save :: theArgSStackoffset=0,theArgSStackSize=0
           type(modeType) :: our_orig_mode
C external C function used in inlined code
          integer :: iaddr
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
            our_orig_mode = our_rev_mode
            our_rev_mode%arg_store = .false.
C original function
1     CONTINUE
      goto 2
2     CONTINUE
      goto 3
3     CONTINUE
      J = 1
      goto 17
4     CONTINUE
      J = J+1
17    CONTINUE
      IF (J.LE.5) THEN
        goto 5
      ELSE
        goto 15
      ENDIF
5     CONTINUE
      goto 6
6     CONTINUE
      II = 1
      goto 18
7     CONTINUE
      II = II+1
18    CONTINUE
      IF (II.LE.5) THEN
        goto 8
      ELSE
        goto 9
      ENDIF
8     CONTINUE
      goto 9
9     CONTINUE
      goto 10
10    CONTINUE
      II = 1
      goto 19
11    CONTINUE
      II = II+1
19    CONTINUE
      IF (II.LE.5) THEN
        goto 12
      ELSE
        goto 14
      ENDIF
12    CONTINUE
      Y(1)%v = X(1)%v
      goto 13
13    CONTINUE
      goto 11
14    CONTINUE
      goto 4
15    CONTINUE
      goto 16
16    CONTINUE
C original function end
            our_rev_mode = our_orig_mode
          end if
          if (our_rev_mode%tape) then
C            print*, " tape       ", our_rev_mode
            our_rev_mode%arg_store = .true.
            our_rev_mode%arg_restore = .false.
            our_rev_mode%plain = .true.
            our_rev_mode%tape = .false.
            our_rev_mode%adjoint = .false.
C taping
20    CONTINUE
      goto 21
21    CONTINUE
      OpenAD_Symbol_0 = 0_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_0
      integer_tape_pointer = integer_tape_pointer+1
      goto 22
22    CONTINUE
      goto 23
23    CONTINUE
      OpenAD_Symbol_1 = 1_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_1
      integer_tape_pointer = integer_tape_pointer+1
      goto 24
24    CONTINUE
      J = 1
      goto 43
25    CONTINUE
      J = J+1
43    CONTINUE
      IF (J.LE.5) THEN
        goto 26
      ELSE
        goto 40
      ENDIF
26    CONTINUE
      goto 27
27    CONTINUE
      OpenAD_Symbol_2 = 2_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_2
      integer_tape_pointer = integer_tape_pointer+1
      goto 28
28    CONTINUE
      II = 1
      goto 44
29    CONTINUE
      II = II+1
44    CONTINUE
      IF (II.LE.5) THEN
        goto 30
      ELSE
        goto 32
      ENDIF
30    CONTINUE
      goto 31
31    CONTINUE
      OpenAD_Symbol_3 = 3_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
      integer_tape_pointer = integer_tape_pointer+1
      goto 32
32    CONTINUE
      goto 33
33    CONTINUE
      OpenAD_Symbol_4 = 4_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
      integer_tape_pointer = integer_tape_pointer+1
      goto 34
34    CONTINUE
      II = 1
      goto 45
35    CONTINUE
      II = II+1
45    CONTINUE
      IF (II.LE.5) THEN
        goto 36
      ELSE
        goto 39
      ENDIF
36    CONTINUE
      Y(1)%v = X(1)%v
      goto 37
37    CONTINUE
      OpenAD_Symbol_5 = 5_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
      integer_tape_pointer = integer_tape_pointer+1
      goto 38
38    CONTINUE
      goto 35
39    CONTINUE
      goto 25
40    CONTINUE
      goto 41
41    CONTINUE
      OpenAD_Symbol_6 = 6_w2f__i8
      integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
      integer_tape_pointer = integer_tape_pointer+1
      goto 42
42    CONTINUE
C taping end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .false.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .false.
            our_rev_mode%adjoint = .true.
          end if
          if (our_rev_mode%adjoint) then
C            print*, " adjoint    ", our_rev_mode
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
      do while (INT(OpenAD_Symbol_7).ne.INT(0_w2f__i8))
        IF (OpenAD_Symbol_7.EQ.1) goto 68
        IF (OpenAD_Symbol_7.EQ.2) goto 69
        IF (OpenAD_Symbol_7.EQ.3) goto 70
        IF (OpenAD_Symbol_7.EQ.4) goto 71
        IF (OpenAD_Symbol_7.EQ.5) goto 72
        IF (OpenAD_Symbol_7.EQ.6) goto 73
68      CONTINUE
        goto 65
69      CONTINUE
        goto 65
70      CONTINUE
        goto 65
71      CONTINUE
        goto 65
72      CONTINUE
        X(1)%d = X(1)%d+Y(1)%d
        Y(1)%d = 0.0d0
        goto 65
73      CONTINUE
        goto 65
65      CONTINUE
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_7 = integer_tape(integer_tape_pointer)
      END DO
C adjoint end
            our_rev_mode%arg_store = .false.
            our_rev_mode%arg_restore = .true.
            our_rev_mode%plain = .false.
            our_rev_mode%tape = .true.
            our_rev_mode%adjoint = .false.
          end if
        end subroutine head
