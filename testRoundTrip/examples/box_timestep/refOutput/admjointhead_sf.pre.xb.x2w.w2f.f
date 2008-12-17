
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC,
     >  FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
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
      TYPE (OpenADTy_active) FLDNOW(1 : 3)
      REAL(w2f__8) FLDOLD(1 : 3)
      TYPE (OpenADTy_active) FLDNEW(1 : 3)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) DELTA_T
      TYPE (OpenADTy_active) DFLDDT(1 : 3)
      INTEGER(w2f__i4) L
      REAL(w2f__8) VOL(1 : 3)
      REAL(w2f__8) OpenAD_Symbol_100
      REAL(w2f__8) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_104
      REAL(w2f__8) OpenAD_Symbol_105
      REAL(w2f__8) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      INTEGER(w2f__i8) OpenAD_Symbol_108
      INTEGER(w2f__i8) OpenAD_Symbol_109
      REAL(w2f__8) OpenAD_Symbol_110
      REAL(w2f__8) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_112
      REAL(w2f__8) OpenAD_Symbol_113
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_118
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(FLDNOW)
C$OPENAD DEPENDENT(FLDNEW)
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF(UVELLOC .GE. 0.0D00) THEN
        __value__(DFLDDT(1)) = ((EXTFORLOC(1) + VOL(1) * GAMMALOC *(
     > FLDSTAR(1) - __value__(FLDNOW(1))) + UVELLOC *(__value__(FLDNOW(
     > 3)) - __value__(FLDNOW(1)))) / VOL(1))
        __value__(DFLDDT(2)) = ((EXTFORLOC(2) + VOL(2) * GAMMALOC *(
     > FLDSTAR(2) - __value__(FLDNOW(2))) + UVELLOC *(__value__(FLDNOW(
     > 1)) - __value__(FLDNOW(2)))) / VOL(2))
        __value__(DFLDDT(3)) = ((UVELLOC *(__value__(FLDNOW(2)) -
     >  __value__(FLDNOW(3)))) / VOL(3))
      ELSE
        __value__(DFLDDT(1)) = ((EXTFORLOC(1) + VOL(1) * GAMMALOC *(
     > FLDSTAR(1) - __value__(FLDNOW(1))) - UVELLOC *(__value__(FLDNOW(
     > 2)) - __value__(FLDNOW(1)))) / VOL(1))
        __value__(DFLDDT(2)) = ((EXTFORLOC(2) + VOL(2) * GAMMALOC *(
     > FLDSTAR(2) - __value__(FLDNOW(2))) - UVELLOC *(__value__(FLDNOW(
     > 3)) - __value__(FLDNOW(2)))) / VOL(2))
        __value__(DFLDDT(3)) = (-((UVELLOC *(__value__(FLDNOW(1)) -
     >  __value__(FLDNOW(3)))) / VOL(3)))
      ENDIF
      DO L = 1, 3, 1
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  DELTA_T * 2.0D00)
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF(UVELLOC .GE. 0.0D00) THEN
        OpenAD_Symbol_7 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_Symbol_4 = (GAMMALOC * OpenAD_Symbol_7)
        OpenAD_Symbol_11 = (__value__(FLDNOW(3)) - __value__(FLDNOW(1))
     > )
        OpenAD_Symbol_0 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_4 +
     >  UVELLOC * OpenAD_Symbol_11)
        __value__(DFLDDT(1)) = (OpenAD_Symbol_0 / VOL(1))
        OpenAD_Symbol_9 = GAMMALOC
        OpenAD_Symbol_6 = VOL(1)
        OpenAD_Symbol_13 = UVELLOC
        OpenAD_Symbol_1 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_72 = (OpenAD_Symbol_13 * OpenAD_Symbol_1)
        OpenAD_Symbol_73 = (INT((-1_w2f__i8)) * OpenAD_Symbol_72)
        OpenAD_Symbol_74 = (INT((-1_w2f__i8)) * OpenAD_Symbol_9 *
     >  OpenAD_Symbol_6 * OpenAD_Symbol_1)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_72)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_73)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_74)
        OpenAD_Symbol_21 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_Symbol_18 = (GAMMALOC * OpenAD_Symbol_21)
        OpenAD_Symbol_25 = (__value__(FLDNOW(1)) - __value__(FLDNOW(2))
     > )
        OpenAD_Symbol_14 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_18 +
     >  UVELLOC * OpenAD_Symbol_25)
        __value__(DFLDDT(2)) = (OpenAD_Symbol_14 / VOL(2))
        OpenAD_Symbol_23 = GAMMALOC
        OpenAD_Symbol_20 = VOL(2)
        OpenAD_Symbol_27 = UVELLOC
        OpenAD_Symbol_15 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_75 = (OpenAD_Symbol_27 * OpenAD_Symbol_15)
        OpenAD_Symbol_76 = (INT((-1_w2f__i8)) * OpenAD_Symbol_75)
        OpenAD_Symbol_77 = (INT((-1_w2f__i8)) * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_20 * OpenAD_Symbol_15)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_75)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_76)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_77)
        OpenAD_Symbol_31 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_28 = (UVELLOC * OpenAD_Symbol_31)
        __value__(DFLDDT(3)) = (OpenAD_Symbol_28 / VOL(3))
        OpenAD_Symbol_33 = UVELLOC
        OpenAD_Symbol_29 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_78 = (OpenAD_Symbol_33 * OpenAD_Symbol_29)
        OpenAD_Symbol_79 = (INT((-1_w2f__i8)) * OpenAD_Symbol_78)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_78)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_79)
        OpenAD_Symbol_91 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_91)
      ELSE
        OpenAD_Symbol_45 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_Symbol_42 = (GAMMALOC * OpenAD_Symbol_45)
        OpenAD_Symbol_49 = (__value__(FLDNOW(2)) - __value__(FLDNOW(1))
     > )
        OpenAD_Symbol_38 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_42 -
     >  UVELLOC * OpenAD_Symbol_49)
        __value__(DFLDDT(1)) = (OpenAD_Symbol_38 / VOL(1))
        OpenAD_Symbol_47 = GAMMALOC
        OpenAD_Symbol_44 = VOL(1)
        OpenAD_Symbol_51 = UVELLOC
        OpenAD_Symbol_39 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_80 = (OpenAD_Symbol_51 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_39)
        OpenAD_Symbol_81 = (INT((-1_w2f__i8)) * OpenAD_Symbol_80)
        OpenAD_Symbol_82 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47 *
     >  OpenAD_Symbol_44 * OpenAD_Symbol_39)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_80)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_81)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_82)
        OpenAD_Symbol_59 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_Symbol_56 = (GAMMALOC * OpenAD_Symbol_59)
        OpenAD_Symbol_63 = (__value__(FLDNOW(3)) - __value__(FLDNOW(2))
     > )
        OpenAD_Symbol_52 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_56 -
     >  UVELLOC * OpenAD_Symbol_63)
        __value__(DFLDDT(2)) = (OpenAD_Symbol_52 / VOL(2))
        OpenAD_Symbol_61 = GAMMALOC
        OpenAD_Symbol_58 = VOL(2)
        OpenAD_Symbol_65 = UVELLOC
        OpenAD_Symbol_53 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_83 = (OpenAD_Symbol_65 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_53)
        OpenAD_Symbol_84 = (INT((-1_w2f__i8)) * OpenAD_Symbol_83)
        OpenAD_Symbol_85 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61 *
     >  OpenAD_Symbol_58 * OpenAD_Symbol_53)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_83)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_84)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_85)
        OpenAD_Symbol_69 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_66 = (UVELLOC * OpenAD_Symbol_69)
        __value__(DFLDDT(3)) = (-(OpenAD_Symbol_66 / VOL(3)))
        OpenAD_Symbol_71 = UVELLOC
        OpenAD_Symbol_67 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_86 = (OpenAD_Symbol_71 * OpenAD_Symbol_67 * INT((
     > -1_w2f__i8)))
        OpenAD_Symbol_87 = (INT((-1_w2f__i8)) * OpenAD_Symbol_86)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_86)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_87)
        OpenAD_Symbol_92 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_92)
      ENDIF
      OpenAD_Symbol_93 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_Symbol_35 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  OpenAD_Symbol_35)
        OpenAD_Symbol_36 = OpenAD_Symbol_35
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_36)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_93 = (INT(OpenAD_Symbol_93) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_93)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_88)
      OpenAD_Symbol_89 = 1
      DO WHILE(INT(OpenAD_Symbol_89) .LE. INT(OpenAD_Symbol_88))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_108)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_109)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_110)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_110, __deriv__(FLDNEW(INT(
     > OpenAD_Symbol_108))), __deriv__(DFLDDT(INT(OpenAD_Symbol_109))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FLDNEW(INT(OpenAD_Symbol_108))))
        OpenAD_Symbol_89 = INT(OpenAD_Symbol_89) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_90)
      IF(OpenAD_Symbol_90 .ne. 0) THEN
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_100)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_100, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_101)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_101, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_102)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_102, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_103)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_103, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_104)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_104, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_105)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_105, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_106)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_106, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_107)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_107, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_111)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_111, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_112)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_112, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_113)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_113, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_114)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_114, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_115)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_115, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_116)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_116, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_117)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_117, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_118)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_118, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
      ENDIF
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
      VOL(1) = 1.0D+01
      VOL(2) = 1.2D+01
      VOL(3) = 1.4D+01
      DELTA_T = 2.0D+01
      IF(UVELLOC .GE. 0.0D00) THEN
        OpenAD_Symbol_7 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_Symbol_4 = (GAMMALOC * OpenAD_Symbol_7)
        OpenAD_Symbol_11 = (__value__(FLDNOW(3)) - __value__(FLDNOW(1))
     > )
        OpenAD_Symbol_0 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_4 +
     >  UVELLOC * OpenAD_Symbol_11)
        __value__(DFLDDT(1)) = (OpenAD_Symbol_0 / VOL(1))
        OpenAD_Symbol_9 = GAMMALOC
        OpenAD_Symbol_6 = VOL(1)
        OpenAD_Symbol_13 = UVELLOC
        OpenAD_Symbol_1 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_72 = (OpenAD_Symbol_13 * OpenAD_Symbol_1)
        OpenAD_Symbol_73 = (INT((-1_w2f__i8)) * OpenAD_Symbol_72)
        OpenAD_Symbol_74 = (INT((-1_w2f__i8)) * OpenAD_Symbol_9 *
     >  OpenAD_Symbol_6 * OpenAD_Symbol_1)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_72)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_73)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_74)
        OpenAD_Symbol_21 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_Symbol_18 = (GAMMALOC * OpenAD_Symbol_21)
        OpenAD_Symbol_25 = (__value__(FLDNOW(1)) - __value__(FLDNOW(2))
     > )
        OpenAD_Symbol_14 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_18 +
     >  UVELLOC * OpenAD_Symbol_25)
        __value__(DFLDDT(2)) = (OpenAD_Symbol_14 / VOL(2))
        OpenAD_Symbol_23 = GAMMALOC
        OpenAD_Symbol_20 = VOL(2)
        OpenAD_Symbol_27 = UVELLOC
        OpenAD_Symbol_15 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_75 = (OpenAD_Symbol_27 * OpenAD_Symbol_15)
        OpenAD_Symbol_76 = (INT((-1_w2f__i8)) * OpenAD_Symbol_75)
        OpenAD_Symbol_77 = (INT((-1_w2f__i8)) * OpenAD_Symbol_23 *
     >  OpenAD_Symbol_20 * OpenAD_Symbol_15)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_75)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_76)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_77)
        OpenAD_Symbol_31 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_28 = (UVELLOC * OpenAD_Symbol_31)
        __value__(DFLDDT(3)) = (OpenAD_Symbol_28 / VOL(3))
        OpenAD_Symbol_33 = UVELLOC
        OpenAD_Symbol_29 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_78 = (OpenAD_Symbol_33 * OpenAD_Symbol_29)
        OpenAD_Symbol_79 = (INT((-1_w2f__i8)) * OpenAD_Symbol_78)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_78)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_79)
        OpenAD_Symbol_97 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_97)
      ELSE
        OpenAD_Symbol_45 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_Symbol_42 = (GAMMALOC * OpenAD_Symbol_45)
        OpenAD_Symbol_49 = (__value__(FLDNOW(2)) - __value__(FLDNOW(1))
     > )
        OpenAD_Symbol_38 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_42 -
     >  UVELLOC * OpenAD_Symbol_49)
        __value__(DFLDDT(1)) = (OpenAD_Symbol_38 / VOL(1))
        OpenAD_Symbol_47 = GAMMALOC
        OpenAD_Symbol_44 = VOL(1)
        OpenAD_Symbol_51 = UVELLOC
        OpenAD_Symbol_39 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_80 = (OpenAD_Symbol_51 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_39)
        OpenAD_Symbol_81 = (INT((-1_w2f__i8)) * OpenAD_Symbol_80)
        OpenAD_Symbol_82 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47 *
     >  OpenAD_Symbol_44 * OpenAD_Symbol_39)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_80)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_81)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_82)
        OpenAD_Symbol_59 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_Symbol_56 = (GAMMALOC * OpenAD_Symbol_59)
        OpenAD_Symbol_63 = (__value__(FLDNOW(3)) - __value__(FLDNOW(2))
     > )
        OpenAD_Symbol_52 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_56 -
     >  UVELLOC * OpenAD_Symbol_63)
        __value__(DFLDDT(2)) = (OpenAD_Symbol_52 / VOL(2))
        OpenAD_Symbol_61 = GAMMALOC
        OpenAD_Symbol_58 = VOL(2)
        OpenAD_Symbol_65 = UVELLOC
        OpenAD_Symbol_53 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_83 = (OpenAD_Symbol_65 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_53)
        OpenAD_Symbol_84 = (INT((-1_w2f__i8)) * OpenAD_Symbol_83)
        OpenAD_Symbol_85 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61 *
     >  OpenAD_Symbol_58 * OpenAD_Symbol_53)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_83)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_84)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_85)
        OpenAD_Symbol_69 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_66 = (UVELLOC * OpenAD_Symbol_69)
        __value__(DFLDDT(3)) = (-(OpenAD_Symbol_66 / VOL(3)))
        OpenAD_Symbol_71 = UVELLOC
        OpenAD_Symbol_67 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_86 = (OpenAD_Symbol_71 * OpenAD_Symbol_67 * INT((
     > -1_w2f__i8)))
        OpenAD_Symbol_87 = (INT((-1_w2f__i8)) * OpenAD_Symbol_86)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_86)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_87)
        OpenAD_Symbol_98 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_98)
      ENDIF
      OpenAD_Symbol_99 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_Symbol_35 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (FLDOLD(L) + __value__(DFLDDT(L)) *
     >  OpenAD_Symbol_35)
        OpenAD_Symbol_36 = OpenAD_Symbol_35
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_36)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_99 = (INT(OpenAD_Symbol_99) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_99)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_94)
      OpenAD_Symbol_95 = 1
      DO WHILE(INT(OpenAD_Symbol_95) .LE. INT(OpenAD_Symbol_94))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_108)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_109)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_110)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_110, __deriv__(FLDNEW(INT(
     > OpenAD_Symbol_108))), __deriv__(DFLDDT(INT(OpenAD_Symbol_109))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FLDNEW(INT(OpenAD_Symbol_108))))
        OpenAD_Symbol_95 = INT(OpenAD_Symbol_95) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_96)
      IF(OpenAD_Symbol_96 .ne. 0) THEN
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_100)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_100, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_101)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_101, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_102)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_102, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_103)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_103, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_104)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_104, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_105)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_105, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_106)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_106, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_107)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_107, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_111)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_111, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_112)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_112, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_113)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_113, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_114)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_114, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_115)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_115, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_116)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_116, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_117)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_117, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_118)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_118, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
      ENDIF
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
