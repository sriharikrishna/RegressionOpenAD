
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE find_bulkmod(LOCPRES, TFLD, SFLD, BULKMOD)
      use w2f__types
      use OAD_active
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
      REAL(w2f__8) OpenAD_Symbol_111
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
      type(active) :: LOCPRES(1 : 2, 1 : 2)
      type(active) :: TFLD(1 : 2, 1 : 2, 1 : 2, 1 : 2, 1 : 2)
      type(active) :: SFLD(1 : 2, 1 : 2, 1 : 2, 1 : 2, 1 : 2)
      type(active) :: BULKMOD(1 : 2, 1 : 2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) BI
      INTEGER(w2f__i4) BJ
      type(active) :: BMFRESH
      type(active) :: BMPRES
      type(active) :: BMSALT
      REAL(w2f__8) EOSJMDCKFW(1 : 5)
      REAL(w2f__8) EOSJMDCKP(1 : 14)
      REAL(w2f__8) EOSJMDCKSW(1 : 7)
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      type(active) :: P
      type(active) :: P2
      type(active) :: S
      type(active) :: S3O2
      REAL(w2f__8) SITOBAR
      type(active) :: T
      type(active) :: T2
      type(active) :: T3
      type(active) :: T4
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
          T%v = TFLD(I,J,K,BI,BJ)%v
          T2%v = (T%v*T%v)
          OpenAD_Symbol_0 = T%v
          OpenAD_Symbol_1 = T%v
          T3%v = (T%v*T2%v)
          OpenAD_Symbol_2 = T2%v
          OpenAD_Symbol_3 = T%v
          T4%v = (T%v*T3%v)
          OpenAD_Symbol_4 = T3%v
          OpenAD_Symbol_5 = T%v
          S%v = SFLD(I,J,K,BI,BJ)%v
          OpenAD_Symbol_89 = (OpenAD_Symbol_0 + OpenAD_Symbol_1)
          OpenAD_Symbol_90 = (OpenAD_Symbol_2 + OpenAD_Symbol_89 *
     >  OpenAD_Symbol_3)
          OpenAD_Symbol_91 = (OpenAD_Symbol_4 + OpenAD_Symbol_90 *
     >  OpenAD_Symbol_5)
          CALL setderiv(T,TFLD(I,J,K,BI,BJ))
          CALL sax(OpenAD_Symbol_89,T,T2)
          CALL sax(OpenAD_Symbol_90,T,T3)
          CALL sax(OpenAD_Symbol_91,T,T4)
          CALL setderiv(S,SFLD(I,J,K,BI,BJ))
          IF (S%v .GT. 0.0D00) THEN
            OpenAD_Symbol_6 = SQRT(S%v)
            S3O2%v = (S%v*OpenAD_Symbol_6)
            OpenAD_Symbol_7 = OpenAD_Symbol_6
            OpenAD_Symbol_9 = (5.0D-01 / OpenAD_Symbol_6)
            OpenAD_Symbol_8 = S%v
            OpenAD_Symbol_92 = (OpenAD_Symbol_9 * OpenAD_Symbol_8)
            CALL sax(OpenAD_Symbol_7,S,S3O2)
            CALL saxpy(OpenAD_Symbol_92,S,S3O2)
          ELSE
            S%v = 0.0D00
            S3O2%v = 0.0D00
            CALL zero_deriv(S)
            CALL zero_deriv(S3O2)
          ENDIF
          P%v = (LOCPRES(I,J)%v*SITOBAR)
          OpenAD_Symbol_10 = SITOBAR
          P2%v = (P%v*P%v)
          OpenAD_Symbol_12 = P%v
          OpenAD_Symbol_13 = P%v
          BMFRESH%v = (EOSJMDCKFW(1)+EOSJMDCKFW(2)*T%v+EOSJMDCKFW(3)*T2%
     +v+EOSJMDCKFW(4)*T3%v+EOSJMDCKFW(5)*T4%v)
          OpenAD_Symbol_16 = EOSJMDCKFW(2)
          OpenAD_Symbol_18 = EOSJMDCKFW(3)
          OpenAD_Symbol_20 = EOSJMDCKFW(4)
          OpenAD_Symbol_22 = EOSJMDCKFW(5)
          OpenAD_Symbol_23 = (EOSJMDCKSW(1)+EOSJMDCKSW(2)*T%v+EOSJMDCKSW
     +(3)*T2%v+EOSJMDCKSW(4)*T3%v)
          OpenAD_Symbol_33 = (EOSJMDCKSW(5)+EOSJMDCKSW(6)*T%v+EOSJMDCKSW
     +(7)*T2%v)
          BMSALT%v = (S%v*OpenAD_Symbol_23+S3O2%v*OpenAD_Symbol_33)
          OpenAD_Symbol_24 = OpenAD_Symbol_23
          OpenAD_Symbol_28 = EOSJMDCKSW(2)
          OpenAD_Symbol_30 = EOSJMDCKSW(3)
          OpenAD_Symbol_32 = EOSJMDCKSW(4)
          OpenAD_Symbol_25 = S%v
          OpenAD_Symbol_34 = OpenAD_Symbol_33
          OpenAD_Symbol_38 = EOSJMDCKSW(6)
          OpenAD_Symbol_40 = EOSJMDCKSW(7)
          OpenAD_Symbol_35 = S3O2%v
          OpenAD_Symbol_41 = (EOSJMDCKP(1)+EOSJMDCKP(2)*T%v+EOSJMDCKP(3)
     +*T2%v+EOSJMDCKP(4)*T3%v)
          OpenAD_Symbol_51 = (P%v*S%v)
          OpenAD_Symbol_52 = (EOSJMDCKP(5)+EOSJMDCKP(6)*T%v+EOSJMDCKP(7)
     +*T2%v)
          OpenAD_Symbol_62 = (P%v*S3O2%v)
          OpenAD_Symbol_67 = (EOSJMDCKP(9)+EOSJMDCKP(10)*T%v+EOSJMDCKP(1
     +1)*T2%v)
          OpenAD_Symbol_75 = (P2%v*S%v)
          OpenAD_Symbol_76 = (EOSJMDCKP(12)+EOSJMDCKP(13)*T%v+EOSJMDCKP(
     +14)*T2%v)
          BMPRES%v = (P%v*OpenAD_Symbol_41+OpenAD_Symbol_51*OpenAD_Symbo
     +l_52+EOSJMDCKP(8)*OpenAD_Symbol_62+P2%v*OpenAD_Symbol_67+OpenAD_Sy
     +mbol_75*OpenAD_Symbol_76)
          OpenAD_Symbol_42 = OpenAD_Symbol_41
          OpenAD_Symbol_46 = EOSJMDCKP(2)
          OpenAD_Symbol_48 = EOSJMDCKP(3)
          OpenAD_Symbol_50 = EOSJMDCKP(4)
          OpenAD_Symbol_43 = P%v
          OpenAD_Symbol_55 = S%v
          OpenAD_Symbol_56 = P%v
          OpenAD_Symbol_53 = OpenAD_Symbol_52
          OpenAD_Symbol_59 = EOSJMDCKP(6)
          OpenAD_Symbol_61 = EOSJMDCKP(7)
          OpenAD_Symbol_54 = OpenAD_Symbol_51
          OpenAD_Symbol_65 = S3O2%v
          OpenAD_Symbol_66 = P%v
          OpenAD_Symbol_64 = EOSJMDCKP(8)
          OpenAD_Symbol_68 = OpenAD_Symbol_67
          OpenAD_Symbol_72 = EOSJMDCKP(10)
          OpenAD_Symbol_74 = EOSJMDCKP(11)
          OpenAD_Symbol_69 = P2%v
          OpenAD_Symbol_79 = S%v
          OpenAD_Symbol_80 = P2%v
          OpenAD_Symbol_77 = OpenAD_Symbol_76
          OpenAD_Symbol_83 = EOSJMDCKP(13)
          OpenAD_Symbol_85 = EOSJMDCKP(14)
          OpenAD_Symbol_78 = OpenAD_Symbol_75
          BULKMOD(INT(I),INT(J))%v = (BMPRES%v+BMFRESH%v+BMSALT%v)
          OpenAD_Symbol_93 = (OpenAD_Symbol_80 * OpenAD_Symbol_77)
          OpenAD_Symbol_94 = (OpenAD_Symbol_56 * OpenAD_Symbol_53)
          OpenAD_Symbol_95 = (OpenAD_Symbol_50 * OpenAD_Symbol_43)
          OpenAD_Symbol_96 = (OpenAD_Symbol_32 * OpenAD_Symbol_25)
          OpenAD_Symbol_97 = (OpenAD_Symbol_85 * OpenAD_Symbol_78)
          OpenAD_Symbol_98 = (OpenAD_Symbol_74 * OpenAD_Symbol_69)
          OpenAD_Symbol_99 = (OpenAD_Symbol_61 * OpenAD_Symbol_54)
          OpenAD_Symbol_100 = (OpenAD_Symbol_48 * OpenAD_Symbol_43)
          OpenAD_Symbol_101 = (OpenAD_Symbol_40 * OpenAD_Symbol_35)
          OpenAD_Symbol_102 = (OpenAD_Symbol_30 * OpenAD_Symbol_25)
          OpenAD_Symbol_103 = (OpenAD_Symbol_83 * OpenAD_Symbol_78)
          OpenAD_Symbol_104 = (OpenAD_Symbol_72 * OpenAD_Symbol_69)
          OpenAD_Symbol_105 = (OpenAD_Symbol_66 * OpenAD_Symbol_64)
          OpenAD_Symbol_106 = (OpenAD_Symbol_59 * OpenAD_Symbol_54)
          OpenAD_Symbol_107 = (OpenAD_Symbol_46 * OpenAD_Symbol_43)
          OpenAD_Symbol_108 = (OpenAD_Symbol_38 * OpenAD_Symbol_35)
          OpenAD_Symbol_109 = (OpenAD_Symbol_28 * OpenAD_Symbol_25)
          OpenAD_Symbol_110 = (OpenAD_Symbol_12 + OpenAD_Symbol_13)
          OpenAD_Symbol_111 = (OpenAD_Symbol_10 * OpenAD_Symbol_42 +
     >  OpenAD_Symbol_10 * OpenAD_Symbol_110 * OpenAD_Symbol_79 *
     >  OpenAD_Symbol_77 + OpenAD_Symbol_10 * OpenAD_Symbol_110 *
     >  OpenAD_Symbol_68 + OpenAD_Symbol_10 * OpenAD_Symbol_55 *
     >  OpenAD_Symbol_53 + OpenAD_Symbol_10 * OpenAD_Symbol_65 *
     >  OpenAD_Symbol_64)
          CALL sax(OpenAD_Symbol_111,LOCPRES(I,J),BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_24,S,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_93,S,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_94,S,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_95,T3,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_34,S3O2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_96,T3,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_97,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_98,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_99,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_100,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_101,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_102,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_103,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_104,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_105,S3O2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_106,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_107,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_108,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_109,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_18,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_20,T3,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_22,T4,BULKMOD(I,J))
          CALL saxpy(OpenAD_Symbol_16,T,BULKMOD(I,J))
        END DO
      END DO
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1 : 32)
      type(active) :: Y(1 : 4)
C
C     **** Local Variables and Functions ****
C
      type(active) :: BULKMOD(1 : 2, 1 : 2)
      EXTERNAL find_bulkmod
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      INTEGER(w2f__i4) L
      type(active) :: LOCPRES(1 : 2, 1 : 2)
      INTEGER(w2f__i4) M
      type(active) :: SFLD(1 : 2, 1 : 2, 1 : 2, 1 : 2, 1 : 2)
      type(active) :: TFLD(1 : 2, 1 : 2, 1 : 2, 1 : 2, 1 : 2)
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
          LOCPRES(INT(I),INT(J))%v = (X(XCOUNT)%v*2.0D00)
          CALL sax(2.0D00,X(XCOUNT),LOCPRES(I,J))
          DO K = 1, 2, 1
            DO L = 1, 2, 1
              DO M = 1, 2, 1
                TFLD(INT(I),INT(J),INT(K),INT(L),INT(M))%v = (X(XCOUNT)%
     +v*3.0D00)
                SFLD(INT(I),INT(J),INT(K),INT(L),INT(M))%v = (X(XCOUNT)%
     +v*4.0D00)
                CALL sax(3.0D00,X(XCOUNT),TFLD(I,J,K,L,M))
                CALL sax(4.0D00,X(XCOUNT),SFLD(I,J,K,L,M))
                XCOUNT = (XCOUNT + 1)
              END DO
            END DO
          END DO
        END DO
      END DO
      CALL find_bulkmod(LOCPRES,TFLD,SFLD,BULKMOD)
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          Y(INT(J+INT((I*2))+(-2)))%v = BULKMOD(I,J)%v
          CALL setderiv(Y(J+I*2+(-2)),BULKMOD(I,J))
        END DO
      END DO
      END SUBROUTINE
