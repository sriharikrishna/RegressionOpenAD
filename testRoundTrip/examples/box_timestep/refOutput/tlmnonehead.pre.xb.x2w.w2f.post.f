

      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC,
     >  FLDNOW, FLDOLD, FLDNEW)
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
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_76
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_81
      REAL(w2f__8) OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_83
      REAL(w2f__8) OpenAD_Symbol_84
      REAL(w2f__8) OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_Symbol_86
      REAL(w2f__8) OpenAD_Symbol_87
      REAL(w2f__8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) GAMMALOC
      REAL(w2f__8) FLDSTAR(1 : 2)
      REAL(w2f__8) EXTFORLOC(1 : 2)
      REAL(w2f__8) UVELLOC
      type(active) :: FLDNOW(1:3)
      REAL(w2f__8) FLDOLD(1 : 3)
      type(active) :: FLDNEW(1:3)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) DELTA_T
      type(active) :: DFLDDT(1:3)
      INTEGER(w2f__i4) L
      REAL(w2f__8) VOL(1 : 3)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(FLDNOW)
C$OPENAD DEPENDENT(FLDNEW)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF(UVELLOC .GE. 0.0D00) THEN
        OpenAD_Symbol_7 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_Symbol_4 = (GAMMALOC * OpenAD_Symbol_7)
        OpenAD_Symbol_11 = (FLDNOW(3)%v-FLDNOW(1)%v)
        OpenAD_Symbol_0 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_4 +
     >  UVELLOC * OpenAD_Symbol_11)
        DFLDDT(1)%v = (OpenAD_Symbol_0/VOL(1))
        OpenAD_Symbol_9 = GAMMALOC
        OpenAD_Symbol_6 = VOL(1)
        OpenAD_Symbol_13 = UVELLOC
        OpenAD_Symbol_1 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_72 = (OpenAD_Symbol_13 * OpenAD_Symbol_1)
        OpenAD_Symbol_73 = (INT((-1_w2f__i8)) * OpenAD_Symbol_72)
        OpenAD_Symbol_74 = (INT((-1_w2f__i8)) * OpenAD_Symbol_9 *
     >  OpenAD_Symbol_6 * OpenAD_Symbol_1)
        CALL sax(OpenAD_Symbol_72,FLDNOW(3),DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_73,FLDNOW(1),DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_74,FLDNOW(1),DFLDDT(1))
        OpenAD_Symbol_21 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_Symbol_18 = (GAMMALOC * OpenAD_Symbol_21)
        OpenAD_Symbol_25 = (FLDNOW(1)%v-FLDNOW(2)%v)
        OpenAD_Symbol_14 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_18 +
     >  UVELLOC * OpenAD_Symbol_25)
        DFLDDT(2)%v = (OpenAD_Symbol_14/VOL(2))
        OpenAD_Symbol_23 = GAMMALOC
        OpenAD_Symbol_20 = VOL(2)
        OpenAD_Symbol_27 = UVELLOC
        OpenAD_Symbol_15 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_75 = (OpenAD_Symbol_27 * OpenAD_Symbol_15)
        OpenAD_Symbol_76 = (INT((-1_w2f__i8)) * OpenAD_Symbol_75)
        OpenAD_Symbol_77 = (INT((-1_w2f__i8)) * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_20 * OpenAD_Symbol_15)
        CALL sax(OpenAD_Symbol_75,FLDNOW(1),DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_76,FLDNOW(2),DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_77,FLDNOW(2),DFLDDT(2))
        OpenAD_Symbol_31 = (FLDNOW(2)%v-FLDNOW(3)%v)
        OpenAD_Symbol_28 = (UVELLOC * OpenAD_Symbol_31)
        DFLDDT(3)%v = (OpenAD_Symbol_28/VOL(3))
        OpenAD_Symbol_33 = UVELLOC
        OpenAD_Symbol_29 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_78 = (OpenAD_Symbol_33 * OpenAD_Symbol_29)
        OpenAD_Symbol_79 = (INT((-1_w2f__i8)) * OpenAD_Symbol_78)
        CALL sax(OpenAD_Symbol_78,FLDNOW(2),DFLDDT(3))
        CALL saxpy(OpenAD_Symbol_79,FLDNOW(3),DFLDDT(3))
      ELSE
        OpenAD_Symbol_45 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_Symbol_42 = (GAMMALOC * OpenAD_Symbol_45)
        OpenAD_Symbol_49 = (FLDNOW(2)%v-FLDNOW(1)%v)
        OpenAD_Symbol_38 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_42 -
     >  UVELLOC * OpenAD_Symbol_49)
        DFLDDT(1)%v = (OpenAD_Symbol_38/VOL(1))
        OpenAD_Symbol_47 = GAMMALOC
        OpenAD_Symbol_44 = VOL(1)
        OpenAD_Symbol_51 = UVELLOC
        OpenAD_Symbol_39 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_80 = (OpenAD_Symbol_51 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_39)
        OpenAD_Symbol_81 = (INT((-1_w2f__i8)) * OpenAD_Symbol_80)
        OpenAD_Symbol_82 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47 *
     >  OpenAD_Symbol_44 * OpenAD_Symbol_39)
        CALL sax(OpenAD_Symbol_80,FLDNOW(2),DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_81,FLDNOW(1),DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_82,FLDNOW(1),DFLDDT(1))
        OpenAD_Symbol_59 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_Symbol_56 = (GAMMALOC * OpenAD_Symbol_59)
        OpenAD_Symbol_63 = (FLDNOW(3)%v-FLDNOW(2)%v)
        OpenAD_Symbol_52 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_56 -
     >  UVELLOC * OpenAD_Symbol_63)
        DFLDDT(2)%v = (OpenAD_Symbol_52/VOL(2))
        OpenAD_Symbol_61 = GAMMALOC
        OpenAD_Symbol_58 = VOL(2)
        OpenAD_Symbol_65 = UVELLOC
        OpenAD_Symbol_53 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_83 = (OpenAD_Symbol_65 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_53)
        OpenAD_Symbol_84 = (INT((-1_w2f__i8)) * OpenAD_Symbol_83)
        OpenAD_Symbol_85 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61 *
     >  OpenAD_Symbol_58 * OpenAD_Symbol_53)
        CALL sax(OpenAD_Symbol_83,FLDNOW(3),DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_84,FLDNOW(2),DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_85,FLDNOW(2),DFLDDT(2))
        OpenAD_Symbol_69 = (FLDNOW(1)%v-FLDNOW(3)%v)
        OpenAD_Symbol_66 = (UVELLOC * OpenAD_Symbol_69)
        DFLDDT(3)%v = (-(OpenAD_Symbol_66/VOL(3)))
        OpenAD_Symbol_71 = UVELLOC
        OpenAD_Symbol_67 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_86 = (OpenAD_Symbol_71 * OpenAD_Symbol_67 * INT((
     > -1_w2f__i8)))
        OpenAD_Symbol_87 = (INT((-1_w2f__i8)) * OpenAD_Symbol_86)
        CALL sax(OpenAD_Symbol_86,FLDNOW(1),DFLDDT(3))
        CALL saxpy(OpenAD_Symbol_87,FLDNOW(3),DFLDDT(3))
      ENDIF
      DO L = 1, 3, 1
        OpenAD_Symbol_35 = (DELTA_T * 2.0D00)
        FLDNEW(INT(L))%v = (FLDOLD(L)+DFLDDT(L)%v*OpenAD_Symbol_35)
        OpenAD_Symbol_36 = OpenAD_Symbol_35
        CALL sax(OpenAD_Symbol_36,DFLDDT(L),FLDNEW(L))
      END DO
      END SUBROUTINE
