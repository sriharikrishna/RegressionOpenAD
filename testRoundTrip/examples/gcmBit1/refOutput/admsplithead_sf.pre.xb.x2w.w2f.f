
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE find_bulkmod(LOCPRES, TFLD, SFLD, BULKMOD)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_100
      INTEGER(w2f__i8) OpenAD_Symbol_101
      INTEGER(w2f__i8) OpenAD_Symbol_102
      INTEGER(w2f__i8) OpenAD_Symbol_103
      INTEGER(w2f__i8) OpenAD_Symbol_104
      INTEGER(w2f__i8) OpenAD_Symbol_105
      INTEGER(w2f__i8) OpenAD_Symbol_106
      INTEGER(w2f__i8) OpenAD_Symbol_89
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
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_10
      REAL(w2f__8) OpenAD_acc_11
      REAL(w2f__8) OpenAD_acc_12
      REAL(w2f__8) OpenAD_acc_13
      REAL(w2f__8) OpenAD_acc_14
      REAL(w2f__8) OpenAD_acc_15
      REAL(w2f__8) OpenAD_acc_16
      REAL(w2f__8) OpenAD_acc_17
      REAL(w2f__8) OpenAD_acc_18
      REAL(w2f__8) OpenAD_acc_19
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_20
      REAL(w2f__8) OpenAD_acc_21
      REAL(w2f__8) OpenAD_acc_22
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_acc_4
      REAL(w2f__8) OpenAD_acc_5
      REAL(w2f__8) OpenAD_acc_6
      REAL(w2f__8) OpenAD_acc_7
      REAL(w2f__8) OpenAD_acc_8
      REAL(w2f__8) OpenAD_acc_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) LOCPRES(1 : 2, 1 : 2)
      TYPE (OpenADTy_active) TFLD(1 : 2, 1 : 2, 1 : 2, 1 : 2, 1 : 2)
      TYPE (OpenADTy_active) SFLD(1 : 2, 1 : 2, 1 : 2, 1 : 2, 1 : 2)
      TYPE (OpenADTy_active) BULKMOD(1 : 2, 1 : 2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) BI
      INTEGER(w2f__i4) BJ
      TYPE (OpenADTy_active) BMFRESH
      TYPE (OpenADTy_active) BMPRES
      TYPE (OpenADTy_active) BMSALT
      REAL(w2f__8) EOSJMDCKFW(1 : 5)
      REAL(w2f__8) EOSJMDCKP(1 : 14)
      REAL(w2f__8) EOSJMDCKSW(1 : 7)
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      TYPE (OpenADTy_active) P
      TYPE (OpenADTy_active) P2
      TYPE (OpenADTy_active) S
      TYPE (OpenADTy_active) S3O2
      REAL(w2f__8) SITOBAR
      TYPE (OpenADTy_active) T
      TYPE (OpenADTy_active) T2
      TYPE (OpenADTy_active) T3
      TYPE (OpenADTy_active) T4
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_150
      INTEGER(w2f__i8) OpenAD_Symbol_151
      INTEGER(w2f__i8) OpenAD_Symbol_152
      INTEGER(w2f__i8) OpenAD_Symbol_153
      INTEGER(w2f__i8) OpenAD_Symbol_154
      REAL(w2f__8) OpenAD_Symbol_155
      REAL(w2f__8) OpenAD_Symbol_156
      REAL(w2f__8) OpenAD_Symbol_157
      REAL(w2f__8) OpenAD_Symbol_158
      REAL(w2f__8) OpenAD_Symbol_159
      REAL(w2f__8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_160
      INTEGER(w2f__i8) OpenAD_Symbol_161
      REAL(w2f__8) OpenAD_Symbol_162
      REAL(w2f__8) OpenAD_Symbol_163
      REAL(w2f__8) OpenAD_Symbol_164
      REAL(w2f__8) OpenAD_Symbol_165
      REAL(w2f__8) OpenAD_Symbol_166
      REAL(w2f__8) OpenAD_Symbol_167
      REAL(w2f__8) OpenAD_Symbol_168
      REAL(w2f__8) OpenAD_Symbol_169
      REAL(w2f__8) OpenAD_Symbol_170
      REAL(w2f__8) OpenAD_Symbol_171
      REAL(w2f__8) OpenAD_Symbol_172
      REAL(w2f__8) OpenAD_Symbol_173
      REAL(w2f__8) OpenAD_Symbol_174
      REAL(w2f__8) OpenAD_Symbol_175
      REAL(w2f__8) OpenAD_Symbol_176
      REAL(w2f__8) OpenAD_Symbol_177
      REAL(w2f__8) OpenAD_Symbol_178
      REAL(w2f__8) OpenAD_Symbol_179
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_180
      REAL(w2f__8) OpenAD_Symbol_181
      REAL(w2f__8) OpenAD_Symbol_182
      REAL(w2f__8) OpenAD_Symbol_183
      REAL(w2f__8) OpenAD_Symbol_184
      REAL(w2f__8) OpenAD_Symbol_185
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_20
      REAL(w2f__8) OpenAD_Symbol_22
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_28
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_34
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_42
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_48
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_51
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_54
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_56
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_62
      REAL(w2f__8) OpenAD_Symbol_64
      REAL(w2f__8) OpenAD_Symbol_65
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_68
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_76
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_83
      REAL(w2f__8) OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      EOSJMDCKFW(1) = 1.9659330078E+04
      EOSJMDCKFW(2) = 1.4443040466E+02
      EOSJMDCKFW(3) = (-1.7061029673)
      EOSJMDCKFW(4) = 9.64870397E-03
      EOSJMDCKFW(5) = (-4.1902530938E-05)
      EOSJMDCKSW(1) = 5.2848548889E+01
      EOSJMDCKSW(2) = (-3.1010890007E-01)
      EOSJMDCKSW(3) = 6.2832632102E-03
      EOSJMDCKSW(4) = (-5.0841881603E-05)
      EOSJMDCKSW(5) = 3.8866400719E-01
      EOSJMDCKSW(6) = 9.085830301E-03
      EOSJMDCKSW(7) = (-4.6199240023E-04)
      EOSJMDCKP(1) = 3.1865189075
      EOSJMDCKP(2) = 2.2122759372E-02
      EOSJMDCKP(3) = (-2.9846420512E-04)
      EOSJMDCKP(4) = 1.9564149625E-06
      EOSJMDCKP(5) = 6.7043881863E-03
      EOSJMDCKP(6) = (-1.8473180535E-04)
      EOSJMDCKP(7) = 2.0593310524E-07
      EOSJMDCKP(8) = 1.480265928E-04
      EOSJMDCKP(9) = 2.1028979972E-04
      EOSJMDCKP(10) = (-1.2020160284E-05)
      EOSJMDCKP(11) = 1.3946799982E-07
      EOSJMDCKP(12) = (-2.0402369501E-06)
      EOSJMDCKP(13) = 6.128772867E-08
      EOSJMDCKP(14) = 6.2073229889E-10
      K = 1
      BI = 1
      BJ = 1
      SITOBAR = 1.0D00
      DO J = 1, 2, 1
        DO I = 1, 2, 1
          __value__(T) = __value__(TFLD(I, J, K, BI, BJ))
          __value__(T2) = (__value__(T) * __value__(T))
          __value__(T3) = (__value__(T) * __value__(T2))
          __value__(T4) = (__value__(T) * __value__(T3))
          __value__(S) = __value__(SFLD(I, J, K, BI, BJ))
          IF(__value__(S) .GT. 0.0D00) THEN
            __value__(S3O2) = (__value__(S) * SQRT(__value__(S)))
          ELSE
            __value__(S) = 0.0D00
            __value__(S3O2) = 0.0D00
          ENDIF
          __value__(P) = (__value__(LOCPRES(I, J)) * SITOBAR)
          __value__(P2) = (__value__(P) * __value__(P))
          __value__(BMFRESH) = (EOSJMDCKFW(1) + EOSJMDCKFW(2) *
     >  __value__(T) + EOSJMDCKFW(3) * __value__(T2) + EOSJMDCKFW(4) *
     >  __value__(T3) + EOSJMDCKFW(5) * __value__(T4))
          __value__(BMSALT) = (__value__(S) *(EOSJMDCKSW(1) +
     >  EOSJMDCKSW(2) * __value__(T) + EOSJMDCKSW(3) * __value__(T2) +
     >  EOSJMDCKSW(4) * __value__(T3)) + __value__(S3O2) *(EOSJMDCKSW(5
     > ) + EOSJMDCKSW(6) * __value__(T) + EOSJMDCKSW(7) * __value__(T2)
     > ))
          __value__(BMPRES) = (__value__(P) *(EOSJMDCKP(1) + EOSJMDCKP(
     > 2) * __value__(T) + EOSJMDCKP(3) * __value__(T2) + EOSJMDCKP(4)
     >  * __value__(T3)) + __value__(P) * __value__(S) *(EOSJMDCKP(5) +
     >  EOSJMDCKP(6) * __value__(T) + EOSJMDCKP(7) * __value__(T2)) +
     >  EOSJMDCKP(8) * __value__(P) * __value__(S3O2) + __value__(P2) *
     > (EOSJMDCKP(9) + EOSJMDCKP(10) * __value__(T) + EOSJMDCKP(11) *
     >  __value__(T2)) + __value__(P2) * __value__(S) *(EOSJMDCKP(12) +
     >  EOSJMDCKP(13) * __value__(T) + EOSJMDCKP(14) * __value__(T2)))
          __value__(BULKMOD(INT(I), INT(J))) = (__value__(BMPRES) +
     >  __value__(BMFRESH) + __value__(BMSALT))
        END DO
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      EOSJMDCKFW(1) = 1.9659330078E+04
      EOSJMDCKFW(2) = 1.4443040466E+02
      EOSJMDCKFW(3) = (-1.7061029673)
      EOSJMDCKFW(4) = 9.64870397E-03
      EOSJMDCKFW(5) = (-4.1902530938E-05)
      EOSJMDCKSW(1) = 5.2848548889E+01
      EOSJMDCKSW(2) = (-3.1010890007E-01)
      EOSJMDCKSW(3) = 6.2832632102E-03
      EOSJMDCKSW(4) = (-5.0841881603E-05)
      EOSJMDCKSW(5) = 3.8866400719E-01
      EOSJMDCKSW(6) = 9.085830301E-03
      EOSJMDCKSW(7) = (-4.6199240023E-04)
      EOSJMDCKP(1) = 3.1865189075
      EOSJMDCKP(2) = 2.2122759372E-02
      EOSJMDCKP(3) = (-2.9846420512E-04)
      EOSJMDCKP(4) = 1.9564149625E-06
      EOSJMDCKP(5) = 6.7043881863E-03
      EOSJMDCKP(6) = (-1.8473180535E-04)
      EOSJMDCKP(7) = 2.0593310524E-07
      EOSJMDCKP(8) = 1.480265928E-04
      EOSJMDCKP(9) = 2.1028979972E-04
      EOSJMDCKP(10) = (-1.2020160284E-05)
      EOSJMDCKP(11) = 1.3946799982E-07
      EOSJMDCKP(12) = (-2.0402369501E-06)
      EOSJMDCKP(13) = 6.128772867E-08
      EOSJMDCKP(14) = 6.2073229889E-10
      K = 1
      BI = 1
      BJ = 1
      SITOBAR = 1.0D00
      OpenAD_Symbol_94 = 0_w2f__i8
      DO J = 1, 2, 1
        OpenAD_Symbol_95 = 0_w2f__i8
        DO I = 1, 2, 1
          __value__(T) = __value__(TFLD(I, J, K, BI, BJ))
          __value__(T2) = (__value__(T) * __value__(T))
          OpenAD_Symbol_0 = __value__(T)
          OpenAD_Symbol_1 = __value__(T)
          __value__(T3) = (__value__(T) * __value__(T2))
          OpenAD_Symbol_2 = __value__(T2)
          OpenAD_Symbol_3 = __value__(T)
          __value__(T4) = (__value__(T) * __value__(T3))
          OpenAD_Symbol_4 = __value__(T3)
          OpenAD_Symbol_5 = __value__(T)
          __value__(S) = __value__(SFLD(I, J, K, BI, BJ))
          OpenAD_acc_0 = (OpenAD_Symbol_0 + OpenAD_Symbol_1)
          OpenAD_acc_1 = (OpenAD_Symbol_2 + OpenAD_acc_0 *
     >  OpenAD_Symbol_3)
          OpenAD_acc_2 = (OpenAD_Symbol_4 + OpenAD_acc_1 *
     >  OpenAD_Symbol_5)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_0)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_1)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_2)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(BI)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(BJ)
          IF(__value__(S) .GT. 0.0D00) THEN
            OpenAD_Symbol_6 = SQRT(__value__(S))
            __value__(S3O2) = (__value__(S) * OpenAD_Symbol_6)
            OpenAD_Symbol_7 = OpenAD_Symbol_6
            OpenAD_Symbol_9 = (5.0D-01 / OpenAD_Symbol_6)
            OpenAD_Symbol_8 = __value__(S)
            OpenAD_acc_3 = (OpenAD_Symbol_9 * OpenAD_Symbol_8)
C           $OpenAD$ INLINE push_s0(subst)
            CALL push_s0(OpenAD_Symbol_7)
C           $OpenAD$ INLINE push_s0(subst)
            CALL push_s0(OpenAD_acc_3)
            OpenAD_Symbol_96 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_96)
          ELSE
            __value__(S) = 0.0D00
            __value__(S3O2) = 0.0D00
            OpenAD_Symbol_97 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_97)
          ENDIF
          __value__(P) = (__value__(LOCPRES(I, J)) * SITOBAR)
          OpenAD_Symbol_10 = SITOBAR
          __value__(P2) = (__value__(P) * __value__(P))
          OpenAD_Symbol_12 = __value__(P)
          OpenAD_Symbol_13 = __value__(P)
          __value__(BMFRESH) = (EOSJMDCKFW(1) + EOSJMDCKFW(2) *
     >  __value__(T) + EOSJMDCKFW(3) * __value__(T2) + EOSJMDCKFW(4) *
     >  __value__(T3) + EOSJMDCKFW(5) * __value__(T4))
          OpenAD_Symbol_16 = EOSJMDCKFW(2)
          OpenAD_Symbol_18 = EOSJMDCKFW(3)
          OpenAD_Symbol_20 = EOSJMDCKFW(4)
          OpenAD_Symbol_22 = EOSJMDCKFW(5)
          OpenAD_Symbol_23 = (EOSJMDCKSW(1) + EOSJMDCKSW(2) * __value__
     > (T) + EOSJMDCKSW(3) * __value__(T2) + EOSJMDCKSW(4) * __value__(
     > T3))
          OpenAD_Symbol_33 = (EOSJMDCKSW(5) + EOSJMDCKSW(6) * __value__
     > (T) + EOSJMDCKSW(7) * __value__(T2))
          __value__(BMSALT) = (__value__(S) * OpenAD_Symbol_23 +
     >  __value__(S3O2) * OpenAD_Symbol_33)
          OpenAD_Symbol_24 = OpenAD_Symbol_23
          OpenAD_Symbol_28 = EOSJMDCKSW(2)
          OpenAD_Symbol_30 = EOSJMDCKSW(3)
          OpenAD_Symbol_32 = EOSJMDCKSW(4)
          OpenAD_Symbol_25 = __value__(S)
          OpenAD_Symbol_34 = OpenAD_Symbol_33
          OpenAD_Symbol_38 = EOSJMDCKSW(6)
          OpenAD_Symbol_40 = EOSJMDCKSW(7)
          OpenAD_Symbol_35 = __value__(S3O2)
          OpenAD_Symbol_41 = (EOSJMDCKP(1) + EOSJMDCKP(2) * __value__(T
     > ) + EOSJMDCKP(3) * __value__(T2) + EOSJMDCKP(4) * __value__(T3))
          OpenAD_Symbol_51 = (__value__(P) * __value__(S))
          OpenAD_Symbol_52 = (EOSJMDCKP(5) + EOSJMDCKP(6) * __value__(T
     > ) + EOSJMDCKP(7) * __value__(T2))
          OpenAD_Symbol_62 = (__value__(P) * __value__(S3O2))
          OpenAD_Symbol_67 = (EOSJMDCKP(9) + EOSJMDCKP(10) * __value__(
     > T) + EOSJMDCKP(11) * __value__(T2))
          OpenAD_Symbol_75 = (__value__(P2) * __value__(S))
          OpenAD_Symbol_76 = (EOSJMDCKP(12) + EOSJMDCKP(13) * __value__
     > (T) + EOSJMDCKP(14) * __value__(T2))
          __value__(BMPRES) = (__value__(P) * OpenAD_Symbol_41 +
     >  OpenAD_Symbol_51 * OpenAD_Symbol_52 + EOSJMDCKP(8) *
     >  OpenAD_Symbol_62 + __value__(P2) * OpenAD_Symbol_67 +
     >  OpenAD_Symbol_75 * OpenAD_Symbol_76)
          OpenAD_Symbol_42 = OpenAD_Symbol_41
          OpenAD_Symbol_46 = EOSJMDCKP(2)
          OpenAD_Symbol_48 = EOSJMDCKP(3)
          OpenAD_Symbol_50 = EOSJMDCKP(4)
          OpenAD_Symbol_43 = __value__(P)
          OpenAD_Symbol_55 = __value__(S)
          OpenAD_Symbol_56 = __value__(P)
          OpenAD_Symbol_53 = OpenAD_Symbol_52
          OpenAD_Symbol_59 = EOSJMDCKP(6)
          OpenAD_Symbol_61 = EOSJMDCKP(7)
          OpenAD_Symbol_54 = OpenAD_Symbol_51
          OpenAD_Symbol_65 = __value__(S3O2)
          OpenAD_Symbol_66 = __value__(P)
          OpenAD_Symbol_64 = EOSJMDCKP(8)
          OpenAD_Symbol_68 = OpenAD_Symbol_67
          OpenAD_Symbol_72 = EOSJMDCKP(10)
          OpenAD_Symbol_74 = EOSJMDCKP(11)
          OpenAD_Symbol_69 = __value__(P2)
          OpenAD_Symbol_79 = __value__(S)
          OpenAD_Symbol_80 = __value__(P2)
          OpenAD_Symbol_77 = OpenAD_Symbol_76
          OpenAD_Symbol_83 = EOSJMDCKP(13)
          OpenAD_Symbol_85 = EOSJMDCKP(14)
          OpenAD_Symbol_78 = OpenAD_Symbol_75
          __value__(BULKMOD(INT(I), INT(J))) = (__value__(BMPRES) +
     >  __value__(BMFRESH) + __value__(BMSALT))
          OpenAD_acc_4 = (OpenAD_Symbol_80 * OpenAD_Symbol_77)
          OpenAD_acc_5 = (OpenAD_Symbol_56 * OpenAD_Symbol_53)
          OpenAD_acc_6 = (OpenAD_Symbol_50 * OpenAD_Symbol_43)
          OpenAD_acc_7 = (OpenAD_Symbol_32 * OpenAD_Symbol_25)
          OpenAD_acc_8 = (OpenAD_Symbol_85 * OpenAD_Symbol_78)
          OpenAD_acc_9 = (OpenAD_Symbol_74 * OpenAD_Symbol_69)
          OpenAD_acc_10 = (OpenAD_Symbol_61 * OpenAD_Symbol_54)
          OpenAD_acc_11 = (OpenAD_Symbol_48 * OpenAD_Symbol_43)
          OpenAD_acc_12 = (OpenAD_Symbol_40 * OpenAD_Symbol_35)
          OpenAD_acc_13 = (OpenAD_Symbol_30 * OpenAD_Symbol_25)
          OpenAD_acc_14 = (OpenAD_Symbol_83 * OpenAD_Symbol_78)
          OpenAD_acc_15 = (OpenAD_Symbol_72 * OpenAD_Symbol_69)
          OpenAD_acc_16 = (OpenAD_Symbol_66 * OpenAD_Symbol_64)
          OpenAD_acc_17 = (OpenAD_Symbol_59 * OpenAD_Symbol_54)
          OpenAD_acc_18 = (OpenAD_Symbol_46 * OpenAD_Symbol_43)
          OpenAD_acc_19 = (OpenAD_Symbol_38 * OpenAD_Symbol_35)
          OpenAD_acc_20 = (OpenAD_Symbol_28 * OpenAD_Symbol_25)
          OpenAD_acc_21 = (OpenAD_Symbol_12 + OpenAD_Symbol_13)
          OpenAD_acc_22 = (OpenAD_Symbol_10 * OpenAD_Symbol_42 +
     >  OpenAD_Symbol_10 * OpenAD_acc_21 * OpenAD_Symbol_79 *
     >  OpenAD_Symbol_77 + OpenAD_Symbol_10 * OpenAD_acc_21 *
     >  OpenAD_Symbol_68 + OpenAD_Symbol_10 * OpenAD_Symbol_55 *
     >  OpenAD_Symbol_53 + OpenAD_Symbol_10 * OpenAD_Symbol_65 *
     >  OpenAD_Symbol_64)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_22)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_24)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_4)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_5)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_6)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_34)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_7)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_8)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_9)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_10)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_11)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_12)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_13)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_14)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_15)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_16)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_17)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_18)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_19)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_20)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_18)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_20)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_22)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_16)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_95 = (INT(OpenAD_Symbol_95) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_95)
        OpenAD_Symbol_94 = (INT(OpenAD_Symbol_94) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_94)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_89)
      OpenAD_Symbol_90 = 1
      DO WHILE(INT(OpenAD_Symbol_90) .LE. INT(OpenAD_Symbol_89))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_91)
        OpenAD_Symbol_92 = 1
        DO WHILE(INT(OpenAD_Symbol_92) .LE. INT(OpenAD_Symbol_91))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_160)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_161)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_162)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_163)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_164)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_165)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_166)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_167)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_168)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_169)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_170)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_171)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_172)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_173)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_174)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_175)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_176)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_177)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_178)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_179)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_180)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_181)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_182)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_183)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_184)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_185)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_162, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_163, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T4))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_164, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_165, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_166, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_167, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_168, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_169, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_170, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S3O2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_171, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_172, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_173, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_174, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_175, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_176, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_177, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_178, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_179, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_180, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S3O2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_181, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_182, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_183, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_184, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_185, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(LOCPRES(
     > INT(OpenAD_Symbol_161), INT(OpenAD_Symbol_160))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(BULKMOD(INT(OpenAD_Symbol_161), INT(
     > OpenAD_Symbol_160))))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_93)
          IF(OpenAD_Symbol_93 .ne. 0) THEN
C           $OpenAD$ INLINE pop_s0(subst)
            CALL pop_s0(OpenAD_Symbol_158)
C           $OpenAD$ INLINE pop_s0(subst)
            CALL pop_s0(OpenAD_Symbol_159)
C           $OpenAD$ INLINE Saxpy(subst,subst,subst)
            CALL Saxpy(OpenAD_Symbol_158, __deriv__(S3O2), __deriv__(S)
     > )
C           $OpenAD$ INLINE Saxpy(subst,subst,subst)
            CALL Saxpy(OpenAD_Symbol_159, __deriv__(S3O2), __deriv__(S)
     > )
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(S3O2))
          ELSE
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(S3O2))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(S))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_150)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_151)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_152)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_153)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_154)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_155)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_156)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_157)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(S), __deriv__(SFLD(INT(
     > OpenAD_Symbol_154), INT(OpenAD_Symbol_153), INT(
     > OpenAD_Symbol_152), INT(OpenAD_Symbol_151), INT(
     > OpenAD_Symbol_150))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(S))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_155, __deriv__(T4), __deriv__(T))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(T4))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_156, __deriv__(T3), __deriv__(T))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(T3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_157, __deriv__(T2), __deriv__(T))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(T2))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(T), __deriv__(TFLD(INT(
     > OpenAD_Symbol_154), INT(OpenAD_Symbol_153), INT(
     > OpenAD_Symbol_152), INT(OpenAD_Symbol_151), INT(
     > OpenAD_Symbol_150))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(T))
          OpenAD_Symbol_92 = INT(OpenAD_Symbol_92) + 1
        END DO
        OpenAD_Symbol_90 = INT(OpenAD_Symbol_90) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_matrix_a(subst)
      CALL cp_arg_store_real_matrix_a(__deriv__(LOCPRES))
C     $OpenAD$ INLINE cp_arg_store_real_five_tensor_a(subst)
      CALL cp_arg_store_real_five_tensor_a(__deriv__(TFLD))
C     $OpenAD$ INLINE cp_arg_store_real_five_tensor_a(subst)
      CALL cp_arg_store_real_five_tensor_a(__deriv__(SFLD))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_five_tensor_a(subst)
      CALL cp_arg_restore_real_five_tensor_a(__deriv__(SFLD))
C     $OpenAD$ INLINE cp_arg_restore_real_five_tensor_a(subst)
      CALL cp_arg_restore_real_five_tensor_a(__deriv__(TFLD))
C     $OpenAD$ INLINE cp_arg_restore_real_matrix_a(subst)
      CALL cp_arg_restore_real_matrix_a(__deriv__(LOCPRES))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_matrix_a(subst)
      CALL cp_arg_store_real_matrix_a(__deriv__(BULKMOD))
C     $OpenAD$ INLINE cp_arg_store_real_matrix_a(subst)
      CALL cp_arg_store_real_matrix_a(__deriv__(LOCPRES))
C     $OpenAD$ INLINE cp_arg_store_real_five_tensor_a(subst)
      CALL cp_arg_store_real_five_tensor_a(__deriv__(TFLD))
C     $OpenAD$ INLINE cp_arg_store_real_five_tensor_a(subst)
      CALL cp_arg_store_real_five_tensor_a(__deriv__(SFLD))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_five_tensor_a(subst)
      CALL cp_arg_restore_real_five_tensor_a(__deriv__(SFLD))
C     $OpenAD$ INLINE cp_arg_restore_real_five_tensor_a(subst)
      CALL cp_arg_restore_real_five_tensor_a(__deriv__(TFLD))
C     $OpenAD$ INLINE cp_arg_restore_real_matrix_a(subst)
      CALL cp_arg_restore_real_matrix_a(__deriv__(LOCPRES))
C     $OpenAD$ INLINE cp_arg_restore_real_matrix_a(subst)
      CALL cp_arg_restore_real_matrix_a(__deriv__(BULKMOD))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      EOSJMDCKFW(1) = 1.9659330078E+04
      EOSJMDCKFW(2) = 1.4443040466E+02
      EOSJMDCKFW(3) = (-1.7061029673)
      EOSJMDCKFW(4) = 9.64870397E-03
      EOSJMDCKFW(5) = (-4.1902530938E-05)
      EOSJMDCKSW(1) = 5.2848548889E+01
      EOSJMDCKSW(2) = (-3.1010890007E-01)
      EOSJMDCKSW(3) = 6.2832632102E-03
      EOSJMDCKSW(4) = (-5.0841881603E-05)
      EOSJMDCKSW(5) = 3.8866400719E-01
      EOSJMDCKSW(6) = 9.085830301E-03
      EOSJMDCKSW(7) = (-4.6199240023E-04)
      EOSJMDCKP(1) = 3.1865189075
      EOSJMDCKP(2) = 2.2122759372E-02
      EOSJMDCKP(3) = (-2.9846420512E-04)
      EOSJMDCKP(4) = 1.9564149625E-06
      EOSJMDCKP(5) = 6.7043881863E-03
      EOSJMDCKP(6) = (-1.8473180535E-04)
      EOSJMDCKP(7) = 2.0593310524E-07
      EOSJMDCKP(8) = 1.480265928E-04
      EOSJMDCKP(9) = 2.1028979972E-04
      EOSJMDCKP(10) = (-1.2020160284E-05)
      EOSJMDCKP(11) = 1.3946799982E-07
      EOSJMDCKP(12) = (-2.0402369501E-06)
      EOSJMDCKP(13) = 6.128772867E-08
      EOSJMDCKP(14) = 6.2073229889E-10
      K = 1
      BI = 1
      BJ = 1
      SITOBAR = 1.0D00
      OpenAD_Symbol_103 = 0_w2f__i8
      DO J = 1, 2, 1
        OpenAD_Symbol_104 = 0_w2f__i8
        DO I = 1, 2, 1
          __value__(T) = __value__(TFLD(I, J, K, BI, BJ))
          __value__(T2) = (__value__(T) * __value__(T))
          OpenAD_Symbol_0 = __value__(T)
          OpenAD_Symbol_1 = __value__(T)
          __value__(T3) = (__value__(T) * __value__(T2))
          OpenAD_Symbol_2 = __value__(T2)
          OpenAD_Symbol_3 = __value__(T)
          __value__(T4) = (__value__(T) * __value__(T3))
          OpenAD_Symbol_4 = __value__(T3)
          OpenAD_Symbol_5 = __value__(T)
          __value__(S) = __value__(SFLD(I, J, K, BI, BJ))
          OpenAD_acc_0 = (OpenAD_Symbol_0 + OpenAD_Symbol_1)
          OpenAD_acc_1 = (OpenAD_Symbol_2 + OpenAD_acc_0 *
     >  OpenAD_Symbol_3)
          OpenAD_acc_2 = (OpenAD_Symbol_4 + OpenAD_acc_1 *
     >  OpenAD_Symbol_5)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_0)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_1)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_2)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(K)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(BI)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(BJ)
          IF(__value__(S) .GT. 0.0D00) THEN
            OpenAD_Symbol_6 = SQRT(__value__(S))
            __value__(S3O2) = (__value__(S) * OpenAD_Symbol_6)
            OpenAD_Symbol_7 = OpenAD_Symbol_6
            OpenAD_Symbol_9 = (5.0D-01 / OpenAD_Symbol_6)
            OpenAD_Symbol_8 = __value__(S)
            OpenAD_acc_3 = (OpenAD_Symbol_9 * OpenAD_Symbol_8)
C           $OpenAD$ INLINE push_s0(subst)
            CALL push_s0(OpenAD_Symbol_7)
C           $OpenAD$ INLINE push_s0(subst)
            CALL push_s0(OpenAD_acc_3)
            OpenAD_Symbol_105 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_105)
          ELSE
            __value__(S) = 0.0D00
            __value__(S3O2) = 0.0D00
            OpenAD_Symbol_106 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_106)
          ENDIF
          __value__(P) = (__value__(LOCPRES(I, J)) * SITOBAR)
          OpenAD_Symbol_10 = SITOBAR
          __value__(P2) = (__value__(P) * __value__(P))
          OpenAD_Symbol_12 = __value__(P)
          OpenAD_Symbol_13 = __value__(P)
          __value__(BMFRESH) = (EOSJMDCKFW(1) + EOSJMDCKFW(2) *
     >  __value__(T) + EOSJMDCKFW(3) * __value__(T2) + EOSJMDCKFW(4) *
     >  __value__(T3) + EOSJMDCKFW(5) * __value__(T4))
          OpenAD_Symbol_16 = EOSJMDCKFW(2)
          OpenAD_Symbol_18 = EOSJMDCKFW(3)
          OpenAD_Symbol_20 = EOSJMDCKFW(4)
          OpenAD_Symbol_22 = EOSJMDCKFW(5)
          OpenAD_Symbol_23 = (EOSJMDCKSW(1) + EOSJMDCKSW(2) * __value__
     > (T) + EOSJMDCKSW(3) * __value__(T2) + EOSJMDCKSW(4) * __value__(
     > T3))
          OpenAD_Symbol_33 = (EOSJMDCKSW(5) + EOSJMDCKSW(6) * __value__
     > (T) + EOSJMDCKSW(7) * __value__(T2))
          __value__(BMSALT) = (__value__(S) * OpenAD_Symbol_23 +
     >  __value__(S3O2) * OpenAD_Symbol_33)
          OpenAD_Symbol_24 = OpenAD_Symbol_23
          OpenAD_Symbol_28 = EOSJMDCKSW(2)
          OpenAD_Symbol_30 = EOSJMDCKSW(3)
          OpenAD_Symbol_32 = EOSJMDCKSW(4)
          OpenAD_Symbol_25 = __value__(S)
          OpenAD_Symbol_34 = OpenAD_Symbol_33
          OpenAD_Symbol_38 = EOSJMDCKSW(6)
          OpenAD_Symbol_40 = EOSJMDCKSW(7)
          OpenAD_Symbol_35 = __value__(S3O2)
          OpenAD_Symbol_41 = (EOSJMDCKP(1) + EOSJMDCKP(2) * __value__(T
     > ) + EOSJMDCKP(3) * __value__(T2) + EOSJMDCKP(4) * __value__(T3))
          OpenAD_Symbol_51 = (__value__(P) * __value__(S))
          OpenAD_Symbol_52 = (EOSJMDCKP(5) + EOSJMDCKP(6) * __value__(T
     > ) + EOSJMDCKP(7) * __value__(T2))
          OpenAD_Symbol_62 = (__value__(P) * __value__(S3O2))
          OpenAD_Symbol_67 = (EOSJMDCKP(9) + EOSJMDCKP(10) * __value__(
     > T) + EOSJMDCKP(11) * __value__(T2))
          OpenAD_Symbol_75 = (__value__(P2) * __value__(S))
          OpenAD_Symbol_76 = (EOSJMDCKP(12) + EOSJMDCKP(13) * __value__
     > (T) + EOSJMDCKP(14) * __value__(T2))
          __value__(BMPRES) = (__value__(P) * OpenAD_Symbol_41 +
     >  OpenAD_Symbol_51 * OpenAD_Symbol_52 + EOSJMDCKP(8) *
     >  OpenAD_Symbol_62 + __value__(P2) * OpenAD_Symbol_67 +
     >  OpenAD_Symbol_75 * OpenAD_Symbol_76)
          OpenAD_Symbol_42 = OpenAD_Symbol_41
          OpenAD_Symbol_46 = EOSJMDCKP(2)
          OpenAD_Symbol_48 = EOSJMDCKP(3)
          OpenAD_Symbol_50 = EOSJMDCKP(4)
          OpenAD_Symbol_43 = __value__(P)
          OpenAD_Symbol_55 = __value__(S)
          OpenAD_Symbol_56 = __value__(P)
          OpenAD_Symbol_53 = OpenAD_Symbol_52
          OpenAD_Symbol_59 = EOSJMDCKP(6)
          OpenAD_Symbol_61 = EOSJMDCKP(7)
          OpenAD_Symbol_54 = OpenAD_Symbol_51
          OpenAD_Symbol_65 = __value__(S3O2)
          OpenAD_Symbol_66 = __value__(P)
          OpenAD_Symbol_64 = EOSJMDCKP(8)
          OpenAD_Symbol_68 = OpenAD_Symbol_67
          OpenAD_Symbol_72 = EOSJMDCKP(10)
          OpenAD_Symbol_74 = EOSJMDCKP(11)
          OpenAD_Symbol_69 = __value__(P2)
          OpenAD_Symbol_79 = __value__(S)
          OpenAD_Symbol_80 = __value__(P2)
          OpenAD_Symbol_77 = OpenAD_Symbol_76
          OpenAD_Symbol_83 = EOSJMDCKP(13)
          OpenAD_Symbol_85 = EOSJMDCKP(14)
          OpenAD_Symbol_78 = OpenAD_Symbol_75
          __value__(BULKMOD(INT(I), INT(J))) = (__value__(BMPRES) +
     >  __value__(BMFRESH) + __value__(BMSALT))
          OpenAD_acc_4 = (OpenAD_Symbol_80 * OpenAD_Symbol_77)
          OpenAD_acc_5 = (OpenAD_Symbol_56 * OpenAD_Symbol_53)
          OpenAD_acc_6 = (OpenAD_Symbol_50 * OpenAD_Symbol_43)
          OpenAD_acc_7 = (OpenAD_Symbol_32 * OpenAD_Symbol_25)
          OpenAD_acc_8 = (OpenAD_Symbol_85 * OpenAD_Symbol_78)
          OpenAD_acc_9 = (OpenAD_Symbol_74 * OpenAD_Symbol_69)
          OpenAD_acc_10 = (OpenAD_Symbol_61 * OpenAD_Symbol_54)
          OpenAD_acc_11 = (OpenAD_Symbol_48 * OpenAD_Symbol_43)
          OpenAD_acc_12 = (OpenAD_Symbol_40 * OpenAD_Symbol_35)
          OpenAD_acc_13 = (OpenAD_Symbol_30 * OpenAD_Symbol_25)
          OpenAD_acc_14 = (OpenAD_Symbol_83 * OpenAD_Symbol_78)
          OpenAD_acc_15 = (OpenAD_Symbol_72 * OpenAD_Symbol_69)
          OpenAD_acc_16 = (OpenAD_Symbol_66 * OpenAD_Symbol_64)
          OpenAD_acc_17 = (OpenAD_Symbol_59 * OpenAD_Symbol_54)
          OpenAD_acc_18 = (OpenAD_Symbol_46 * OpenAD_Symbol_43)
          OpenAD_acc_19 = (OpenAD_Symbol_38 * OpenAD_Symbol_35)
          OpenAD_acc_20 = (OpenAD_Symbol_28 * OpenAD_Symbol_25)
          OpenAD_acc_21 = (OpenAD_Symbol_12 + OpenAD_Symbol_13)
          OpenAD_acc_22 = (OpenAD_Symbol_10 * OpenAD_Symbol_42 +
     >  OpenAD_Symbol_10 * OpenAD_acc_21 * OpenAD_Symbol_79 *
     >  OpenAD_Symbol_77 + OpenAD_Symbol_10 * OpenAD_acc_21 *
     >  OpenAD_Symbol_68 + OpenAD_Symbol_10 * OpenAD_Symbol_55 *
     >  OpenAD_Symbol_53 + OpenAD_Symbol_10 * OpenAD_Symbol_65 *
     >  OpenAD_Symbol_64)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_22)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_24)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_4)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_5)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_6)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_34)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_7)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_8)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_9)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_10)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_11)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_12)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_13)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_14)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_15)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_16)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_17)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_18)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_19)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_acc_20)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_18)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_20)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_22)
C         $OpenAD$ INLINE push_s0(subst)
          CALL push_s0(OpenAD_Symbol_16)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_104 = (INT(OpenAD_Symbol_104) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_104)
        OpenAD_Symbol_103 = (INT(OpenAD_Symbol_103) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_103)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_98)
      OpenAD_Symbol_99 = 1
      DO WHILE(INT(OpenAD_Symbol_99) .LE. INT(OpenAD_Symbol_98))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_100)
        OpenAD_Symbol_101 = 1
        DO WHILE(INT(OpenAD_Symbol_101) .LE. INT(OpenAD_Symbol_100))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_160)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_161)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_162)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_163)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_164)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_165)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_166)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_167)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_168)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_169)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_170)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_171)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_172)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_173)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_174)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_175)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_176)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_177)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_178)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_179)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_180)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_181)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_182)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_183)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_184)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_185)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_162, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_163, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T4))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_164, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_165, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_166, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_167, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_168, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_169, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_170, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S3O2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_171, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_172, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_173, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_174, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_175, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_176, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_177, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_178, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_179, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_180, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S3O2))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_181, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(T3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_182, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_183, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_184, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(S))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_185, __deriv__(BULKMOD(INT(
     > OpenAD_Symbol_161), INT(OpenAD_Symbol_160))), __deriv__(LOCPRES(
     > INT(OpenAD_Symbol_161), INT(OpenAD_Symbol_160))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(BULKMOD(INT(OpenAD_Symbol_161), INT(
     > OpenAD_Symbol_160))))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_102)
          IF(OpenAD_Symbol_102 .ne. 0) THEN
C           $OpenAD$ INLINE pop_s0(subst)
            CALL pop_s0(OpenAD_Symbol_158)
C           $OpenAD$ INLINE pop_s0(subst)
            CALL pop_s0(OpenAD_Symbol_159)
C           $OpenAD$ INLINE Saxpy(subst,subst,subst)
            CALL Saxpy(OpenAD_Symbol_158, __deriv__(S3O2), __deriv__(S)
     > )
C           $OpenAD$ INLINE Saxpy(subst,subst,subst)
            CALL Saxpy(OpenAD_Symbol_159, __deriv__(S3O2), __deriv__(S)
     > )
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(S3O2))
          ELSE
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(S3O2))
C           $OpenAD$ INLINE ZeroDeriv(subst)
            CALL ZeroDeriv(__deriv__(S))
          ENDIF
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_150)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_151)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_152)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_153)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_154)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_155)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_156)
C         $OpenAD$ INLINE pop_s0(subst)
          CALL pop_s0(OpenAD_Symbol_157)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(S), __deriv__(SFLD(INT(
     > OpenAD_Symbol_154), INT(OpenAD_Symbol_153), INT(
     > OpenAD_Symbol_152), INT(OpenAD_Symbol_151), INT(
     > OpenAD_Symbol_150))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(S))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_155, __deriv__(T4), __deriv__(T))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(T4))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_156, __deriv__(T3), __deriv__(T))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(T3))
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(OpenAD_Symbol_157, __deriv__(T2), __deriv__(T))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(T2))
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(T), __deriv__(TFLD(INT(
     > OpenAD_Symbol_154), INT(OpenAD_Symbol_153), INT(
     > OpenAD_Symbol_152), INT(OpenAD_Symbol_151), INT(
     > OpenAD_Symbol_150))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(T))
          OpenAD_Symbol_101 = INT(OpenAD_Symbol_101) + 1
        END DO
        OpenAD_Symbol_99 = INT(OpenAD_Symbol_99) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_107
      INTEGER(w2f__i8) OpenAD_Symbol_108
      INTEGER(w2f__i8) OpenAD_Symbol_109
      INTEGER(w2f__i8) OpenAD_Symbol_110
      INTEGER(w2f__i8) OpenAD_Symbol_111
      INTEGER(w2f__i8) OpenAD_Symbol_112
      INTEGER(w2f__i8) OpenAD_Symbol_113
      INTEGER(w2f__i8) OpenAD_Symbol_114
      INTEGER(w2f__i8) OpenAD_Symbol_115
      INTEGER(w2f__i8) OpenAD_Symbol_116
      INTEGER(w2f__i8) OpenAD_Symbol_117
      INTEGER(w2f__i8) OpenAD_Symbol_118
      INTEGER(w2f__i8) OpenAD_Symbol_119
      INTEGER(w2f__i8) OpenAD_Symbol_120
      INTEGER(w2f__i8) OpenAD_Symbol_121
      INTEGER(w2f__i8) OpenAD_Symbol_122
      INTEGER(w2f__i8) OpenAD_Symbol_123
      INTEGER(w2f__i8) OpenAD_Symbol_124
      INTEGER(w2f__i8) OpenAD_Symbol_125
      INTEGER(w2f__i8) OpenAD_Symbol_126
      INTEGER(w2f__i8) OpenAD_Symbol_127
      INTEGER(w2f__i8) OpenAD_Symbol_128
      INTEGER(w2f__i8) OpenAD_Symbol_129
      INTEGER(w2f__i8) OpenAD_Symbol_130
      INTEGER(w2f__i8) OpenAD_Symbol_131
      INTEGER(w2f__i8) OpenAD_Symbol_132
      INTEGER(w2f__i8) OpenAD_Symbol_133
      INTEGER(w2f__i8) OpenAD_Symbol_134
      INTEGER(w2f__i8) OpenAD_Symbol_135
      INTEGER(w2f__i8) OpenAD_Symbol_136
      INTEGER(w2f__i8) OpenAD_Symbol_137
      INTEGER(w2f__i8) OpenAD_Symbol_138
      INTEGER(w2f__i8) OpenAD_Symbol_139
      INTEGER(w2f__i8) OpenAD_Symbol_140
      INTEGER(w2f__i8) OpenAD_Symbol_141
      INTEGER(w2f__i8) OpenAD_Symbol_142
      INTEGER(w2f__i8) OpenAD_Symbol_143
      INTEGER(w2f__i8) OpenAD_Symbol_144
      INTEGER(w2f__i8) OpenAD_Symbol_145
      INTEGER(w2f__i8) OpenAD_Symbol_146
      INTEGER(w2f__i8) OpenAD_Symbol_147
      INTEGER(w2f__i8) OpenAD_Symbol_148
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 32)
      TYPE (OpenADTy_active) Y(1 : 4)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) BULKMOD(1 : 2, 1 : 2)
      EXTERNAL find_bulkmod
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      INTEGER(w2f__i4) L
      TYPE (OpenADTy_active) LOCPRES(1 : 2, 1 : 2)
      INTEGER(w2f__i4) M
      TYPE (OpenADTy_active) SFLD(1 : 2, 1 : 2, 1 : 2, 1 : 2, 1 : 2)
      TYPE (OpenADTy_active) TFLD(1 : 2, 1 : 2, 1 : 2, 1 : 2, 1 : 2)
      INTEGER(w2f__i4) XCOUNT
      INTEGER(w2f__i8) OpenAD_Symbol_149
      INTEGER(w2f__i8) OpenAD_Symbol_186
      INTEGER(w2f__i8) OpenAD_Symbol_187
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
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      XCOUNT = 1
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          __value__(LOCPRES(INT(I), INT(J))) = (__value__(X(XCOUNT)) *
     >  2.0D00)
          DO K = 1, 2, 1
            DO L = 1, 2, 1
              DO M = 1, 2, 1
                __value__(TFLD(INT(I), INT(J), INT(K), INT(L), INT(M)))
     >  = (__value__(X(XCOUNT)) * 3.0D00)
                __value__(SFLD(INT(I), INT(J), INT(K), INT(L), INT(M)))
     >  = (__value__(X(XCOUNT)) * 4.0D00)
                XCOUNT = (XCOUNT + 1)
              END DO
            END DO
          END DO
        END DO
      END DO
      CALL find_bulkmod(__deriv__(LOCPRES), __deriv__(TFLD), __deriv__(
     > SFLD), __deriv__(BULKMOD))
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          __value__(Y(INT(J + INT((I * 2)) +(-2)))) = __value__(BULKMOD
     > (I, J))
        END DO
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      XCOUNT = 1
      OpenAD_Symbol_121 = 0_w2f__i8
      DO I = 1, 2, 1
        OpenAD_Symbol_122 = 0_w2f__i8
        DO J = 1, 2, 1
          __value__(LOCPRES(INT(I), INT(J))) = (__value__(X(XCOUNT)) *
     >  2.0D00)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(XCOUNT)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_123 = 0_w2f__i8
          DO K = 1, 2, 1
            OpenAD_Symbol_124 = 0_w2f__i8
            DO L = 1, 2, 1
              OpenAD_Symbol_125 = 0_w2f__i8
              DO M = 1, 2, 1
                __value__(TFLD(INT(I), INT(J), INT(K), INT(L), INT(M)))
     >  = (__value__(X(XCOUNT)) * 3.0D00)
                __value__(SFLD(INT(I), INT(J), INT(K), INT(L), INT(M)))
     >  = (__value__(X(XCOUNT)) * 4.0D00)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(XCOUNT)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(I)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(J)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(K)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(L)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(M)
                XCOUNT = (XCOUNT + 1)
                OpenAD_Symbol_125 = (INT(OpenAD_Symbol_125) + INT(
     > 1_w2f__i8))
              END DO
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_125)
              OpenAD_Symbol_124 = (INT(OpenAD_Symbol_124) + INT(
     > 1_w2f__i8))
            END DO
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_124)
            OpenAD_Symbol_123 = (INT(OpenAD_Symbol_123) + INT(1_w2f__i8
     > ))
          END DO
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_123)
          OpenAD_Symbol_122 = (INT(OpenAD_Symbol_122) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_122)
        OpenAD_Symbol_121 = (INT(OpenAD_Symbol_121) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_121)
      CALL find_bulkmod(__deriv__(LOCPRES), __deriv__(TFLD), __deriv__(
     > SFLD), __deriv__(BULKMOD))
      OpenAD_Symbol_126 = 0_w2f__i8
      DO I = 1, 2, 1
        OpenAD_Symbol_127 = 0_w2f__i8
        DO J = 1, 2, 1
          __value__(Y(INT(J + INT((I * 2)) +(-2)))) = __value__(BULKMOD
     > (I, J))
          OpenAD_Symbol_149 = (J + I * 2 +(-2))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_149)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_127 = (INT(OpenAD_Symbol_127) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_127)
        OpenAD_Symbol_126 = (INT(OpenAD_Symbol_126) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_126)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_107)
      OpenAD_Symbol_108 = 1
      DO WHILE(INT(OpenAD_Symbol_108) .LE. INT(OpenAD_Symbol_107))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_109)
        OpenAD_Symbol_110 = 1
        DO WHILE(INT(OpenAD_Symbol_110) .LE. INT(OpenAD_Symbol_109))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_195)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_196)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_197)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(INT(OpenAD_Symbol_197))), __deriv__
     > (BULKMOD(INT(OpenAD_Symbol_196), INT(OpenAD_Symbol_195))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_197))))
          OpenAD_Symbol_110 = INT(OpenAD_Symbol_110) + 1
        END DO
        OpenAD_Symbol_108 = INT(OpenAD_Symbol_108) + 1
      END DO
      CALL find_bulkmod(__deriv__(LOCPRES), __deriv__(TFLD), __deriv__(
     > SFLD), __deriv__(BULKMOD))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_111)
      OpenAD_Symbol_112 = 1
      DO WHILE(INT(OpenAD_Symbol_112) .LE. INT(OpenAD_Symbol_111))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_113)
        OpenAD_Symbol_114 = 1
        DO WHILE(INT(OpenAD_Symbol_114) .LE. INT(OpenAD_Symbol_113))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_115)
          OpenAD_Symbol_116 = 1
          DO WHILE(INT(OpenAD_Symbol_116) .LE. INT(OpenAD_Symbol_115))
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_117)
            OpenAD_Symbol_118 = 1
            DO WHILE(INT(OpenAD_Symbol_118) .LE. INT(OpenAD_Symbol_117)
     > )
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_119)
              OpenAD_Symbol_120 = 1
              DO WHILE(INT(OpenAD_Symbol_120) .LE. INT(
     > OpenAD_Symbol_119))
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_189)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_190)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_191)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_192)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_193)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_194)
C               $OpenAD$ INLINE Saxpy(subst,subst,subst)
                CALL Saxpy(4.0D00, __deriv__(SFLD(INT(OpenAD_Symbol_193
     > ), INT(OpenAD_Symbol_192), INT(OpenAD_Symbol_191), INT(
     > OpenAD_Symbol_190), INT(OpenAD_Symbol_189))), __deriv__(X(INT(
     > OpenAD_Symbol_194))))
C               $OpenAD$ INLINE ZeroDeriv(subst)
                CALL ZeroDeriv(__deriv__(SFLD(INT(OpenAD_Symbol_193),
     >  INT(OpenAD_Symbol_192), INT(OpenAD_Symbol_191), INT(
     > OpenAD_Symbol_190), INT(OpenAD_Symbol_189))))
C               $OpenAD$ INLINE Saxpy(subst,subst,subst)
                CALL Saxpy(3.0D00, __deriv__(TFLD(INT(OpenAD_Symbol_193
     > ), INT(OpenAD_Symbol_192), INT(OpenAD_Symbol_191), INT(
     > OpenAD_Symbol_190), INT(OpenAD_Symbol_189))), __deriv__(X(INT(
     > OpenAD_Symbol_194))))
C               $OpenAD$ INLINE ZeroDeriv(subst)
                CALL ZeroDeriv(__deriv__(TFLD(INT(OpenAD_Symbol_193),
     >  INT(OpenAD_Symbol_192), INT(OpenAD_Symbol_191), INT(
     > OpenAD_Symbol_190), INT(OpenAD_Symbol_189))))
                OpenAD_Symbol_120 = INT(OpenAD_Symbol_120) + 1
              END DO
              OpenAD_Symbol_118 = INT(OpenAD_Symbol_118) + 1
            END DO
            OpenAD_Symbol_116 = INT(OpenAD_Symbol_116) + 1
          END DO
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_186)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_187)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_188)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(2.0D00, __deriv__(LOCPRES(INT(OpenAD_Symbol_187),
     >  INT(OpenAD_Symbol_186))), __deriv__(X(INT(OpenAD_Symbol_188))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(LOCPRES(INT(OpenAD_Symbol_187), INT(
     > OpenAD_Symbol_186))))
          OpenAD_Symbol_114 = INT(OpenAD_Symbol_114) + 1
        END DO
        OpenAD_Symbol_112 = INT(OpenAD_Symbol_112) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      XCOUNT = 1
      OpenAD_Symbol_142 = 0_w2f__i8
      DO I = 1, 2, 1
        OpenAD_Symbol_143 = 0_w2f__i8
        DO J = 1, 2, 1
          __value__(LOCPRES(INT(I), INT(J))) = (__value__(X(XCOUNT)) *
     >  2.0D00)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(XCOUNT)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_144 = 0_w2f__i8
          DO K = 1, 2, 1
            OpenAD_Symbol_145 = 0_w2f__i8
            DO L = 1, 2, 1
              OpenAD_Symbol_146 = 0_w2f__i8
              DO M = 1, 2, 1
                __value__(TFLD(INT(I), INT(J), INT(K), INT(L), INT(M)))
     >  = (__value__(X(XCOUNT)) * 3.0D00)
                __value__(SFLD(INT(I), INT(J), INT(K), INT(L), INT(M)))
     >  = (__value__(X(XCOUNT)) * 4.0D00)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(XCOUNT)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(I)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(J)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(K)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(L)
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(M)
                XCOUNT = (XCOUNT + 1)
                OpenAD_Symbol_146 = (INT(OpenAD_Symbol_146) + INT(
     > 1_w2f__i8))
              END DO
C             $OpenAD$ INLINE push_i(subst)
              CALL push_i(OpenAD_Symbol_146)
              OpenAD_Symbol_145 = (INT(OpenAD_Symbol_145) + INT(
     > 1_w2f__i8))
            END DO
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_145)
            OpenAD_Symbol_144 = (INT(OpenAD_Symbol_144) + INT(1_w2f__i8
     > ))
          END DO
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_144)
          OpenAD_Symbol_143 = (INT(OpenAD_Symbol_143) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_143)
        OpenAD_Symbol_142 = (INT(OpenAD_Symbol_142) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_142)
      CALL find_bulkmod(__deriv__(LOCPRES), __deriv__(TFLD), __deriv__(
     > SFLD), __deriv__(BULKMOD))
      OpenAD_Symbol_147 = 0_w2f__i8
      DO I = 1, 2, 1
        OpenAD_Symbol_148 = 0_w2f__i8
        DO J = 1, 2, 1
          __value__(Y(INT(J + INT((I * 2)) +(-2)))) = __value__(BULKMOD
     > (I, J))
          OpenAD_Symbol_149 = (J + I * 2 +(-2))
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_149)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(I)
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(J)
          OpenAD_Symbol_148 = (INT(OpenAD_Symbol_148) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_148)
        OpenAD_Symbol_147 = (INT(OpenAD_Symbol_147) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_147)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_128)
      OpenAD_Symbol_129 = 1
      DO WHILE(INT(OpenAD_Symbol_129) .LE. INT(OpenAD_Symbol_128))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_130)
        OpenAD_Symbol_131 = 1
        DO WHILE(INT(OpenAD_Symbol_131) .LE. INT(OpenAD_Symbol_130))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_195)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_196)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_197)
C         $OpenAD$ INLINE IncDeriv(subst,subst)
          CALL IncDeriv(__deriv__(Y(INT(OpenAD_Symbol_197))), __deriv__
     > (BULKMOD(INT(OpenAD_Symbol_196), INT(OpenAD_Symbol_195))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(Y(INT(OpenAD_Symbol_197))))
          OpenAD_Symbol_131 = INT(OpenAD_Symbol_131) + 1
        END DO
        OpenAD_Symbol_129 = INT(OpenAD_Symbol_129) + 1
      END DO
      CALL find_bulkmod(__deriv__(LOCPRES), __deriv__(TFLD), __deriv__(
     > SFLD), __deriv__(BULKMOD))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_132)
      OpenAD_Symbol_133 = 1
      DO WHILE(INT(OpenAD_Symbol_133) .LE. INT(OpenAD_Symbol_132))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_134)
        OpenAD_Symbol_135 = 1
        DO WHILE(INT(OpenAD_Symbol_135) .LE. INT(OpenAD_Symbol_134))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_136)
          OpenAD_Symbol_137 = 1
          DO WHILE(INT(OpenAD_Symbol_137) .LE. INT(OpenAD_Symbol_136))
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_138)
            OpenAD_Symbol_139 = 1
            DO WHILE(INT(OpenAD_Symbol_139) .LE. INT(OpenAD_Symbol_138)
     > )
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_140)
              OpenAD_Symbol_141 = 1
              DO WHILE(INT(OpenAD_Symbol_141) .LE. INT(
     > OpenAD_Symbol_140))
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_189)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_190)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_191)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_192)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_193)
C               $OpenAD$ INLINE pop_i(subst)
                CALL pop_i(OpenAD_Symbol_194)
C               $OpenAD$ INLINE Saxpy(subst,subst,subst)
                CALL Saxpy(4.0D00, __deriv__(SFLD(INT(OpenAD_Symbol_193
     > ), INT(OpenAD_Symbol_192), INT(OpenAD_Symbol_191), INT(
     > OpenAD_Symbol_190), INT(OpenAD_Symbol_189))), __deriv__(X(INT(
     > OpenAD_Symbol_194))))
C               $OpenAD$ INLINE ZeroDeriv(subst)
                CALL ZeroDeriv(__deriv__(SFLD(INT(OpenAD_Symbol_193),
     >  INT(OpenAD_Symbol_192), INT(OpenAD_Symbol_191), INT(
     > OpenAD_Symbol_190), INT(OpenAD_Symbol_189))))
C               $OpenAD$ INLINE Saxpy(subst,subst,subst)
                CALL Saxpy(3.0D00, __deriv__(TFLD(INT(OpenAD_Symbol_193
     > ), INT(OpenAD_Symbol_192), INT(OpenAD_Symbol_191), INT(
     > OpenAD_Symbol_190), INT(OpenAD_Symbol_189))), __deriv__(X(INT(
     > OpenAD_Symbol_194))))
C               $OpenAD$ INLINE ZeroDeriv(subst)
                CALL ZeroDeriv(__deriv__(TFLD(INT(OpenAD_Symbol_193),
     >  INT(OpenAD_Symbol_192), INT(OpenAD_Symbol_191), INT(
     > OpenAD_Symbol_190), INT(OpenAD_Symbol_189))))
                OpenAD_Symbol_141 = INT(OpenAD_Symbol_141) + 1
              END DO
              OpenAD_Symbol_139 = INT(OpenAD_Symbol_139) + 1
            END DO
            OpenAD_Symbol_137 = INT(OpenAD_Symbol_137) + 1
          END DO
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_186)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_187)
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_188)
C         $OpenAD$ INLINE Saxpy(subst,subst,subst)
          CALL Saxpy(2.0D00, __deriv__(LOCPRES(INT(OpenAD_Symbol_187),
     >  INT(OpenAD_Symbol_186))), __deriv__(X(INT(OpenAD_Symbol_188))))
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(LOCPRES(INT(OpenAD_Symbol_187), INT(
     > OpenAD_Symbol_186))))
          OpenAD_Symbol_135 = INT(OpenAD_Symbol_135) + 1
        END DO
        OpenAD_Symbol_133 = INT(OpenAD_Symbol_133) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
