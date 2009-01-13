
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE find_bulkmod(LOCPRES, TFLD, SFLD, BULKMOD)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_104
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_109
      REAL(w2f__8) OpenAD_Symbol_110
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_18
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
      REAL(w2f__8) OpenAD_Symbol_89
      REAL(w2f__8) OpenAD_Symbol_9
      REAL(w2f__8) OpenAD_Symbol_90
      REAL(w2f__8) OpenAD_Symbol_91
      REAL(w2f__8) OpenAD_Symbol_92
      REAL(w2f__8) OpenAD_Symbol_93
      REAL(w2f__8) OpenAD_Symbol_94
      REAL(w2f__8) OpenAD_Symbol_95
      REAL(w2f__8) OpenAD_Symbol_96
      REAL(w2f__8) OpenAD_Symbol_97
      REAL(w2f__8) OpenAD_Symbol_98
      REAL(w2f__8) OpenAD_Symbol_99
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
C
C     **** Statements ****
C
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
          OpenAD_Symbol_0 = __value__(T)
          OpenAD_Symbol_1 = __value__(T)
          __value__(T3) = (__value__(T) * __value__(T2))
          OpenAD_Symbol_2 = __value__(T2)
          OpenAD_Symbol_3 = __value__(T)
          __value__(T4) = (__value__(T) * __value__(T3))
          OpenAD_Symbol_4 = __value__(T3)
          OpenAD_Symbol_5 = __value__(T)
          __value__(S) = __value__(SFLD(I, J, K, BI, BJ))
          OpenAD_Symbol_89 = (OpenAD_Symbol_0 + OpenAD_Symbol_1)
          OpenAD_Symbol_90 = (OpenAD_Symbol_2 + OpenAD_Symbol_89 *
     >  OpenAD_Symbol_3)
          OpenAD_Symbol_91 = (OpenAD_Symbol_4 + OpenAD_Symbol_90 *
     >  OpenAD_Symbol_5)
          CALL setderiv(__deriv__(T), __deriv__(TFLD(I, J, K, BI, BJ)))
          CALL sax(OpenAD_Symbol_89, __deriv__(TFLD(I, J, K, BI, BJ)),
     >  __deriv__(T2))
          CALL sax(OpenAD_Symbol_90, __deriv__(TFLD(I, J, K, BI, BJ)),
     >  __deriv__(T3))
          CALL sax(OpenAD_Symbol_91, __deriv__(TFLD(I, J, K, BI, BJ)),
     >  __deriv__(T4))
          CALL setderiv(__deriv__(S), __deriv__(SFLD(I, J, K, BI, BJ)))
          IF(__value__(S) .GT. 0.0D00) THEN
            OpenAD_Symbol_6 = SQRT(__value__(S))
            __value__(S3O2) = (__value__(S) * OpenAD_Symbol_6)
            OpenAD_Symbol_7 = OpenAD_Symbol_6
            OpenAD_Symbol_9 = (5.0D-01 / OpenAD_Symbol_6)
            OpenAD_Symbol_8 = __value__(S)
            OpenAD_Symbol_92 = (OpenAD_Symbol_9 * OpenAD_Symbol_8)
            CALL sax(OpenAD_Symbol_92, __deriv__(S), __deriv__(S3O2))
            CALL saxpy(OpenAD_Symbol_7, __deriv__(S), __deriv__(S3O2))
          ELSE
            __value__(S) = 0.0D00
            __value__(S3O2) = 0.0D00
            CALL zero_deriv(__deriv__(S))
            CALL zero_deriv(__deriv__(S3O2))
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
          OpenAD_Symbol_93 = (OpenAD_Symbol_85 * OpenAD_Symbol_78)
          OpenAD_Symbol_94 = (OpenAD_Symbol_83 * OpenAD_Symbol_78)
          OpenAD_Symbol_95 = (OpenAD_Symbol_80 * OpenAD_Symbol_77)
          OpenAD_Symbol_96 = (OpenAD_Symbol_74 * OpenAD_Symbol_69)
          OpenAD_Symbol_97 = (OpenAD_Symbol_72 * OpenAD_Symbol_69)
          OpenAD_Symbol_98 = (OpenAD_Symbol_66 * OpenAD_Symbol_64)
          OpenAD_Symbol_99 = (OpenAD_Symbol_61 * OpenAD_Symbol_54)
          OpenAD_Symbol_100 = (OpenAD_Symbol_59 * OpenAD_Symbol_54)
          OpenAD_Symbol_101 = (OpenAD_Symbol_56 * OpenAD_Symbol_53)
          OpenAD_Symbol_102 = (OpenAD_Symbol_50 * OpenAD_Symbol_43)
          OpenAD_Symbol_103 = (OpenAD_Symbol_48 * OpenAD_Symbol_43)
          OpenAD_Symbol_104 = (OpenAD_Symbol_46 * OpenAD_Symbol_43)
          OpenAD_Symbol_105 = (OpenAD_Symbol_40 * OpenAD_Symbol_35)
          OpenAD_Symbol_106 = (OpenAD_Symbol_38 * OpenAD_Symbol_35)
          OpenAD_Symbol_107 = (OpenAD_Symbol_32 * OpenAD_Symbol_25)
          OpenAD_Symbol_108 = (OpenAD_Symbol_30 * OpenAD_Symbol_25)
          OpenAD_Symbol_109 = (OpenAD_Symbol_28 * OpenAD_Symbol_25)
          OpenAD_Symbol_110 = (OpenAD_Symbol_10 *(OpenAD_Symbol_42 +
     >  OpenAD_Symbol_65 * OpenAD_Symbol_64 + OpenAD_Symbol_55 *
     >  OpenAD_Symbol_53 +(OpenAD_Symbol_12 + OpenAD_Symbol_13) *(
     > OpenAD_Symbol_68 + OpenAD_Symbol_79 * OpenAD_Symbol_77)))
          CALL sax(OpenAD_Symbol_24, __deriv__(S), __deriv__(BULKMOD(I,
     >  J)))
          CALL saxpy(OpenAD_Symbol_34, __deriv__(S3O2), __deriv__(
     > BULKMOD(I, J)))
          CALL saxpy(OpenAD_Symbol_93, __deriv__(T2), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_94, __deriv__(T), __deriv__(BULKMOD(
     > I, J)))
          CALL saxpy(OpenAD_Symbol_95, __deriv__(S), __deriv__(BULKMOD(
     > I, J)))
          CALL saxpy(OpenAD_Symbol_96, __deriv__(T2), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_97, __deriv__(T), __deriv__(BULKMOD(
     > I, J)))
          CALL saxpy(OpenAD_Symbol_98, __deriv__(S3O2), __deriv__(
     > BULKMOD(I, J)))
          CALL saxpy(OpenAD_Symbol_99, __deriv__(T2), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_100, __deriv__(T), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_101, __deriv__(S), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_102, __deriv__(T3), __deriv__(
     > BULKMOD(I, J)))
          CALL saxpy(OpenAD_Symbol_103, __deriv__(T2), __deriv__(
     > BULKMOD(I, J)))
          CALL saxpy(OpenAD_Symbol_104, __deriv__(T), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_105, __deriv__(T2), __deriv__(
     > BULKMOD(I, J)))
          CALL saxpy(OpenAD_Symbol_106, __deriv__(T), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_107, __deriv__(T3), __deriv__(
     > BULKMOD(I, J)))
          CALL saxpy(OpenAD_Symbol_108, __deriv__(T2), __deriv__(
     > BULKMOD(I, J)))
          CALL saxpy(OpenAD_Symbol_109, __deriv__(T), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_22, __deriv__(T4), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_20, __deriv__(T3), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_18, __deriv__(T2), __deriv__(BULKMOD
     > (I, J)))
          CALL saxpy(OpenAD_Symbol_16, __deriv__(T), __deriv__(BULKMOD(
     > I, J)))
          CALL saxpy(OpenAD_Symbol_110, __deriv__(LOCPRES(I, J)),
     >  __deriv__(BULKMOD(I, J)))
        END DO
      END DO
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
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
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      XCOUNT = 1
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          __value__(LOCPRES(INT(I), INT(J))) = (__value__(X(XCOUNT)) *
     >  2.0D00)
          CALL sax(2.0D00, __deriv__(X(XCOUNT)), __deriv__(LOCPRES(I, J
     > )))
          DO K = 1, 2, 1
            DO L = 1, 2, 1
              DO M = 1, 2, 1
                __value__(TFLD(INT(I), INT(J), INT(K), INT(L), INT(M)))
     >  = (__value__(X(XCOUNT)) * 3.0D00)
                __value__(SFLD(INT(I), INT(J), INT(K), INT(L), INT(M)))
     >  = (__value__(X(XCOUNT)) * 4.0D00)
                CALL sax(3.0D00, __deriv__(X(XCOUNT)), __deriv__(TFLD(I
     > , J, K, L, M)))
                CALL sax(4.0D00, __deriv__(X(XCOUNT)), __deriv__(SFLD(I
     > , J, K, L, M)))
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
          CALL setderiv(__deriv__(Y(J + I * 2 + (-2))), __deriv__(
     > BULKMOD(I, J)))
        END DO
      END DO
      END SUBROUTINE
