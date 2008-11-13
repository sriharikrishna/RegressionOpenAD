
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0(1 : 2, 1 : 3)
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL barext
      INTEGER(w2f__i4) I
      TYPE (OpenADTy_active) T(1 : 2, 1 : 3)
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
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
      DO I = 1, 2, 1
        __value__(T(INT(I), 2)) = __value__(X(I))
      END DO
C     $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
      CALL convert_a2p_matrix(OpenAD_Symbol_0, __deriv__(T))
      CALL barext(OpenAD_Symbol_0(1, 2))
C     $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
      CALL convert_p2a_matrix(__deriv__(T), OpenAD_Symbol_0)
      __value__(Y(1)) = __value__(T(1, 2))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_3 = 0_w2f__i8
      DO I = 1, 2, 1
        __value__(T(INT(I), 2)) = __value__(X(I))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(I)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(I)
        OpenAD_Symbol_3 = (INT(OpenAD_Symbol_3) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_3)
C     $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
      CALL convert_a2p_matrix(OpenAD_Symbol_0, __deriv__(T))
      CALL barext(OpenAD_Symbol_0(1, 2))
C     $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
      CALL convert_p2a_matrix(__deriv__(T), OpenAD_Symbol_0)
      __value__(Y(1)) = __value__(T(1, 2))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(T(1, 2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_1)
      OpenAD_Symbol_2 = 1
      DO WHILE(INT(OpenAD_Symbol_2) .LE. INT(OpenAD_Symbol_1))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_7)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_8)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(T(INT(OpenAD_Symbol_7), 2)), __deriv__(
     > X(INT(OpenAD_Symbol_8))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(T(INT(OpenAD_Symbol_7), 2)))
        OpenAD_Symbol_2 = INT(OpenAD_Symbol_2) + 1
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
      OpenAD_Symbol_6 = 0_w2f__i8
      DO I = 1, 2, 1
        __value__(T(INT(I), 2)) = __value__(X(I))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(I)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(I)
        OpenAD_Symbol_6 = (INT(OpenAD_Symbol_6) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_6)
C     $OpenAD$ INLINE convert_a2p_matrix(subst,subst)
      CALL convert_a2p_matrix(OpenAD_Symbol_0, __deriv__(T))
      CALL barext(OpenAD_Symbol_0(1, 2))
C     $OpenAD$ INLINE convert_p2a_matrix(subst,subst)
      CALL convert_p2a_matrix(__deriv__(T), OpenAD_Symbol_0)
      __value__(Y(1)) = __value__(T(1, 2))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE IncDeriv(subst,subst)
      CALL IncDeriv(__deriv__(Y(1)), __deriv__(T(1, 2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(Y(1)))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_4)
      OpenAD_Symbol_5 = 1
      DO WHILE(INT(OpenAD_Symbol_5) .LE. INT(OpenAD_Symbol_4))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_7)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_8)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(T(INT(OpenAD_Symbol_7), 2)), __deriv__(
     > X(INT(OpenAD_Symbol_8))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(T(INT(OpenAD_Symbol_7), 2)))
        OpenAD_Symbol_5 = INT(OpenAD_Symbol_5) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
