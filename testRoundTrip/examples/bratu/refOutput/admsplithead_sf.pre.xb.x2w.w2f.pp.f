
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
       subroutine head(X,F)
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
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_110
      REAL(w2f__8) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
      REAL(w2f__8) OpenAD_Symbol_119
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_121
      REAL(w2f__8) OpenAD_Symbol_122
      REAL(w2f__8) OpenAD_Symbol_125
      REAL(w2f__8) OpenAD_Symbol_127
      REAL(w2f__8) OpenAD_Symbol_128
      REAL(w2f__8) OpenAD_Symbol_129
      REAL(w2f__8) OpenAD_Symbol_130
      REAL(w2f__8) OpenAD_Symbol_131
      REAL(w2f__8) OpenAD_Symbol_133
      REAL(w2f__8) OpenAD_Symbol_134
      REAL(w2f__8) OpenAD_Symbol_135
      REAL(w2f__8) OpenAD_Symbol_136
      REAL(w2f__8) OpenAD_Symbol_137
      REAL(w2f__8) OpenAD_Symbol_138
      REAL(w2f__8) OpenAD_Symbol_139
      REAL(w2f__8) OpenAD_Symbol_14
      REAL(w2f__8) OpenAD_Symbol_140
      REAL(w2f__8) OpenAD_Symbol_141
      REAL(w2f__8) OpenAD_Symbol_142
      REAL(w2f__8) OpenAD_Symbol_143
      REAL(w2f__8) OpenAD_Symbol_144
      REAL(w2f__8) OpenAD_Symbol_145
      REAL(w2f__8) OpenAD_Symbol_146
      REAL(w2f__8) OpenAD_Symbol_147
      REAL(w2f__8) OpenAD_Symbol_148
      REAL(w2f__8) OpenAD_Symbol_149
      REAL(w2f__8) OpenAD_Symbol_15
      REAL(w2f__8) OpenAD_Symbol_150
      REAL(w2f__8) OpenAD_Symbol_151
      REAL(w2f__8) OpenAD_Symbol_152
      type(active) :: OpenAD_Symbol_153
      REAL(w2f__8) OpenAD_Symbol_154
      REAL(w2f__8) OpenAD_Symbol_155
      REAL(w2f__8) OpenAD_Symbol_156
      REAL(w2f__8) OpenAD_Symbol_157
      REAL(w2f__8) OpenAD_Symbol_158
      REAL(w2f__8) OpenAD_Symbol_159
      REAL(w2f__8) OpenAD_Symbol_16
      type(active) :: OpenAD_Symbol_160
      REAL(w2f__8) OpenAD_Symbol_161
      REAL(w2f__8) OpenAD_Symbol_162
      REAL(w2f__8) OpenAD_Symbol_163
      REAL(w2f__8) OpenAD_Symbol_164
      REAL(w2f__8) OpenAD_Symbol_165
      REAL(w2f__8) OpenAD_Symbol_166
      REAL(w2f__8) OpenAD_Symbol_167
      REAL(w2f__8) OpenAD_Symbol_168
      REAL(w2f__8) OpenAD_Symbol_169
      REAL(w2f__8) OpenAD_Symbol_17
      REAL(w2f__8) OpenAD_Symbol_170
      REAL(w2f__8) OpenAD_Symbol_171
      REAL(w2f__8) OpenAD_Symbol_172
      type(active) :: OpenAD_Symbol_173
      type(active) :: OpenAD_Symbol_174
      REAL(w2f__8) OpenAD_Symbol_175
      REAL(w2f__8) OpenAD_Symbol_176
      REAL(w2f__8) OpenAD_Symbol_177
      REAL(w2f__8) OpenAD_Symbol_178
      REAL(w2f__8) OpenAD_Symbol_179
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_180
      type(active) :: OpenAD_Symbol_181
      INTEGER(w2f__i8) OpenAD_Symbol_182
      INTEGER(w2f__i8) OpenAD_Symbol_183
      INTEGER(w2f__i8) OpenAD_Symbol_184
      INTEGER(w2f__i8) OpenAD_Symbol_185
      INTEGER(w2f__i8) OpenAD_Symbol_186
      INTEGER(w2f__i8) OpenAD_Symbol_187
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_29
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_60
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_62
      REAL(w2f__8) OpenAD_Symbol_63
      REAL(w2f__8) OpenAD_Symbol_64
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_68
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_70
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_81
      REAL(w2f__8) OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_83
      REAL(w2f__8) OpenAD_Symbol_84
      REAL(w2f__8) OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_Symbol_87
      REAL(w2f__8) OpenAD_Symbol_88
      REAL(w2f__8) OpenAD_Symbol_89
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_Symbol_90
      REAL(w2f__8) OpenAD_Symbol_92
      REAL(w2f__8) OpenAD_Symbol_93
      REAL(w2f__8) OpenAD_Symbol_95
      REAL(w2f__8) OpenAD_Symbol_96
      REAL(w2f__8) OpenAD_Symbol_97
      REAL(w2f__8) OpenAD_Symbol_98
      REAL(w2f__8) OpenAD_Symbol_99
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 9)
      type(active) :: F(1 : 7)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) H
      INTEGER(w2f__i4) I
      INTEGER(w2f__i8) OpenAD_Symbol_188
      INTEGER(w2f__i8) OpenAD_Symbol_189
      INTEGER(w2f__i8) OpenAD_Symbol_190
      INTEGER(w2f__i8) OpenAD_Symbol_191
      INTEGER(w2f__i8) OpenAD_Symbol_192
      INTEGER(w2f__i8) OpenAD_Symbol_193
      INTEGER(w2f__i8) OpenAD_Symbol_194
      INTEGER(w2f__i8) OpenAD_Symbol_195
      INTEGER(w2f__i8) OpenAD_Symbol_196
      INTEGER(w2f__i8) OpenAD_Symbol_197
      INTEGER(w2f__i8) OpenAD_Symbol_198
      INTEGER(w2f__i8) OpenAD_Symbol_199
      REAL(w2f__8) OpenAD_Symbol_200
      REAL(w2f__8) OpenAD_Symbol_201
      REAL(w2f__8) OpenAD_Symbol_202
      REAL(w2f__8) OpenAD_Symbol_203
      REAL(w2f__8) OpenAD_Symbol_204
      REAL(w2f__8) OpenAD_Symbol_205
      REAL(w2f__8) OpenAD_Symbol_206
      REAL(w2f__8) OpenAD_Symbol_207
      INTEGER(w2f__i8) OpenAD_Symbol_208
      INTEGER(w2f__i8) OpenAD_Symbol_209
      INTEGER(w2f__i8) OpenAD_Symbol_210
      REAL(w2f__8) OpenAD_Symbol_211
      INTEGER(w2f__i8) OpenAD_Symbol_212
      INTEGER(w2f__i8) OpenAD_Symbol_213
      REAL(w2f__8) OpenAD_Symbol_214
      INTEGER(w2f__i8) OpenAD_Symbol_215
      REAL(w2f__8) OpenAD_Symbol_216
      INTEGER(w2f__i8) OpenAD_Symbol_217
      INTEGER(w2f__i8) OpenAD_Symbol_218
      REAL(w2f__8) OpenAD_Symbol_219
      INTEGER(w2f__i8) OpenAD_Symbol_220
      REAL(w2f__8) OpenAD_Symbol_221
      INTEGER(w2f__i8) OpenAD_Symbol_222
      INTEGER(w2f__i8) OpenAD_Symbol_223
      REAL(w2f__8) OpenAD_Symbol_224
      INTEGER(w2f__i8) OpenAD_Symbol_225
      REAL(w2f__8) OpenAD_Symbol_226
      INTEGER(w2f__i8) OpenAD_Symbol_227
      INTEGER(w2f__i8) OpenAD_Symbol_228
      INTEGER(w2f__i8) OpenAD_Symbol_229
      INTEGER(w2f__i8) OpenAD_Symbol_230
      INTEGER(w2f__i8) OpenAD_Symbol_231
      REAL(w2f__8) OpenAD_Symbol_232
      INTEGER(w2f__i8) OpenAD_Symbol_233
      INTEGER(w2f__i8) OpenAD_Symbol_234
      INTEGER(w2f__i8) OpenAD_Symbol_235
      INTEGER(w2f__i8) OpenAD_Symbol_236
      INTEGER(w2f__i8) OpenAD_Symbol_237
      REAL(w2f__8) OpenAD_Symbol_238
      INTEGER(w2f__i8) OpenAD_Symbol_239
      INTEGER(w2f__i8) OpenAD_Symbol_240
      REAL(w2f__8) OpenAD_Symbol_241
      INTEGER(w2f__i8) OpenAD_Symbol_242
      REAL(w2f__8) OpenAD_Symbol_243
      INTEGER(w2f__i8) OpenAD_Symbol_244
      INTEGER(w2f__i8) OpenAD_Symbol_245
      REAL(w2f__8) OpenAD_Symbol_246
      INTEGER(w2f__i8) OpenAD_Symbol_247
      REAL(w2f__8) OpenAD_Symbol_248
      REAL(w2f__8) OpenAD_Symbol_249
      REAL(w2f__8) OpenAD_Symbol_250
      REAL(w2f__8) OpenAD_Symbol_251
      REAL(w2f__8) OpenAD_Symbol_252
      REAL(w2f__8) OpenAD_Symbol_253
      REAL(w2f__8) OpenAD_Symbol_254
      REAL(w2f__8) OpenAD_Symbol_255
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(F)
C
C     **** Statements ****
C

          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
! original function
C$OPENAD XXX Template ad_template.f
      H = 2.5D-01
      F(1)%v = (X(1)%v*(-2.0D00)+((X(8)%v*H*H)/1.2D+01)*(EXP(X(1)%v/(X(1
     +)%v*X(9)%v+1.0D00))*1.0D+01+1.0D00))
      F(2)%v = (X(1)%v+EXP(X(1)%v/(X(1)%v*X(9)%v+1.0D00))*((X(8)%v*H*H)/
     +1.2D+01))
      DO I = 2, 6, 1
        F(INT(I+(-1)))%v = (X(I)%v+F(I+(-1))%v+EXP(X(I)%v/(X(I)%v*X(9)%v
     ++1.0D00))*((X(8)%v*H*H)/1.2D+01))
        F(INT(I))%v = (EXP(X(I)%v/(X(I)%v*X(9)%v+1.0D00))*((X(8)%v*H*H)/
     +1.19999999999999995559D00)+F(I)%v-X(I)%v*2.0D00)
        F(INT(I+1))%v = (X(I)%v+EXP(X(I)%v/(X(I)%v*X(9)%v+1.0D00))*((X(8
     +)%v*H*H)/1.2D+01))
      END DO
      F(6)%v = (X(7)%v+F(6)%v+EXP(X(7)%v/(X(7)%v*X(9)%v+1.0D00))*((X(8)%
     +v*H*H)/1.2D+01))
      F(7)%v = (F(7)%v-X(7)%v*2.0D00)
      F(7)%v = (F(7)%v+((X(8)%v*H*H)/1.2D+01)*(EXP(X(7)%v/(X(7)%v*X(9)%v
     ++1.0D00))*1.0D+01+1.0D00))
          end if
          if (our_rev_mode%tape) then
! taping
C$OPENAD XXX Template ad_template.f
      H = 2.5D-01
      OpenAD_Symbol_8 = (H * H)
      OpenAD_Symbol_5 = (X(8)%v*OpenAD_Symbol_8)
      OpenAD_Symbol_1 = (OpenAD_Symbol_5 / 1.2D+01)
      OpenAD_Symbol_16 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_Symbol_14 = (X(1)%v/OpenAD_Symbol_16)
      OpenAD_Symbol_12 = EXP(OpenAD_Symbol_14)
      OpenAD_Symbol_2 = (OpenAD_Symbol_12 * 1.0D+01 + 1.0D00)
      F(1)%v = (X(1)%v*(-2.0D00)+OpenAD_Symbol_1*OpenAD_Symbol_2)
      OpenAD_Symbol_9 = OpenAD_Symbol_8
      OpenAD_Symbol_6 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_Symbol_3 = OpenAD_Symbol_2
      OpenAD_Symbol_17 = (INT(1_w2f__i8) / OpenAD_Symbol_16)
      OpenAD_Symbol_20 = X(9)%v
      OpenAD_Symbol_21 = X(1)%v
      OpenAD_Symbol_18 = (-(X(1)%v/(OpenAD_Symbol_16*OpenAD_Symbol_16)))
      OpenAD_Symbol_15 = EXP(OpenAD_Symbol_14)
      OpenAD_Symbol_4 = OpenAD_Symbol_1
      OpenAD_Symbol_135 = (OpenAD_Symbol_15 * 1.0D+01 * OpenAD_Symbol_4 
     +)
      OpenAD_Symbol_136 = (OpenAD_Symbol_17 * OpenAD_Symbol_135)
      OpenAD_Symbol_137 = (OpenAD_Symbol_18 * OpenAD_Symbol_135)
      OpenAD_Symbol_138 = (OpenAD_Symbol_20 * OpenAD_Symbol_137)
      OpenAD_Symbol_139 = (OpenAD_Symbol_21 * OpenAD_Symbol_137)
      OpenAD_Symbol_140 = (OpenAD_Symbol_9 * OpenAD_Symbol_6 *  OpenAD_S
     +ymbol_3)
          double_tape(double_tape_pointer) = OpenAD_Symbol_136
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_138
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_139
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_140
          double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_28 = (X(1)%v*X(9)%v+1.0D00)
      OpenAD_Symbol_26 = (X(1)%v/OpenAD_Symbol_28)
      OpenAD_Symbol_22 = EXP(OpenAD_Symbol_26)
      OpenAD_Symbol_37 = (H * H)
      OpenAD_Symbol_34 = (X(8)%v*OpenAD_Symbol_37)
      OpenAD_Symbol_23 = (OpenAD_Symbol_34 / 1.2D+01)
      F(2)%v = (X(1)%v+OpenAD_Symbol_22*OpenAD_Symbol_23)
      OpenAD_Symbol_29 = (INT(1_w2f__i8) / OpenAD_Symbol_28)
      OpenAD_Symbol_32 = X(9)%v
      OpenAD_Symbol_33 = X(1)%v
      OpenAD_Symbol_30 = (-(X(1)%v/(OpenAD_Symbol_28*OpenAD_Symbol_28)))
      OpenAD_Symbol_27 = EXP(OpenAD_Symbol_26)
      OpenAD_Symbol_24 = OpenAD_Symbol_23
      OpenAD_Symbol_38 = OpenAD_Symbol_37
      OpenAD_Symbol_35 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_Symbol_25 = OpenAD_Symbol_22
      OpenAD_Symbol_141 = (OpenAD_Symbol_27 * OpenAD_Symbol_24)
      OpenAD_Symbol_142 = (OpenAD_Symbol_29 * OpenAD_Symbol_141)
      OpenAD_Symbol_143 = (OpenAD_Symbol_30 * OpenAD_Symbol_141)
      OpenAD_Symbol_144 = (OpenAD_Symbol_38 * OpenAD_Symbol_35 *  OpenAD
     +_Symbol_25)
      OpenAD_Symbol_145 = (OpenAD_Symbol_32 * OpenAD_Symbol_143)
      OpenAD_Symbol_146 = (OpenAD_Symbol_33 * OpenAD_Symbol_143)
          double_tape(double_tape_pointer) = OpenAD_Symbol_142
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_144
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_145
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_146
          double_tape_pointer = double_tape_pointer+1
      OpenAD_Symbol_184 = 0_w2f__i8
      DO I = 2, 6, 1
        OpenAD_Symbol_46 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_Symbol_44 = (X(I)%v/OpenAD_Symbol_46)
        OpenAD_Symbol_40 = EXP(OpenAD_Symbol_44)
        OpenAD_Symbol_55 = (H * H)
        OpenAD_Symbol_52 = (X(8)%v*OpenAD_Symbol_55)
        OpenAD_Symbol_41 = (OpenAD_Symbol_52 / 1.2D+01)
        F(INT(I+(-1)))%v = (X(I)%v+F(I+(-1))%v+OpenAD_Symbol_40*OpenAD_S
     +ymbol_41)
        OpenAD_Symbol_47 = (INT(1_w2f__i8) / OpenAD_Symbol_46)
        OpenAD_Symbol_50 = X(9)%v
        OpenAD_Symbol_51 = X(I)%v
        OpenAD_Symbol_48 = (-(X(I)%v/(OpenAD_Symbol_46*OpenAD_Symbol_46)
     +))
        OpenAD_Symbol_45 = EXP(OpenAD_Symbol_44)
        OpenAD_Symbol_42 = OpenAD_Symbol_41
        OpenAD_Symbol_56 = OpenAD_Symbol_55
        OpenAD_Symbol_53 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_Symbol_43 = OpenAD_Symbol_40
        OpenAD_Symbol_147 = (OpenAD_Symbol_45 * OpenAD_Symbol_42)
        OpenAD_Symbol_148 = (OpenAD_Symbol_47 * OpenAD_Symbol_147)
        OpenAD_Symbol_149 = (OpenAD_Symbol_48 * OpenAD_Symbol_147)
        OpenAD_Symbol_150 = (OpenAD_Symbol_56 * OpenAD_Symbol_53 *  Open
     +AD_Symbol_43)
        OpenAD_Symbol_151 = (OpenAD_Symbol_50 * OpenAD_Symbol_149)
        OpenAD_Symbol_152 = (OpenAD_Symbol_51 * OpenAD_Symbol_149)
        OpenAD_Symbol_188 = (I +(-1))
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_188
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_148
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_189 = (I +(-1))
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_189
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_150
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_190 = (I +(-1))
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_190
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_151
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_191 = (I +(-1))
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_191
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_152
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_192 = (I +(-1))
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_192
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_193 = (I +(-1))
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_193
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_194 = (I +(-1))
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_194
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_64 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_Symbol_62 = (X(I)%v/OpenAD_Symbol_64)
        OpenAD_Symbol_58 = EXP(OpenAD_Symbol_62)
        OpenAD_Symbol_73 = (H * H)
        OpenAD_Symbol_70 = (X(8)%v*OpenAD_Symbol_73)
        OpenAD_Symbol_59 = (OpenAD_Symbol_70 /  1.19999999999999995559D0
     +0)
        F(INT(I))%v = (OpenAD_Symbol_58*OpenAD_Symbol_59+F(I)%v-X(I)%v*2
     +.0D00)
        OpenAD_Symbol_65 = (INT(1_w2f__i8) / OpenAD_Symbol_64)
        OpenAD_Symbol_68 = X(9)%v
        OpenAD_Symbol_69 = X(I)%v
        OpenAD_Symbol_66 = (-(X(I)%v/(OpenAD_Symbol_64*OpenAD_Symbol_64)
     +))
        OpenAD_Symbol_63 = EXP(OpenAD_Symbol_62)
        OpenAD_Symbol_60 = OpenAD_Symbol_59
        OpenAD_Symbol_74 = OpenAD_Symbol_73
        OpenAD_Symbol_71 = (INT(1_w2f__i8) / 1.19999999999999995559D00)
        OpenAD_Symbol_61 = OpenAD_Symbol_58
        OpenAD_Symbol_154 = (OpenAD_Symbol_63 * OpenAD_Symbol_60)
        OpenAD_Symbol_155 = (OpenAD_Symbol_65 * OpenAD_Symbol_154)
        OpenAD_Symbol_156 = (OpenAD_Symbol_66 * OpenAD_Symbol_154)
        OpenAD_Symbol_157 = (OpenAD_Symbol_74 * OpenAD_Symbol_71 *  Open
     +AD_Symbol_61)
        OpenAD_Symbol_158 = (OpenAD_Symbol_68 * OpenAD_Symbol_156)
        OpenAD_Symbol_159 = (OpenAD_Symbol_69 * OpenAD_Symbol_156)
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_155
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_157
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_158
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_159
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_83 = (X(I)%v*X(9)%v+1.0D00)
        OpenAD_Symbol_81 = (X(I)%v/OpenAD_Symbol_83)
        OpenAD_Symbol_77 = EXP(OpenAD_Symbol_81)
        OpenAD_Symbol_92 = (H * H)
        OpenAD_Symbol_89 = (X(8)%v*OpenAD_Symbol_92)
        OpenAD_Symbol_78 = (OpenAD_Symbol_89 / 1.2D+01)
        F(INT(I+1))%v = (X(I)%v+OpenAD_Symbol_77*OpenAD_Symbol_78)
        OpenAD_Symbol_84 = (INT(1_w2f__i8) / OpenAD_Symbol_83)
        OpenAD_Symbol_87 = X(9)%v
        OpenAD_Symbol_88 = X(I)%v
        OpenAD_Symbol_85 = (-(X(I)%v/(OpenAD_Symbol_83*OpenAD_Symbol_83)
     +))
        OpenAD_Symbol_82 = EXP(OpenAD_Symbol_81)
        OpenAD_Symbol_79 = OpenAD_Symbol_78
        OpenAD_Symbol_93 = OpenAD_Symbol_92
        OpenAD_Symbol_90 = (INT(1_w2f__i8) / 1.2D+01)
        OpenAD_Symbol_80 = OpenAD_Symbol_77
        OpenAD_Symbol_161 = (OpenAD_Symbol_82 * OpenAD_Symbol_79)
        OpenAD_Symbol_162 = (OpenAD_Symbol_84 * OpenAD_Symbol_161)
        OpenAD_Symbol_163 = (OpenAD_Symbol_85 * OpenAD_Symbol_161)
        OpenAD_Symbol_164 = (OpenAD_Symbol_93 * OpenAD_Symbol_90 *  Open
     +AD_Symbol_80)
        OpenAD_Symbol_165 = (OpenAD_Symbol_87 * OpenAD_Symbol_163)
        OpenAD_Symbol_166 = (OpenAD_Symbol_88 * OpenAD_Symbol_163)
          double_tape(double_tape_pointer) = OpenAD_Symbol_162
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_195 = (I + 1)
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_195
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_164
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_196 = (I + 1)
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_196
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_165
          double_tape_pointer = double_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_197 = (I + 1)
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_197
          integer_tape_pointer = integer_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_166
          double_tape_pointer = double_tape_pointer+1
        OpenAD_Symbol_198 = (I + 1)
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_198
          integer_tape_pointer = integer_tape_pointer+1
          integer_tape(integer_tape_pointer) = I
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_199 = (I + 1)
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_199
          integer_tape_pointer = integer_tape_pointer+1
        OpenAD_Symbol_184 = (INT(OpenAD_Symbol_184) + INT(1_w2f__i8))
      END DO
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_184
          integer_tape_pointer = integer_tape_pointer+1
      OpenAD_Symbol_101 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_Symbol_99 = (X(7)%v/OpenAD_Symbol_101)
      OpenAD_Symbol_95 = EXP(OpenAD_Symbol_99)
      OpenAD_Symbol_110 = (H * H)
      OpenAD_Symbol_107 = (X(8)%v*OpenAD_Symbol_110)
      OpenAD_Symbol_96 = (OpenAD_Symbol_107 / 1.2D+01)
      F(6)%v = (X(7)%v+F(6)%v+OpenAD_Symbol_95*OpenAD_Symbol_96)
      OpenAD_Symbol_102 = (INT(1_w2f__i8) / OpenAD_Symbol_101)
      OpenAD_Symbol_105 = X(9)%v
      OpenAD_Symbol_106 = X(7)%v
      OpenAD_Symbol_103 = (-(X(7)%v/(OpenAD_Symbol_101*OpenAD_Symbol_101
     +)))
      OpenAD_Symbol_100 = EXP(OpenAD_Symbol_99)
      OpenAD_Symbol_97 = OpenAD_Symbol_96
      OpenAD_Symbol_111 = OpenAD_Symbol_110
      OpenAD_Symbol_108 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_Symbol_98 = OpenAD_Symbol_95
      OpenAD_Symbol_167 = (OpenAD_Symbol_100 * OpenAD_Symbol_97)
      OpenAD_Symbol_168 = (OpenAD_Symbol_102 * OpenAD_Symbol_167)
      OpenAD_Symbol_169 = (OpenAD_Symbol_103 * OpenAD_Symbol_167)
      OpenAD_Symbol_170 = (OpenAD_Symbol_111 * OpenAD_Symbol_108 *  Open
     +AD_Symbol_98)
      OpenAD_Symbol_171 = (OpenAD_Symbol_105 * OpenAD_Symbol_169)
      OpenAD_Symbol_172 = (OpenAD_Symbol_106 * OpenAD_Symbol_169)
          double_tape(double_tape_pointer) = OpenAD_Symbol_168
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_170
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_171
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_172
          double_tape_pointer = double_tape_pointer+1
      F(7)%v = (F(7)%v-X(7)%v*2.0D00)
      OpenAD_Symbol_121 = (H * H)
      OpenAD_Symbol_118 = (X(8)%v*OpenAD_Symbol_121)
      OpenAD_Symbol_114 = (OpenAD_Symbol_118 / 1.2D+01)
      OpenAD_Symbol_129 = (X(7)%v*X(9)%v+1.0D00)
      OpenAD_Symbol_127 = (X(7)%v/OpenAD_Symbol_129)
      OpenAD_Symbol_125 = EXP(OpenAD_Symbol_127)
      OpenAD_Symbol_115 = (OpenAD_Symbol_125 * 1.0D+01 + 1.0D00)
      F(7)%v = (F(7)%v+OpenAD_Symbol_114*OpenAD_Symbol_115)
      OpenAD_Symbol_122 = OpenAD_Symbol_121
      OpenAD_Symbol_119 = (INT(1_w2f__i8) / 1.2D+01)
      OpenAD_Symbol_116 = OpenAD_Symbol_115
      OpenAD_Symbol_130 = (INT(1_w2f__i8) / OpenAD_Symbol_129)
      OpenAD_Symbol_133 = X(9)%v
      OpenAD_Symbol_134 = X(7)%v
      OpenAD_Symbol_131 = (-(X(7)%v/(OpenAD_Symbol_129*OpenAD_Symbol_129
     +)))
      OpenAD_Symbol_128 = EXP(OpenAD_Symbol_127)
      OpenAD_Symbol_117 = OpenAD_Symbol_114
      OpenAD_Symbol_175 = (OpenAD_Symbol_128 * 1.0D+01 *  OpenAD_Symbol_
     +117)
      OpenAD_Symbol_176 = (OpenAD_Symbol_130 * OpenAD_Symbol_175)
      OpenAD_Symbol_177 = (OpenAD_Symbol_131 * OpenAD_Symbol_175)
      OpenAD_Symbol_178 = (OpenAD_Symbol_133 * OpenAD_Symbol_177)
      OpenAD_Symbol_179 = (OpenAD_Symbol_134 * OpenAD_Symbol_177)
      OpenAD_Symbol_180 = (OpenAD_Symbol_122 * OpenAD_Symbol_119 *  Open
     +AD_Symbol_116)
          double_tape(double_tape_pointer) = OpenAD_Symbol_176
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_178
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_179
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_Symbol_180
          double_tape_pointer = double_tape_pointer+1
          end if 
          if (our_rev_mode%adjoint) then
! adjoint
          OpenAD_Symbol_181%d = OpenAD_Symbol_181%d+F(7)%d*1 _w2f__i8
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_248 = double_tape(double_tape_pointer)
          X(8)%d = X(8)%d+F(7)%d*OpenAD_Symbol_248
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_249 = double_tape(double_tape_pointer)
          X(9)%d = X(9)%d+F(7)%d*OpenAD_Symbol_249
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_250 = double_tape(double_tape_pointer)
          X(7)%d = X(7)%d+F(7)%d*OpenAD_Symbol_250
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_251 = double_tape(double_tape_pointer)
          X(7)%d = X(7)%d+F(7)%d*OpenAD_Symbol_251
          F(7)%d = 0.0d0
          F(7)%d = F(7)%d+OpenAD_Symbol_181%d
          OpenAD_Symbol_181%d = 0.0d0
          OpenAD_Symbol_174%d = OpenAD_Symbol_174%d+F(7)%d*1 _w2f__i8
          X(7)%d = X(7)%d+F(7)%d*-2.0D00
          F(7)%d = 0.0d0
          F(7)%d = F(7)%d+OpenAD_Symbol_174%d
          OpenAD_Symbol_174%d = 0.0d0
          OpenAD_Symbol_173%d = OpenAD_Symbol_173%d+F(6)%d*1 _w2f__i8
          X(7)%d = X(7)%d+F(6)%d*1 _w2f__i8
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_252 = double_tape(double_tape_pointer)
          X(9)%d = X(9)%d+F(6)%d*OpenAD_Symbol_252
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_253 = double_tape(double_tape_pointer)
          X(7)%d = X(7)%d+F(6)%d*OpenAD_Symbol_253
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_254 = double_tape(double_tape_pointer)
          X(8)%d = X(8)%d+F(6)%d*OpenAD_Symbol_254
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_255 = double_tape(double_tape_pointer)
          X(7)%d = X(7)%d+F(6)%d*OpenAD_Symbol_255
          F(6)%d = 0.0d0
          F(6)%d = F(6)%d+OpenAD_Symbol_173%d
          OpenAD_Symbol_173%d = 0.0d0
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_182 = integer_tape(integer_tape_pointer)
      OpenAD_Symbol_183 = 1
      DO WHILE(INT(OpenAD_Symbol_183) .LE. INT(OpenAD_Symbol_182))
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_208 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_209 = integer_tape(integer_tape_pointer)
          X(INT(OpenAD_Symbol_209))%d = X(INT(OpenAD_Symbol_209))%d+F(IN
     +T(OpenAD_Symbol_208))%d*1 _w2f__i8
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_210 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_211 = double_tape(double_tape_pointer)
          X(9)%d = X(9)%d+F(INT(OpenAD_Symbol_210))%d*OpenAD_Symbol_211
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_212 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_213 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_214 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_213))%d = X(INT(OpenAD_Symbol_213))%d+F(IN
     +T(OpenAD_Symbol_212))%d*OpenAD_Symbol_214
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_215 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_216 = double_tape(double_tape_pointer)
          X(8)%d = X(8)%d+F(INT(OpenAD_Symbol_215))%d*OpenAD_Symbol_216
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_217 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_218 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_219 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_218))%d = X(INT(OpenAD_Symbol_218))%d+F(IN
     +T(OpenAD_Symbol_217))%d*OpenAD_Symbol_219
          F(INT(OpenAD_Symbol_217))%d = 0.0d0
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_220 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_221 = double_tape(double_tape_pointer)
          X(9)%d = X(9)%d+F(INT(OpenAD_Symbol_220))%d*OpenAD_Symbol_221
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_222 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_223 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_224 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_223))%d = X(INT(OpenAD_Symbol_223))%d+F(IN
     +T(OpenAD_Symbol_222))%d*OpenAD_Symbol_224
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_225 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_226 = double_tape(double_tape_pointer)
          X(8)%d = X(8)%d+F(INT(OpenAD_Symbol_225))%d*OpenAD_Symbol_226
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_227 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_228 = integer_tape(integer_tape_pointer)
          X(INT(OpenAD_Symbol_228))%d = X(INT(OpenAD_Symbol_228))%d+F(IN
     +T(OpenAD_Symbol_227))%d*-2.0D00
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_229 = integer_tape(integer_tape_pointer)
          OpenAD_Symbol_160%d = OpenAD_Symbol_160%d+F(INT(OpenAD_Symbol_
     +229))%d*1 _w2f__i8
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_230 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_231 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_232 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_231))%d = X(INT(OpenAD_Symbol_231))%d+F(IN
     +T(OpenAD_Symbol_230))%d*OpenAD_Symbol_232
          F(INT(OpenAD_Symbol_230))%d = 0.0d0
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_233 = integer_tape(integer_tape_pointer)
          F(INT(OpenAD_Symbol_233))%d = F(INT(OpenAD_Symbol_233))%d+Open
     +AD_Symbol_160%d
          OpenAD_Symbol_160%d = 0.0d0
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_234 = integer_tape(integer_tape_pointer)
          OpenAD_Symbol_153%d = OpenAD_Symbol_153%d+F(INT(OpenAD_Symbol_
     +234))%d*1 _w2f__i8
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_235 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_236 = integer_tape(integer_tape_pointer)
          X(INT(OpenAD_Symbol_236))%d = X(INT(OpenAD_Symbol_236))%d+F(IN
     +T(OpenAD_Symbol_235))%d*1 _w2f__i8
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_237 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_238 = double_tape(double_tape_pointer)
          X(9)%d = X(9)%d+F(INT(OpenAD_Symbol_237))%d*OpenAD_Symbol_238
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_239 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_240 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_241 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_240))%d = X(INT(OpenAD_Symbol_240))%d+F(IN
     +T(OpenAD_Symbol_239))%d*OpenAD_Symbol_241
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_242 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_243 = double_tape(double_tape_pointer)
          X(8)%d = X(8)%d+F(INT(OpenAD_Symbol_242))%d*OpenAD_Symbol_243
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_244 = integer_tape(integer_tape_pointer)
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_245 = integer_tape(integer_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_246 = double_tape(double_tape_pointer)
          X(INT(OpenAD_Symbol_245))%d = X(INT(OpenAD_Symbol_245))%d+F(IN
     +T(OpenAD_Symbol_244))%d*OpenAD_Symbol_246
          F(INT(OpenAD_Symbol_244))%d = 0.0d0
          integer_tape_pointer = integer_tape_pointer-1
          OpenAD_Symbol_247 = integer_tape(integer_tape_pointer)
          F(INT(OpenAD_Symbol_247))%d = F(INT(OpenAD_Symbol_247))%d+Open
     +AD_Symbol_153%d
          OpenAD_Symbol_153%d = 0.0d0
        OpenAD_Symbol_183 = INT(OpenAD_Symbol_183) + 1
      END DO
          X(1)%d = X(1)%d+F(2)%d*1 _w2f__i8
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_200 = double_tape(double_tape_pointer)
          X(9)%d = X(9)%d+F(2)%d*OpenAD_Symbol_200
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_201 = double_tape(double_tape_pointer)
          X(1)%d = X(1)%d+F(2)%d*OpenAD_Symbol_201
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_202 = double_tape(double_tape_pointer)
          X(8)%d = X(8)%d+F(2)%d*OpenAD_Symbol_202
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_203 = double_tape(double_tape_pointer)
          X(1)%d = X(1)%d+F(2)%d*OpenAD_Symbol_203
          F(2)%d = 0.0d0
          X(1)%d = X(1)%d+F(1)%d*-2.0D00
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_204 = double_tape(double_tape_pointer)
          X(8)%d = X(8)%d+F(1)%d*OpenAD_Symbol_204
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_205 = double_tape(double_tape_pointer)
          X(9)%d = X(9)%d+F(1)%d*OpenAD_Symbol_205
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_206 = double_tape(double_tape_pointer)
          X(1)%d = X(1)%d+F(1)%d*OpenAD_Symbol_206
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_207 = double_tape(double_tape_pointer)
          X(1)%d = X(1)%d+F(1)%d*OpenAD_Symbol_207
          F(1)%d = 0.0d0
          end if 
        end subroutine head
