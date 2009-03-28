
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) ALPHA
      REAL(w2f__8) AREA(1 : 3)
      REAL(w2f__8) BETA
      REAL(w2f__8) BHEIGHT(1 : 3)
      REAL(w2f__8) BLENGTH(1 : 3)
      REAL(w2f__8) BWIDTH
      REAL(w2f__8) DAY
      REAL(w2f__8) DAYS_PER_50M_MIXED_LAYER
      REAL(w2f__8) DELTA
      REAL(w2f__8) DELTA_T
      REAL(w2f__8) EPSILON_IC
      REAL(w2f__8) EPSILON_REGULARIZE
      REAL(w2f__8) FDEPS
      REAL(w2f__8) FW(1 : 2)
      REAL(w2f__8) GAMMA_S
      REAL(w2f__8) GAMMA_T
      REAL(w2f__8) HUNDRED
      REAL(w2f__8) INTEGRATION_TIME
      REAL(w2f__8) METRIC
      REAL(w2f__8) METRIC1
      REAL(w2f__8) METRIC2
      REAL(w2f__8) NOISE_CORRELATION_TIME
      REAL(w2f__8) NULLFORCE(1 : 2)
      INTEGER(w2f__i4) N_MAX
      REAL(w2f__8) PROJ_S(1 : 6)
      REAL(w2f__8) PROJ_T(1 : 6)
      REAL(w2f__8) R(1 : 6)
      REAL(w2f__8) R1(1 : 6)
      TYPE (OpenADTy_active) RHO(1 : 3)
      REAL(w2f__8) ROBERT_FILTER_COEFF
      REAL(w2f__8) R_S(1 : 6)
      REAL(w2f__8) R_T(1 : 6)
      TYPE (OpenADTy_active) S(1 : 3)
      TYPE (OpenADTy_active) SNEW(1 : 3)
      TYPE (OpenADTy_active) SNOW(1 : 3)
      TYPE (OpenADTy_active) SOLD(1 : 3)
      REAL(w2f__8) SSTAR(1 : 2)
      REAL(w2f__8) SV
      TYPE (OpenADTy_active) T(1 : 3)
      REAL(w2f__8) THC_S
      REAL(w2f__8) THC_T
      REAL(w2f__8) THC_TOT
      REAL(w2f__8) THOUSAND
      TYPE (OpenADTy_active) TNEW(1 : 3)
      TYPE (OpenADTy_active) TNOW(1 : 3)
      TYPE (OpenADTy_active) TOLD(1 : 3)
      REAL(w2f__8) TSTAR(1 : 2)
      REAL(w2f__8) TSVEC(1 : 6)
      REAL(w2f__8) U0
      REAL(w2f__8) UBAR
      TYPE (OpenADTy_active) UVEL
      LOGICAL(w2f__i4) VERBMODE
      REAL(w2f__8) VOL(1 : 3)
      REAL(w2f__8) X(1 : 6, 1 : 6)
      TYPE (OpenADTy_active) XX(1 : 6)
      REAL(w2f__8) Y(1 : 6)
      REAL(w2f__8) YEAR
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) NDIM
      PARAMETER ( NDIM = 3)
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE box_forward(ILEV1)
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      INTEGER(w2f__i4) ILEV1
C
C     **** Local Variables and Functions ****
C
      EXTERNAL box_cycle_fields
      EXTERNAL box_density
      EXTERNAL box_robert_filter
      EXTERNAL box_timestep
      EXTERNAL box_transport
      INTEGER(w2f__i4) IKEY
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      IKEY = ILEV1
      CALL box_density(__deriv__(TNOW), __deriv__(SNOW), __deriv__(RHO)
     > )
      CALL box_transport(__deriv__(RHO), __deriv__(UVEL))
      CALL box_timestep(GAMMA_T, TSTAR, NULLFORCE, __deriv__(UVEL),
     >  __deriv__(TNOW), __deriv__(TOLD), __deriv__(TNEW))
      CALL box_timestep(GAMMA_S, SSTAR, FW, __deriv__(UVEL), __deriv__(
     > SNOW), __deriv__(SOLD), __deriv__(SNEW))
      CALL box_robert_filter(__deriv__(TNOW), __deriv__(TOLD),
     >  __deriv__(TNEW))
      CALL box_robert_filter(__deriv__(SNOW), __deriv__(SOLD),
     >  __deriv__(SNEW))
      CALL box_cycle_fields()
      DO L = 1, 3, 1
        IF(__value__(TNOW(L)) .LT.(-2.0D00)) THEN
          __value__(TNOW(INT(L))) = 2.0D00
          CALL zero_deriv(__deriv__(TNOW(INT(L))))
        ENDIF
      END DO
      END SUBROUTINE

      SUBROUTINE box_final_state()
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
      END DO
      DO L = 1, 3, 1
        TSVEC(INT(L)) = __value__(TNOW(L))
        TSVEC(INT(L + 3)) = __value__(SNOW(L))
      END DO
      END SUBROUTINE

      SUBROUTINE box_ini_fields()
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_120
      TYPE (OpenADTy_active) OpenAD_Symbol_121
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      THC_TOT = 0.0D00
      THC_T = 0.0D00
      THC_S = 0.0D00
      METRIC1 = 0.0D00
      METRIC2 = 0.0D00
      METRIC = 0.0D00
      NULLFORCE(1) = 0.0D00
      NULLFORCE(2) = 0.0D00
      FW(1) = (AREA(1) *(HUNDRED / YEAR) * 3.5D+01)
      FW(2) = (- FW(1))
      TSTAR(1) = 2.2D+01
      TSTAR(2) = 0.0D00
      SSTAR(1) = 3.6D+01
      SSTAR(2) = 3.4D+01
      UBAR = (SV * 2.0D+01)
      __value__(T(1)) = 2.0D+01
      __value__(T(2)) = 1.0D00
      __value__(T(3)) = 1.0D00
      __value__(S(1)) = 3.55D+01
      __value__(S(2)) = 3.45D+01
      __value__(S(3)) = 3.45D+01
      CALL zero_deriv(__deriv__(T(1)))
      CALL zero_deriv(__deriv__(T(2)))
      CALL zero_deriv(__deriv__(T(3)))
      CALL zero_deriv(__deriv__(S(1)))
      CALL zero_deriv(__deriv__(S(2)))
      CALL zero_deriv(__deriv__(S(3)))
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
      END DO
      DO L = 1, 3, 1
        __value__(T(INT(L))) = (__value__(T(L)) + __value__(XX(L)))
        __value__(S(INT(L))) = (__value__(S(L)) + __value__(XX(L + 3)))
        CALL setderiv(__deriv__(OpenAD_Symbol_120), __deriv__(T(L)))
        CALL setderiv(__deriv__(OpenAD_Symbol_121), __deriv__(S(L)))
        CALL sax(1_w2f__i8, __deriv__(OpenAD_Symbol_120), __deriv__(T(L
     > )))
        CALL saxpy(1_w2f__i8, __deriv__(XX(L)), __deriv__(T(L)))
        CALL sax(1_w2f__i8, __deriv__(OpenAD_Symbol_121), __deriv__(S(L
     > )))
        CALL saxpy(1_w2f__i8, __deriv__(XX(L + 3)), __deriv__(S(L)))
      END DO
      DO L = 1, 3, 1
        __value__(TNEW(INT(L))) = __value__(T(L))
        CALL setderiv(__deriv__(TNEW(L)), __deriv__(T(L)))
        __value__(SNEW(INT(L))) = __value__(S(L))
        __value__(TOLD(INT(L))) = __value__(T(L))
        CALL setderiv(__deriv__(SNEW(L)), __deriv__(S(L)))
        CALL setderiv(__deriv__(TOLD(L)), __deriv__(T(L)))
        __value__(SOLD(INT(L))) = __value__(S(L))
        __value__(TNOW(INT(L))) = __value__(T(L))
        CALL setderiv(__deriv__(SOLD(L)), __deriv__(S(L)))
        CALL setderiv(__deriv__(TNOW(L)), __deriv__(T(L)))
        __value__(SNOW(INT(L))) = __value__(S(L))
        CALL setderiv(__deriv__(SNOW(L)), __deriv__(S(L)))
      END DO
      __value__(UVEL) = UBAR
      CALL zero_deriv(__deriv__(UVEL))
      END SUBROUTINE

      SUBROUTINE box_ini_params()
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) J
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      VERBMODE = .FALSE.
      BLENGTH(1) = 5.0D+08
      BLENGTH(2) = 1.0D+08
      BLENGTH(3) = BLENGTH(1)
      BHEIGHT(1) = 1.0D+05
      BHEIGHT(3) = 4.0D+05
      BHEIGHT(2) = (BHEIGHT(1) + BHEIGHT(3))
      DELTA = (BHEIGHT(1) /(BHEIGHT(1) + BHEIGHT(3)))
      BWIDTH = 4.0D+08
      AREA(1) = (BLENGTH(1) * BWIDTH)
      AREA(2) = (BLENGTH(2) * BWIDTH)
      AREA(3) = (BLENGTH(3) * BWIDTH)
      VOL(1) = (AREA(1) * BHEIGHT(1))
      VOL(2) = (AREA(2) *(BHEIGHT(1) + BHEIGHT(3)))
      VOL(3) = (AREA(3) * BHEIGHT(3))
      ROBERT_FILTER_COEFF = 2.5D-01
      HUNDRED = 1.0D+02
      THOUSAND = 1.0D+03
      DAY = 8.64D+04
      YEAR = (DAY * 3.65D+02)
      SV = 1.0D+12
      U0 = ((SV * 1.6D+01) / 4.00000000000000019169D-04)
      ALPHA = 1.6679999999999998864D-04
      BETA = 7.81000000000000010186D-04
      DAYS_PER_50M_MIXED_LAYER = 5.0D+01
      GAMMA_T = (1.0D00 /(DAY * 3.0D+02))
      GAMMA_S = (0.0D00 /((BHEIGHT(1) / 5.0D+03) * DAY *
     >  DAYS_PER_50M_MIXED_LAYER))
      EPSILON_IC = (-1.00000000000000004792D-04)
      NOISE_CORRELATION_TIME = (DAY * 1.5D+01)
      DELTA_T = (DAY * 5.0D00)
      INTEGRATION_TIME = (YEAR * 5.0D+01)
      N_MAX = INT(INTEGRATION_TIME / DELTA_T)
      FDEPS = 9.99999999999999954748D-07
      Y(1) = (THOUSAND / 3.2680000000000000715D-02)
      Y(2) = (THOUSAND / 7.9399999999999991418D-03)
      Y(3) = (THOUSAND / 1.39999999999999998578D-03)
      Y(4) = (THOUSAND / 1.41699999999999992628D-01)
      Y(5) = (THOUSAND / 1.28599999999999992095D-01)
      Y(6) = (THOUSAND / 8.7800000000000003042D-02)
      R(1) = (ALPHA * DELTA)
      R(2) = (- ALPHA)
      R(3) = (ALPHA *(1.0D00 - DELTA))
      R(4) = (-(BETA * DELTA))
      R(5) = BETA
      R(6) = (-(BETA *(1.0D00 - DELTA)))
      DO L = 1, 6, 1
        R(INT(L)) = ((R(L) * U0) / SV)
      END DO
      DO L = 1, 6, 1
        IF(L .LE. 3) THEN
          PROJ_T(INT(L)) = 1.0D00
          PROJ_S(INT(L)) = 0.0D00
        ELSE
          PROJ_T(INT(L)) = 0.0D00
          PROJ_S(INT(L)) = 1.0D00
        ENDIF
      END DO
      DO L = 1, 6, 1
        R_T(INT(L)) = (PROJ_T(L) * R(L))
        R_S(INT(L)) = (PROJ_S(L) * R(L))
      END DO
      R1(1) = 1.0D00
      R1(2) = (-1.0D00)
      R1(3) = 0.0D00
      R1(4) = 0.0D00
      R1(5) = 0.0D00
      R1(6) = 0.0D00
      DO J = 1, 6, 1
        DO I = 1, 6, 1
          X(INT(I), INT(J)) = (R(I) * R(J))
        END DO
      END DO
      EPSILON_REGULARIZE = 1.00000000000000002092D-08
      DO J = 1, 6, 1
        DO I = 1, 6, 1
          X(INT(I), INT(J)) = (X(I, J) + EPSILON_REGULARIZE)
        END DO
      END DO
      END SUBROUTINE

      SUBROUTINE box_model_body()
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Local Variables and Functions ****
C
      EXTERNAL box_final_state
      EXTERNAL box_forward
      EXTERNAL box_ini_fields
      INTEGER(w2f__i4) ILEV1
      INTEGER(w2f__i4) ILEV2
      INTEGER(w2f__i4) ILOOP
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) MAXLEV2
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(XX)
C$OPENAD DEPENDENT(TNEW)
C$OPENAD DEPENDENT(SNEW)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      CALL box_ini_fields()
      MAXLEV2 = ((N_MAX / 73) + 1)
      IF(N_MAX .GT. 3650) THEN
        WRITE(*, *) 'NEED TO SET nlev1*nlev2 >= n_max '
      ELSE
        DO ILEV2 = 1, 50, 1
          IF(ILEV2 .LE. MAXLEV2) THEN
            DO ILEV1 = 1, 73, 1
              ILOOP = (ILEV1 + ILEV2 * 73 +(-73))
              IF(ILOOP .LE. N_MAX) THEN
                CALL box_forward(ILEV1)
              ENDIF
            END DO
          ENDIF
        END DO
        CALL box_final_state()
      ENDIF
      END SUBROUTINE

      SUBROUTINE box_density(TLOC, SLOC, RHOLOC)
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_88
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) TLOC(1 : 3)
      TYPE (OpenADTy_active) SLOC(1 : 3)
      TYPE (OpenADTy_active) RHOLOC(1 : 3)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1, 3, 1
        __value__(RHOLOC(INT(L))) = (__value__(SLOC(L)) * BETA -
     >  __value__(TLOC(L)) * ALPHA)
        OpenAD_Symbol_0 = BETA
        OpenAD_Symbol_2 = ALPHA
        OpenAD_Symbol_88 = (OpenAD_Symbol_2 * INT((-1_w2f__i8)))
        CALL sax(OpenAD_Symbol_0, __deriv__(SLOC(L)), __deriv__(RHOLOC(
     > L)))
        CALL saxpy(OpenAD_Symbol_88, __deriv__(TLOC(L)), __deriv__(
     > RHOLOC(L)))
      END DO
      END SUBROUTINE

      SUBROUTINE box_transport(RHOLOC, UVELLOC)
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_10
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_89
      REAL(w2f__8) OpenAD_Symbol_9
      TYPE (OpenADTy_active) OpenAD_Symbol_90
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) RHOLOC(1 : 3)
      TYPE (OpenADTy_active) UVELLOC
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_9 = (1.0D00 - DELTA)
      OpenAD_Symbol_4 = (__value__(RHOLOC(1)) * DELTA + __value__(
     > RHOLOC(3)) * OpenAD_Symbol_9 - __value__(RHOLOC(2)))
      __value__(UVELLOC) = (-(U0 * OpenAD_Symbol_4))
      OpenAD_Symbol_7 = DELTA
      OpenAD_Symbol_10 = OpenAD_Symbol_9
      OpenAD_Symbol_6 = U0
      OpenAD_Symbol_89 = (OpenAD_Symbol_6 * INT((-1_w2f__i8)))
      CALL sax(-1_w2f__i8, __deriv__(RHOLOC(2)), __deriv__(
     > OpenAD_Symbol_90))
      CALL saxpy(OpenAD_Symbol_7, __deriv__(RHOLOC(1)), __deriv__(
     > OpenAD_Symbol_90))
      CALL saxpy(OpenAD_Symbol_10, __deriv__(RHOLOC(3)), __deriv__(
     > OpenAD_Symbol_90))
      CALL sax(OpenAD_Symbol_89, __deriv__(OpenAD_Symbol_90), __deriv__
     > (UVELLOC))
      END SUBROUTINE

      SUBROUTINE box_robert_filter(FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_115
      TYPE (OpenADTy_active) OpenAD_Symbol_116
      TYPE (OpenADTy_active) OpenAD_Symbol_117
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_84
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) FLDNOW(1 : 3)
      TYPE (OpenADTy_active) FLDOLD(1 : 3)
      TYPE (OpenADTy_active) FLDNEW(1 : 3)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1, 3, 1
        OpenAD_Symbol_80 = (__value__(FLDOLD(L)) + __value__(FLDNEW(L))
     >  - __value__(FLDNOW(L)) * 2.0D00)
        OpenAD_Symbol_84 = (__value__(FLDNOW(L)) + ROBERT_FILTER_COEFF
     >  * OpenAD_Symbol_80)
        OpenAD_Symbol_82 = ROBERT_FILTER_COEFF
        __value__(FLDNOW(INT(L))) = OpenAD_Symbol_84
        CALL setderiv(__deriv__(OpenAD_Symbol_115), __deriv__(FLDNOW(L)
     > ))
        CALL setderiv(__deriv__(OpenAD_Symbol_116), __deriv__(FLDNOW(L)
     > ))
        CALL sax(1_w2f__i8, __deriv__(FLDOLD(L)), __deriv__(
     > OpenAD_Symbol_117))
        CALL saxpy(1_w2f__i8, __deriv__(FLDNEW(L)), __deriv__(
     > OpenAD_Symbol_117))
        CALL saxpy(-2.0D00, __deriv__(OpenAD_Symbol_116), __deriv__(
     > OpenAD_Symbol_117))
        CALL sax(1_w2f__i8, __deriv__(OpenAD_Symbol_115), __deriv__(
     > FLDNOW(L)))
        CALL saxpy(OpenAD_Symbol_82, __deriv__(OpenAD_Symbol_117),
     >  __deriv__(FLDNOW(L)))
      END DO
      END SUBROUTINE

      SUBROUTINE box_cycle_fields()
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_118
      TYPE (OpenADTy_active) OpenAD_Symbol_119
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1, 3, 1
        __value__(TOLD(INT(L))) = __value__(TNOW(L))
        __value__(TNOW(INT(L))) = __value__(TNEW(L))
        CALL setderiv(__deriv__(OpenAD_Symbol_118), __deriv__(TNOW(L)))
        CALL setderiv(__deriv__(TOLD(L)), __deriv__(OpenAD_Symbol_118))
        CALL setderiv(__deriv__(TNOW(L)), __deriv__(TNEW(L)))
        __value__(SOLD(INT(L))) = __value__(SNOW(L))
        __value__(SNOW(INT(L))) = __value__(SNEW(L))
        CALL setderiv(__deriv__(OpenAD_Symbol_119), __deriv__(SNOW(L)))
        CALL setderiv(__deriv__(SOLD(L)), __deriv__(OpenAD_Symbol_119))
        CALL setderiv(__deriv__(SNOW(L)), __deriv__(SNEW(L)))
      END DO
      END SUBROUTINE

      SUBROUTINE box_update(FLDNEW, FLDOLD, DFLDDT)
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_85
      REAL(w2f__8) OpenAD_Symbol_86
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) FLDNEW(1 : 3)
      TYPE (OpenADTy_active) FLDOLD(1 : 3)
      TYPE (OpenADTy_active) DFLDDT(1 : 3)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1, 3, 1
        OpenAD_Symbol_85 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (__value__(FLDOLD(L)) + __value__(
     > DFLDDT(L)) * OpenAD_Symbol_85)
        OpenAD_Symbol_86 = OpenAD_Symbol_85
        CALL sax(1_w2f__i8, __deriv__(FLDOLD(L)), __deriv__(FLDNEW(L)))
        CALL saxpy(OpenAD_Symbol_86, __deriv__(DFLDDT(L)), __deriv__(
     > FLDNEW(L)))
      END DO
      END SUBROUTINE

      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC,
     >  FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_100
      TYPE (OpenADTy_active) OpenAD_Symbol_101
      REAL(w2f__8) OpenAD_Symbol_102
      REAL(w2f__8) OpenAD_Symbol_103
      REAL(w2f__8) OpenAD_Symbol_104
      REAL(w2f__8) OpenAD_Symbol_105
      TYPE (OpenADTy_active) OpenAD_Symbol_106
      REAL(w2f__8) OpenAD_Symbol_107
      REAL(w2f__8) OpenAD_Symbol_108
      REAL(w2f__8) OpenAD_Symbol_109
      REAL(w2f__8) OpenAD_Symbol_110
      TYPE (OpenADTy_active) OpenAD_Symbol_111
      REAL(w2f__8) OpenAD_Symbol_112
      REAL(w2f__8) OpenAD_Symbol_113
      TYPE (OpenADTy_active) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_Symbol_16
      REAL(w2f__8) OpenAD_Symbol_18
      REAL(w2f__8) OpenAD_Symbol_19
      REAL(w2f__8) OpenAD_Symbol_21
      REAL(w2f__8) OpenAD_Symbol_23
      REAL(w2f__8) OpenAD_Symbol_24
      REAL(w2f__8) OpenAD_Symbol_25
      REAL(w2f__8) OpenAD_Symbol_26
      REAL(w2f__8) OpenAD_Symbol_27
      REAL(w2f__8) OpenAD_Symbol_30
      REAL(w2f__8) OpenAD_Symbol_32
      REAL(w2f__8) OpenAD_Symbol_33
      REAL(w2f__8) OpenAD_Symbol_35
      REAL(w2f__8) OpenAD_Symbol_37
      REAL(w2f__8) OpenAD_Symbol_38
      REAL(w2f__8) OpenAD_Symbol_39
      REAL(w2f__8) OpenAD_Symbol_40
      REAL(w2f__8) OpenAD_Symbol_41
      REAL(w2f__8) OpenAD_Symbol_43
      REAL(w2f__8) OpenAD_Symbol_44
      REAL(w2f__8) OpenAD_Symbol_45
      REAL(w2f__8) OpenAD_Symbol_46
      REAL(w2f__8) OpenAD_Symbol_47
      REAL(w2f__8) OpenAD_Symbol_50
      REAL(w2f__8) OpenAD_Symbol_52
      REAL(w2f__8) OpenAD_Symbol_53
      REAL(w2f__8) OpenAD_Symbol_55
      REAL(w2f__8) OpenAD_Symbol_57
      REAL(w2f__8) OpenAD_Symbol_58
      REAL(w2f__8) OpenAD_Symbol_59
      REAL(w2f__8) OpenAD_Symbol_60
      REAL(w2f__8) OpenAD_Symbol_61
      REAL(w2f__8) OpenAD_Symbol_64
      REAL(w2f__8) OpenAD_Symbol_66
      REAL(w2f__8) OpenAD_Symbol_67
      REAL(w2f__8) OpenAD_Symbol_69
      REAL(w2f__8) OpenAD_Symbol_71
      REAL(w2f__8) OpenAD_Symbol_72
      REAL(w2f__8) OpenAD_Symbol_73
      REAL(w2f__8) OpenAD_Symbol_74
      REAL(w2f__8) OpenAD_Symbol_75
      REAL(w2f__8) OpenAD_Symbol_77
      REAL(w2f__8) OpenAD_Symbol_78
      REAL(w2f__8) OpenAD_Symbol_79
      REAL(w2f__8) OpenAD_Symbol_91
      REAL(w2f__8) OpenAD_Symbol_92
      REAL(w2f__8) OpenAD_Symbol_93
      TYPE (OpenADTy_active) OpenAD_Symbol_94
      REAL(w2f__8) OpenAD_Symbol_95
      REAL(w2f__8) OpenAD_Symbol_96
      REAL(w2f__8) OpenAD_Symbol_97
      TYPE (OpenADTy_active) OpenAD_Symbol_98
      REAL(w2f__8) OpenAD_Symbol_99
C
C     **** Parameters and Result ****
C
      REAL(w2f__8) GAMMALOC
      REAL(w2f__8) FLDSTAR(1 : 2)
      REAL(w2f__8) EXTFORLOC(1 : 2)
      TYPE (OpenADTy_active) UVELLOC
      TYPE (OpenADTy_active) FLDNOW(1 : 3)
      TYPE (OpenADTy_active) FLDOLD(1 : 3)
      TYPE (OpenADTy_active) FLDNEW(1 : 3)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL box_update
      TYPE (OpenADTy_active) DFLDDT(1 : 3)
      INTEGER(w2f__i4) ISBYTE
      PARAMETER ( ISBYTE = 8)
      INTEGER(w2f__i4) NLEV1
      PARAMETER ( NLEV1 = 73)
      INTEGER(w2f__i4) NLEV2
      PARAMETER ( NLEV2 = 50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      IF(__value__(UVELLOC) .GE. 0.0D00) THEN
        OpenAD_Symbol_19 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_Symbol_16 = (GAMMALOC * OpenAD_Symbol_19)
        OpenAD_Symbol_23 = (__value__(FLDNOW(3)) - __value__(FLDNOW(1))
     > )
        OpenAD_Symbol_12 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_16 +
     >  __value__(UVELLOC) * OpenAD_Symbol_23)
        __value__(DFLDDT(1)) = (OpenAD_Symbol_12 / VOL(1))
        OpenAD_Symbol_21 = GAMMALOC
        OpenAD_Symbol_18 = VOL(1)
        OpenAD_Symbol_24 = OpenAD_Symbol_23
        OpenAD_Symbol_25 = __value__(UVELLOC)
        OpenAD_Symbol_13 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_91 = (OpenAD_Symbol_24 * OpenAD_Symbol_13)
        OpenAD_Symbol_92 = (OpenAD_Symbol_25 * OpenAD_Symbol_13)
        OpenAD_Symbol_93 = (INT((-1_w2f__i8)) * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_18 * OpenAD_Symbol_13)
        CALL sax(1_w2f__i8, __deriv__(FLDNOW(3)), __deriv__(
     > OpenAD_Symbol_94))
        CALL saxpy(-1_w2f__i8, __deriv__(FLDNOW(1)), __deriv__(
     > OpenAD_Symbol_94))
        CALL sax(OpenAD_Symbol_91, __deriv__(UVELLOC), __deriv__(DFLDDT
     > (1)))
        CALL saxpy(OpenAD_Symbol_92, __deriv__(OpenAD_Symbol_94),
     >  __deriv__(DFLDDT(1)))
        CALL saxpy(OpenAD_Symbol_93, __deriv__(FLDNOW(1)), __deriv__(
     > DFLDDT(1)))
        OpenAD_Symbol_33 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_Symbol_30 = (GAMMALOC * OpenAD_Symbol_33)
        OpenAD_Symbol_37 = (__value__(FLDNOW(1)) - __value__(FLDNOW(2))
     > )
        OpenAD_Symbol_26 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_30 +
     >  __value__(UVELLOC) * OpenAD_Symbol_37)
        __value__(DFLDDT(2)) = (OpenAD_Symbol_26 / VOL(2))
        OpenAD_Symbol_35 = GAMMALOC
        OpenAD_Symbol_32 = VOL(2)
        OpenAD_Symbol_38 = OpenAD_Symbol_37
        OpenAD_Symbol_39 = __value__(UVELLOC)
        OpenAD_Symbol_27 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_95 = (OpenAD_Symbol_38 * OpenAD_Symbol_27)
        OpenAD_Symbol_96 = (OpenAD_Symbol_39 * OpenAD_Symbol_27)
        OpenAD_Symbol_97 = (INT((-1_w2f__i8)) * OpenAD_Symbol_35 *
     >  OpenAD_Symbol_32 * OpenAD_Symbol_27)
        CALL sax(1_w2f__i8, __deriv__(FLDNOW(1)), __deriv__(
     > OpenAD_Symbol_98))
        CALL saxpy(-1_w2f__i8, __deriv__(FLDNOW(2)), __deriv__(
     > OpenAD_Symbol_98))
        CALL sax(OpenAD_Symbol_95, __deriv__(UVELLOC), __deriv__(DFLDDT
     > (2)))
        CALL saxpy(OpenAD_Symbol_96, __deriv__(OpenAD_Symbol_98),
     >  __deriv__(DFLDDT(2)))
        CALL saxpy(OpenAD_Symbol_97, __deriv__(FLDNOW(2)), __deriv__(
     > DFLDDT(2)))
        OpenAD_Symbol_43 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_40 = (__value__(UVELLOC) * OpenAD_Symbol_43)
        __value__(DFLDDT(3)) = (OpenAD_Symbol_40 / VOL(3))
        OpenAD_Symbol_44 = OpenAD_Symbol_43
        OpenAD_Symbol_45 = __value__(UVELLOC)
        OpenAD_Symbol_41 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_99 = (OpenAD_Symbol_44 * OpenAD_Symbol_41)
        OpenAD_Symbol_100 = (OpenAD_Symbol_45 * OpenAD_Symbol_41)
        CALL sax(1_w2f__i8, __deriv__(FLDNOW(2)), __deriv__(
     > OpenAD_Symbol_101))
        CALL saxpy(-1_w2f__i8, __deriv__(FLDNOW(3)), __deriv__(
     > OpenAD_Symbol_101))
        CALL sax(OpenAD_Symbol_99, __deriv__(UVELLOC), __deriv__(DFLDDT
     > (3)))
        CALL saxpy(OpenAD_Symbol_100, __deriv__(OpenAD_Symbol_101),
     >  __deriv__(DFLDDT(3)))
      ELSE
        OpenAD_Symbol_53 = (FLDSTAR(1) - __value__(FLDNOW(1)))
        OpenAD_Symbol_50 = (GAMMALOC * OpenAD_Symbol_53)
        OpenAD_Symbol_57 = (__value__(FLDNOW(2)) - __value__(FLDNOW(1))
     > )
        OpenAD_Symbol_46 = (EXTFORLOC(1) + VOL(1) * OpenAD_Symbol_50 -
     >  __value__(UVELLOC) * OpenAD_Symbol_57)
        __value__(DFLDDT(1)) = (OpenAD_Symbol_46 / VOL(1))
        OpenAD_Symbol_55 = GAMMALOC
        OpenAD_Symbol_52 = VOL(1)
        OpenAD_Symbol_58 = OpenAD_Symbol_57
        OpenAD_Symbol_59 = __value__(UVELLOC)
        OpenAD_Symbol_47 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_102 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47)
        OpenAD_Symbol_103 = (OpenAD_Symbol_58 * OpenAD_Symbol_102)
        OpenAD_Symbol_104 = (OpenAD_Symbol_59 * OpenAD_Symbol_102)
        OpenAD_Symbol_105 = (INT((-1_w2f__i8)) * OpenAD_Symbol_55 *
     >  OpenAD_Symbol_52 * OpenAD_Symbol_47)
        CALL sax(1_w2f__i8, __deriv__(FLDNOW(2)), __deriv__(
     > OpenAD_Symbol_106))
        CALL saxpy(-1_w2f__i8, __deriv__(FLDNOW(1)), __deriv__(
     > OpenAD_Symbol_106))
        CALL sax(OpenAD_Symbol_103, __deriv__(UVELLOC), __deriv__(
     > DFLDDT(1)))
        CALL saxpy(OpenAD_Symbol_104, __deriv__(OpenAD_Symbol_106),
     >  __deriv__(DFLDDT(1)))
        CALL saxpy(OpenAD_Symbol_105, __deriv__(FLDNOW(1)), __deriv__(
     > DFLDDT(1)))
        OpenAD_Symbol_67 = (FLDSTAR(2) - __value__(FLDNOW(2)))
        OpenAD_Symbol_64 = (GAMMALOC * OpenAD_Symbol_67)
        OpenAD_Symbol_71 = (__value__(FLDNOW(3)) - __value__(FLDNOW(2))
     > )
        OpenAD_Symbol_60 = (EXTFORLOC(2) + VOL(2) * OpenAD_Symbol_64 -
     >  __value__(UVELLOC) * OpenAD_Symbol_71)
        __value__(DFLDDT(2)) = (OpenAD_Symbol_60 / VOL(2))
        OpenAD_Symbol_69 = GAMMALOC
        OpenAD_Symbol_66 = VOL(2)
        OpenAD_Symbol_72 = OpenAD_Symbol_71
        OpenAD_Symbol_73 = __value__(UVELLOC)
        OpenAD_Symbol_61 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_107 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61)
        OpenAD_Symbol_108 = (OpenAD_Symbol_72 * OpenAD_Symbol_107)
        OpenAD_Symbol_109 = (OpenAD_Symbol_73 * OpenAD_Symbol_107)
        OpenAD_Symbol_110 = (INT((-1_w2f__i8)) * OpenAD_Symbol_69 *
     >  OpenAD_Symbol_66 * OpenAD_Symbol_61)
        CALL sax(1_w2f__i8, __deriv__(FLDNOW(3)), __deriv__(
     > OpenAD_Symbol_111))
        CALL saxpy(-1_w2f__i8, __deriv__(FLDNOW(2)), __deriv__(
     > OpenAD_Symbol_111))
        CALL sax(OpenAD_Symbol_108, __deriv__(UVELLOC), __deriv__(
     > DFLDDT(2)))
        CALL saxpy(OpenAD_Symbol_109, __deriv__(OpenAD_Symbol_111),
     >  __deriv__(DFLDDT(2)))
        CALL saxpy(OpenAD_Symbol_110, __deriv__(FLDNOW(2)), __deriv__(
     > DFLDDT(2)))
        OpenAD_Symbol_77 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_74 = (__value__(UVELLOC) * OpenAD_Symbol_77)
        __value__(DFLDDT(3)) = (-(OpenAD_Symbol_74 / VOL(3)))
        OpenAD_Symbol_78 = OpenAD_Symbol_77
        OpenAD_Symbol_79 = __value__(UVELLOC)
        OpenAD_Symbol_75 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_112 = (OpenAD_Symbol_78 * OpenAD_Symbol_75 * INT(
     > (-1_w2f__i8)))
        OpenAD_Symbol_113 = (OpenAD_Symbol_79 * OpenAD_Symbol_75 * INT(
     > (-1_w2f__i8)))
        CALL sax(1_w2f__i8, __deriv__(FLDNOW(1)), __deriv__(
     > OpenAD_Symbol_114))
        CALL saxpy(-1_w2f__i8, __deriv__(FLDNOW(3)), __deriv__(
     > OpenAD_Symbol_114))
        CALL sax(OpenAD_Symbol_112, __deriv__(UVELLOC), __deriv__(
     > DFLDDT(3)))
        CALL saxpy(OpenAD_Symbol_113, __deriv__(OpenAD_Symbol_114),
     >  __deriv__(DFLDDT(3)))
      ENDIF
      CALL box_update(__deriv__(FLDNEW), __deriv__(FLDOLD), __deriv__(
     > DFLDDT))
      END SUBROUTINE
