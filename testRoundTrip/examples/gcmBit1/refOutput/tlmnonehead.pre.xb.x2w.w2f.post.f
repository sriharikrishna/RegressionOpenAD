
C$OPENAD XXX File_start [head.f]
      SUBROUTINE find_bulkmod(LOCPRES, TFLD, SFLD, BULKMOD)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: LOCPRES(1:2,1:2)
      type(active) :: TFLD(1:2,1:2,1:2,1:2,1:2)
      type(active) :: SFLD(1:2,1:2,1:2,1:2,1:2)
      type(active) :: BULKMOD(1:2,1:2)
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
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_10
      REAL(w2f__8) OpenAD_lin_12
      REAL(w2f__8) OpenAD_lin_13
      REAL(w2f__8) OpenAD_lin_16
      REAL(w2f__8) OpenAD_lin_18
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_20
      REAL(w2f__8) OpenAD_lin_22
      REAL(w2f__8) OpenAD_lin_23
      REAL(w2f__8) OpenAD_lin_24
      REAL(w2f__8) OpenAD_lin_25
      REAL(w2f__8) OpenAD_lin_28
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_30
      REAL(w2f__8) OpenAD_lin_32
      REAL(w2f__8) OpenAD_lin_33
      REAL(w2f__8) OpenAD_lin_34
      REAL(w2f__8) OpenAD_lin_35
      REAL(w2f__8) OpenAD_lin_38
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_40
      REAL(w2f__8) OpenAD_lin_41
      REAL(w2f__8) OpenAD_lin_42
      REAL(w2f__8) OpenAD_lin_43
      REAL(w2f__8) OpenAD_lin_46
      REAL(w2f__8) OpenAD_lin_48
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_50
      REAL(w2f__8) OpenAD_lin_51
      REAL(w2f__8) OpenAD_lin_52
      REAL(w2f__8) OpenAD_lin_53
      REAL(w2f__8) OpenAD_lin_54
      REAL(w2f__8) OpenAD_lin_55
      REAL(w2f__8) OpenAD_lin_56
      REAL(w2f__8) OpenAD_lin_59
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_61
      REAL(w2f__8) OpenAD_lin_62
      REAL(w2f__8) OpenAD_lin_64
      REAL(w2f__8) OpenAD_lin_65
      REAL(w2f__8) OpenAD_lin_66
      REAL(w2f__8) OpenAD_lin_67
      REAL(w2f__8) OpenAD_lin_68
      REAL(w2f__8) OpenAD_lin_69
      REAL(w2f__8) OpenAD_lin_7
      REAL(w2f__8) OpenAD_lin_72
      REAL(w2f__8) OpenAD_lin_74
      REAL(w2f__8) OpenAD_lin_75
      REAL(w2f__8) OpenAD_lin_76
      REAL(w2f__8) OpenAD_lin_77
      REAL(w2f__8) OpenAD_lin_78
      REAL(w2f__8) OpenAD_lin_79
      REAL(w2f__8) OpenAD_lin_8
      REAL(w2f__8) OpenAD_lin_80
      REAL(w2f__8) OpenAD_lin_83
      REAL(w2f__8) OpenAD_lin_85
      REAL(w2f__8) OpenAD_lin_9
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
          OpenAD_lin_0 = T%v
          OpenAD_lin_1 = T%v
          T3%v = (T%v*T2%v)
          OpenAD_lin_2 = T2%v
          OpenAD_lin_3 = T%v
          T4%v = (T%v*T3%v)
          OpenAD_lin_4 = T3%v
          OpenAD_lin_5 = T%v
          S%v = SFLD(I,J,K,BI,BJ)%v
          OpenAD_acc_0 = (OpenAD_lin_0+OpenAD_lin_1)
          OpenAD_acc_1 = (OpenAD_lin_2+OpenAD_acc_0*OpenAD_lin_3)
          OpenAD_acc_2 = (OpenAD_lin_4+OpenAD_acc_1*OpenAD_lin_5)
          CALL setderiv(T,TFLD(I,J,K,BI,BJ))
          CALL sax(OpenAD_acc_0,T,T2)
          CALL sax(OpenAD_acc_1,T,T3)
          CALL sax(OpenAD_acc_2,T,T4)
          CALL setderiv(S,SFLD(I,J,K,BI,BJ))
          IF (S%v.GT.0.0D00) THEN
            OpenAD_lin_6 = SQRT(S%v)
            S3O2%v = (S%v*OpenAD_lin_6)
            OpenAD_lin_7 = OpenAD_lin_6
            OpenAD_lin_9 = (5.0D-01/OpenAD_lin_6)
            OpenAD_lin_8 = S%v
            OpenAD_acc_3 = (OpenAD_lin_9*OpenAD_lin_8)
            CALL sax(OpenAD_lin_7,S,S3O2)
            CALL saxpy(OpenAD_acc_3,S,S3O2)
          ELSE
            S%v = 0.0D00
            S3O2%v = 0.0D00
            CALL zero_deriv(S)
            CALL zero_deriv(S3O2)
          ENDIF
          P%v = (LOCPRES(I,J)%v*SITOBAR)
          OpenAD_lin_10 = SITOBAR
          P2%v = (P%v*P%v)
          OpenAD_lin_12 = P%v
          OpenAD_lin_13 = P%v
          BMFRESH%v = (EOSJMDCKFW(1)+EOSJMDCKFW(2)*T%v+EOSJMDCKFW(3)*T2%
     +v+EOSJMDCKFW(4)*T3%v+EOSJMDCKFW(5)*T4%v)
          OpenAD_lin_16 = EOSJMDCKFW(2)
          OpenAD_lin_18 = EOSJMDCKFW(3)
          OpenAD_lin_20 = EOSJMDCKFW(4)
          OpenAD_lin_22 = EOSJMDCKFW(5)
          OpenAD_lin_23 = (EOSJMDCKSW(1)+EOSJMDCKSW(2)*T%v+EOSJMDCKSW(3)
     +*T2%v+EOSJMDCKSW(4)*T3%v)
          OpenAD_lin_33 = (EOSJMDCKSW(5)+EOSJMDCKSW(6)*T%v+EOSJMDCKSW(7)
     +*T2%v)
          BMSALT%v = (S%v*OpenAD_lin_23+S3O2%v*OpenAD_lin_33)
          OpenAD_lin_24 = OpenAD_lin_23
          OpenAD_lin_28 = EOSJMDCKSW(2)
          OpenAD_lin_30 = EOSJMDCKSW(3)
          OpenAD_lin_32 = EOSJMDCKSW(4)
          OpenAD_lin_25 = S%v
          OpenAD_lin_34 = OpenAD_lin_33
          OpenAD_lin_38 = EOSJMDCKSW(6)
          OpenAD_lin_40 = EOSJMDCKSW(7)
          OpenAD_lin_35 = S3O2%v
          OpenAD_lin_41 = (EOSJMDCKP(1)+EOSJMDCKP(2)*T%v+EOSJMDCKP(3)*T2
     +%v+EOSJMDCKP(4)*T3%v)
          OpenAD_lin_51 = (P%v*S%v)
          OpenAD_lin_52 = (EOSJMDCKP(5)+EOSJMDCKP(6)*T%v+EOSJMDCKP(7)*T2
     +%v)
          OpenAD_lin_62 = (P%v*S3O2%v)
          OpenAD_lin_67 = (EOSJMDCKP(9)+EOSJMDCKP(10)*T%v+EOSJMDCKP(11)*
     +T2%v)
          OpenAD_lin_75 = (P2%v*S%v)
          OpenAD_lin_76 = (EOSJMDCKP(12)+EOSJMDCKP(13)*T%v+EOSJMDCKP(14)
     +*T2%v)
          BMPRES%v = (P%v*OpenAD_lin_41+OpenAD_lin_51*OpenAD_lin_52+EOSJ
     +MDCKP(8)*OpenAD_lin_62+P2%v*OpenAD_lin_67+OpenAD_lin_75*OpenAD_lin
     +_76)
          OpenAD_lin_42 = OpenAD_lin_41
          OpenAD_lin_46 = EOSJMDCKP(2)
          OpenAD_lin_48 = EOSJMDCKP(3)
          OpenAD_lin_50 = EOSJMDCKP(4)
          OpenAD_lin_43 = P%v
          OpenAD_lin_55 = S%v
          OpenAD_lin_56 = P%v
          OpenAD_lin_53 = OpenAD_lin_52
          OpenAD_lin_59 = EOSJMDCKP(6)
          OpenAD_lin_61 = EOSJMDCKP(7)
          OpenAD_lin_54 = OpenAD_lin_51
          OpenAD_lin_65 = S3O2%v
          OpenAD_lin_66 = P%v
          OpenAD_lin_64 = EOSJMDCKP(8)
          OpenAD_lin_68 = OpenAD_lin_67
          OpenAD_lin_72 = EOSJMDCKP(10)
          OpenAD_lin_74 = EOSJMDCKP(11)
          OpenAD_lin_69 = P2%v
          OpenAD_lin_79 = S%v
          OpenAD_lin_80 = P2%v
          OpenAD_lin_77 = OpenAD_lin_76
          OpenAD_lin_83 = EOSJMDCKP(13)
          OpenAD_lin_85 = EOSJMDCKP(14)
          OpenAD_lin_78 = OpenAD_lin_75
          BULKMOD(INT(I),INT(J))%v = (BMPRES%v+BMFRESH%v+BMSALT%v)
          OpenAD_acc_4 = (OpenAD_lin_80*OpenAD_lin_77)
          OpenAD_acc_5 = (OpenAD_lin_56*OpenAD_lin_53)
          OpenAD_acc_6 = (OpenAD_lin_50*OpenAD_lin_43)
          OpenAD_acc_7 = (OpenAD_lin_32*OpenAD_lin_25)
          OpenAD_acc_8 = (OpenAD_lin_85*OpenAD_lin_78)
          OpenAD_acc_9 = (OpenAD_lin_74*OpenAD_lin_69)
          OpenAD_acc_10 = (OpenAD_lin_61*OpenAD_lin_54)
          OpenAD_acc_11 = (OpenAD_lin_48*OpenAD_lin_43)
          OpenAD_acc_12 = (OpenAD_lin_40*OpenAD_lin_35)
          OpenAD_acc_13 = (OpenAD_lin_30*OpenAD_lin_25)
          OpenAD_acc_14 = (OpenAD_lin_83*OpenAD_lin_78)
          OpenAD_acc_15 = (OpenAD_lin_72*OpenAD_lin_69)
          OpenAD_acc_16 = (OpenAD_lin_66*OpenAD_lin_64)
          OpenAD_acc_17 = (OpenAD_lin_59*OpenAD_lin_54)
          OpenAD_acc_18 = (OpenAD_lin_46*OpenAD_lin_43)
          OpenAD_acc_19 = (OpenAD_lin_38*OpenAD_lin_35)
          OpenAD_acc_20 = (OpenAD_lin_28*OpenAD_lin_25)
          OpenAD_acc_21 = (OpenAD_lin_12+OpenAD_lin_13)
          OpenAD_acc_22 = (OpenAD_lin_10*OpenAD_lin_42+OpenAD_lin_10*Ope
     +nAD_acc_21*OpenAD_lin_79*OpenAD_lin_77+OpenAD_lin_10*OpenAD_acc_21
     +*OpenAD_lin_68+OpenAD_lin_10*OpenAD_lin_55*OpenAD_lin_53+OpenAD_li
     +n_10*OpenAD_lin_65*OpenAD_lin_64)
          CALL sax(OpenAD_acc_22,LOCPRES(I,J),BULKMOD(I,J))
          CALL saxpy(OpenAD_lin_24,S,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_4,S,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_5,S,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_6,T3,BULKMOD(I,J))
          CALL saxpy(OpenAD_lin_34,S3O2,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_7,T3,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_8,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_9,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_10,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_11,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_12,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_13,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_14,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_15,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_16,S3O2,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_17,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_18,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_19,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_acc_20,T,BULKMOD(I,J))
          CALL saxpy(OpenAD_lin_18,T2,BULKMOD(I,J))
          CALL saxpy(OpenAD_lin_20,T3,BULKMOD(I,J))
          CALL saxpy(OpenAD_lin_22,T4,BULKMOD(I,J))
          CALL saxpy(OpenAD_lin_16,T,BULKMOD(I,J))
        END DO
      END DO
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:32)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      type(active) :: BULKMOD(1:2,1:2)
      EXTERNAL find_bulkmod
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) K
      INTEGER(w2f__i4) L
      type(active) :: LOCPRES(1:2,1:2)
      INTEGER(w2f__i4) M
      type(active) :: SFLD(1:2,1:2,1:2,1:2,1:2)
      type(active) :: TFLD(1:2,1:2,1:2,1:2,1:2)
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
          DO K = 1,2,1
            DO L = 1,2,1
              DO M = 1,2,1
                TFLD(INT(I),INT(J),INT(K),INT(L),INT(M))%v = (X(XCOUNT)%
     +v*3.0D00)
                SFLD(INT(I),INT(J),INT(K),INT(L),INT(M))%v = (X(XCOUNT)%
     +v*4.0D00)
                CALL sax(3.0D00,X(XCOUNT),TFLD(I,J,K,L,M))
                CALL sax(4.0D00,X(XCOUNT),SFLD(I,J,K,L,M))
                XCOUNT = (XCOUNT+1)
              END DO
            END DO
          END DO
        END DO
      END DO
      CALL find_bulkmod(LOCPRES,TFLD,SFLD,BULKMOD)
      DO I = 1,2,1
        DO J = 1,2,1
          Y(INT(J+INT((I*2))+(-2)))%v = BULKMOD(I,J)%v
          CALL setderiv(Y(J+I*2+(-2)),BULKMOD(I,J))
        END DO
      END DO
      END SUBROUTINE
