
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
       subroutine box_timestep(GAMMALOC,FLDSTAR,EXTFORLOC,UVELLOC,FLDNOW
     +,FLDOLD,FLDNEW)
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
      REAL(w2f__8) OpenAD_Symbol_11
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_31
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_36
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_49
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_73
      type(active) :: OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_76
      type(active) :: OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      type(active) :: OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_81
      type(active) :: OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_83
      REAL(w2f__8) OpenAD_Symbol_84
      type(active) :: OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_Symbol_86
      type(active) :: OpenAD_Symbol_87
      INTEGER(w2f__i8) OpenAD_Symbol_88
      INTEGER(w2f__i8) OpenAD_Symbol_89
      REAL(w2f__8) OpenAD_Symbol_9
      INTEGER(w2f__i8) OpenAD_Symbol_90
      INTEGER(w2f__i8) OpenAD_Symbol_91
      INTEGER(w2f__i8) OpenAD_Symbol_92
      INTEGER(w2f__i8) OpenAD_Symbol_93
      INTEGER(w2f__i8) OpenAD_Symbol_94
      INTEGER(w2f__i8) OpenAD_Symbol_95
      INTEGER(w2f__i8) OpenAD_Symbol_96
      INTEGER(w2f__i8) OpenAD_Symbol_97
      INTEGER(w2f__i8) OpenAD_Symbol_98
      INTEGER(w2f__i8) OpenAD_Symbol_99
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) GAMMALOC
      REAL(w2f__8) FLDSTAR(1 : 2)
      REAL(w2f__8) EXTFORLOC(1 : 2)
      REAL(w2f__8) UVELLOC
      type(active) :: FLDNOW(1 : 3)
      REAL(w2f__8) FLDOLD(1 : 3)
      type(active) :: FLDNEW(1 : 3)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) DELTA_T
      type(active) :: DFLDDT(1 : 3)
      INTEGER(w2f__i4) L
      REAL(w2f__8) VOL(1 : 3)
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_104
      INTEGER(w2f__i8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_109
      REAL(w2f__8) OpenAD_Symbol_110
      REAL(w2f__8) OpenAD_Symbol_111
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(FLDNOW)
C$OPENAD DEPENDENT(FLDNEW)
C
C     **** Statements ****
C

          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
! original function
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF(UVELLOC .GE. 0.0D00) THEN
        DFLDDT(1)%v = ((EXTFORLOC(1)+VOL(1)*GAMMALOC*(FLDSTAR(1)-FLDNOW(
     +1)%v)+UVELLOC*(FLDNOW(3)%v-FLDNOW(1)%v))/VOL(1))
        DFLDDT(2)%v = ((EXTFORLOC(2)+VOL(2)*GAMMALOC*(FLDSTAR(2)-FLDNOW(
     +2)%v)+UVELLOC*(FLDNOW(1)%v-FLDNOW(2)%v))/VOL(2))
        DFLDDT(3)%v = ((UVELLOC*(FLDNOW(2)%v-FLDNOW(3)%v))/VOL(3))
      ELSE
        DFLDDT(1)%v = ((EXTFORLOC(1)+VOL(1)*GAMMALOC*(FLDSTAR(1)-FLDNOW(
     +1)%v)-UVELLOC*(FLDNOW(2)%v-FLDNOW(1)%v))/VOL(1))
        DFLDDT(2)%v = ((EXTFORLOC(2)+VOL(2)*GAMMALOC*(FLDSTAR(2)-FLDNOW(
     +2)%v)-UVELLOC*(FLDNOW(3)%v-FLDNOW(2)%v))/VOL(2))
        DFLDDT(3)%v = (-((UVELLOC*(FLDNOW(1)%v-FLDNOW(3)%v))/VOL(3)))
      ENDIF
      DO L = 1, 3, 1
        FLDNEW(INT(L))%v = (FLDOLD(L)+DFLDDT(L)%v*DELTA_T*2.0D00)
      END DO
          end if
          if (our_rev_mode%tape) then
! taping
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF(UVELLOC .GE. 0.0D00) THEN
        OpenAD_Symbol_7 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_Symbol_4 = (GAMMALOC * OpenAD_Symbol_7)
        OpenAD_Symbol_11 = (FLDNOW(3)%v-FLDNOW(1)%v)
        OpenAD_Symbol_0 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_4 +  UV
     +ELLOC * OpenAD_Symbol_11)
        DFLDDT(1)%v = (OpenAD_Symbol_0/VOL(1))
        OpenAD_Symbol_9 = GAMMALOC
        OpenAD_Symbol_6 = VOL(1)
        OpenAD_Symbol_13 = UVELLOC
        OpenAD_Symbol_1 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_72 = (OpenAD_Symbol_13 * OpenAD_Symbol_1)
        OpenAD_Symbol_73 = (INT((-1_w2f__i8)) * OpenAD_Symbol_9 *  OpenA
     +D_Symbol_6 * OpenAD_Symbol_1)
          double_tape(double_tape_pointer) = OpenAD_Symbol_72
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_73
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_21 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_Symbol_18 = (GAMMALOC * OpenAD_Symbol_21)
        OpenAD_Symbol_25 = (FLDNOW(1)%v-FLDNOW(2)%v)
        OpenAD_Symbol_14 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_18 +  
     +UVELLOC * OpenAD_Symbol_25)
        DFLDDT(2)%v = (OpenAD_Symbol_14/VOL(2))
        OpenAD_Symbol_23 = GAMMALOC
        OpenAD_Symbol_20 = VOL(2)
        OpenAD_Symbol_27 = UVELLOC
        OpenAD_Symbol_15 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_75 = (OpenAD_Symbol_27 * OpenAD_Symbol_15)
        OpenAD_Symbol_76 = (INT((-1_w2f__i8)) * OpenAD_Symbol_23 *  Open
     +AD_Symbol_20 * OpenAD_Symbol_15)
          double_tape(double_tape_pointer) = OpenAD_Symbol_75
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_76
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_31 = (FLDNOW(2)%v-FLDNOW(3)%v)
        OpenAD_Symbol_28 = (UVELLOC * OpenAD_Symbol_31)
        DFLDDT(3)%v = (OpenAD_Symbol_28/VOL(3))
        OpenAD_Symbol_33 = UVELLOC
        OpenAD_Symbol_29 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_78 = (OpenAD_Symbol_33 * OpenAD_Symbol_29)
          double_tape(double_tape_pointer) = OpenAD_Symbol_78
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_91 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_91
          integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OpenAD_Symbol_45 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_Symbol_42 = (GAMMALOC * OpenAD_Symbol_45)
        OpenAD_Symbol_49 = (FLDNOW(2)%v-FLDNOW(1)%v)
        OpenAD_Symbol_38 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_42 -  
     +UVELLOC * OpenAD_Symbol_49)
        DFLDDT(1)%v = (OpenAD_Symbol_38/VOL(1))
        OpenAD_Symbol_47 = GAMMALOC
        OpenAD_Symbol_44 = VOL(1)
        OpenAD_Symbol_51 = UVELLOC
        OpenAD_Symbol_39 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_80 = (OpenAD_Symbol_51 * INT((-1_w2f__i8)) *  Open
     +AD_Symbol_39)
        OpenAD_Symbol_81 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47 *  Open
     +AD_Symbol_44 * OpenAD_Symbol_39)
          double_tape(double_tape_pointer) = OpenAD_Symbol_80
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_81
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_59 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_Symbol_56 = (GAMMALOC * OpenAD_Symbol_59)
        OpenAD_Symbol_63 = (FLDNOW(3)%v-FLDNOW(2)%v)
        OpenAD_Symbol_52 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_56 -  
     +UVELLOC * OpenAD_Symbol_63)
        DFLDDT(2)%v = (OpenAD_Symbol_52/VOL(2))
        OpenAD_Symbol_61 = GAMMALOC
        OpenAD_Symbol_58 = VOL(2)
        OpenAD_Symbol_65 = UVELLOC
        OpenAD_Symbol_53 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_83 = (OpenAD_Symbol_65 * INT((-1_w2f__i8)) *  Open
     +AD_Symbol_53)
        OpenAD_Symbol_84 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61 *  Open
     +AD_Symbol_58 * OpenAD_Symbol_53)
          double_tape(double_tape_pointer) = OpenAD_Symbol_83
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_84
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_69 = (FLDNOW(1)%v-FLDNOW(3)%v)
        OpenAD_Symbol_66 = (UVELLOC * OpenAD_Symbol_69)
        DFLDDT(3)%v = (-(OpenAD_Symbol_66/VOL(3)))
        OpenAD_Symbol_71 = UVELLOC
        OpenAD_Symbol_67 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_86 = (OpenAD_Symbol_71 * OpenAD_Symbol_67 * INT(( 
     +-1_w2f__i8)))
          double_tape(double_tape_pointer) = OpenAD_Symbol_86
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_92 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_92
          integer_tape_pointer = integer_tape_pointer+1
      ENDIF
      OpenAD_Symbol_93 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_Symbol_35 = (DELTA_T * 2.0D00)
        FLDNEW(INT(L))%v = (FLDOLD(L)+DFLDDT(L)%v*OpenAD_Symbol_35)
        OpenAD_Symbol_36 = OpenAD_Symbol_35
          double_tape(double_tape_pointer) = OpenAD_Symbol_36
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = L
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_93 = (INT(OpenAD_Symbol_93) + INT(1_w2f__i8))
      END DO
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_93
          integer_tape_pointer = integer_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_88 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_89 = 1
      DO WHILE(INT(OpenAD_Symbol_89) .LE. INT(OpenAD_Symbol_88))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_105 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_106 = double_tape(double_tape_pointer)
          DFLDDT(INT(OpenAD_Symbol_105))%d = DFLDDT(INT(OpenAD_Symbol_10
     +5))%d+FLDNEW(INT(OpenAD_Symbol_105))%d*OpenAD_Symbol_106
          FLDNEW(INT(OpenAD_Symbol_105))%d = 0.0d0
        OpenAD_Symbol_89 = INT(OpenAD_Symbol_89) + 1
      END DO
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_90 = integer_tape(integer_tape_pointer)
      IF(OpenAD_Symbol_90 .ne. 0) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_100 = double_tape(double_tape_pointer)
          OpenAD_Symbol_79%d = OpenAD_Symbol_79%d+DFLDDT(3)%d*OpenAD_Sym
     +bol_100
          DFLDDT(3)%d = 0.0d0
          FLDNOW(3)%d = FLDNOW(3)%d+OpenAD_Symbol_79%d*-1 _w2f__i8
          FLDNOW(2)%d = FLDNOW(2)%d+OpenAD_Symbol_79%d*1 _w2f__i8
          OpenAD_Symbol_79%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_101 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_102 = double_tape(double_tape_pointer)
          FLDNOW(2)%d = FLDNOW(2)%d+DFLDDT(2)%d*OpenAD_Symbol_101
          OpenAD_Symbol_77%d = OpenAD_Symbol_77%d+DFLDDT(2)%d*OpenAD_Sym
     +bol_102
          DFLDDT(2)%d = 0.0d0
          FLDNOW(2)%d = FLDNOW(2)%d+OpenAD_Symbol_77%d*-1 _w2f__i8
          FLDNOW(1)%d = FLDNOW(1)%d+OpenAD_Symbol_77%d*1 _w2f__i8
          OpenAD_Symbol_77%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_103 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_104 = double_tape(double_tape_pointer)
          FLDNOW(1)%d = FLDNOW(1)%d+DFLDDT(1)%d*OpenAD_Symbol_103
          OpenAD_Symbol_74%d = OpenAD_Symbol_74%d+DFLDDT(1)%d*OpenAD_Sym
     +bol_104
          DFLDDT(1)%d = 0.0d0
          FLDNOW(1)%d = FLDNOW(1)%d+OpenAD_Symbol_74%d*-1 _w2f__i8
          FLDNOW(3)%d = FLDNOW(3)%d+OpenAD_Symbol_74%d*1 _w2f__i8
          OpenAD_Symbol_74%d = 0.0d0
      ELSE
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_107 = double_tape(double_tape_pointer)
          OpenAD_Symbol_87%d = OpenAD_Symbol_87%d+DFLDDT(3)%d*OpenAD_Sym
     +bol_107
          DFLDDT(3)%d = 0.0d0
          FLDNOW(3)%d = FLDNOW(3)%d+OpenAD_Symbol_87%d*-1 _w2f__i8
          FLDNOW(1)%d = FLDNOW(1)%d+OpenAD_Symbol_87%d*1 _w2f__i8
          OpenAD_Symbol_87%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_108 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_109 = double_tape(double_tape_pointer)
          FLDNOW(2)%d = FLDNOW(2)%d+DFLDDT(2)%d*OpenAD_Symbol_108
          OpenAD_Symbol_85%d = OpenAD_Symbol_85%d+DFLDDT(2)%d*OpenAD_Sym
     +bol_109
          DFLDDT(2)%d = 0.0d0
          FLDNOW(2)%d = FLDNOW(2)%d+OpenAD_Symbol_85%d*-1 _w2f__i8
          FLDNOW(3)%d = FLDNOW(3)%d+OpenAD_Symbol_85%d*1 _w2f__i8
          OpenAD_Symbol_85%d = 0.0d0
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_110 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_111 = double_tape(double_tape_pointer)
          FLDNOW(1)%d = FLDNOW(1)%d+DFLDDT(1)%d*OpenAD_Symbol_110
          OpenAD_Symbol_82%d = OpenAD_Symbol_82%d+DFLDDT(1)%d*OpenAD_Sym
     +bol_111
          DFLDDT(1)%d = 0.0d0
          FLDNOW(1)%d = FLDNOW(1)%d+OpenAD_Symbol_82%d*-1 _w2f__i8
          FLDNOW(2)%d = FLDNOW(2)%d+OpenAD_Symbol_82%d*1 _w2f__i8
          OpenAD_Symbol_82%d = 0.0d0
      ENDIF
          end if 
        end subroutine box_timestep
