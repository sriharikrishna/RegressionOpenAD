
      MODULE all_globals_mod
      use w2f__types
      use OAD_active
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
      type(active) :: RHO(1 : 3)
      REAL(w2f__8) ROBERT_FILTER_COEFF
      REAL(w2f__8) R_S(1 : 6)
      REAL(w2f__8) R_T(1 : 6)
      type(active) :: S(1 : 3)
      type(active) :: SNEW(1 : 3)
      type(active) :: SNOW(1 : 3)
      type(active) :: SOLD(1 : 3)
      REAL(w2f__8) SSTAR(1 : 2)
      REAL(w2f__8) SV
      type(active) :: T(1 : 3)
      REAL(w2f__8) THC_S
      REAL(w2f__8) THC_T
      REAL(w2f__8) THC_TOT
      REAL(w2f__8) THOUSAND
      type(active) :: TNEW(1 : 3)
      type(active) :: TNOW(1 : 3)
      type(active) :: TOLD(1 : 3)
      REAL(w2f__8) TSTAR(1 : 2)
      REAL(w2f__8) TSVEC(1 : 6)
      REAL(w2f__8) U0
      REAL(w2f__8) UBAR
      type(active) :: UVEL
      LOGICAL(w2f__i4) VERBMODE
      REAL(w2f__8) VOL(1 : 3)
      REAL(w2f__8) X(1 : 6, 1 : 6)
      type(active) :: XX(1 : 6)
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
      use OAD_active
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
      CALL box_density(TNOW,SNOW,RHO)
      CALL box_transport(RHO,UVEL)
      CALL box_timestep(GAMMA_T,TSTAR,NULLFORCE,UVEL,TNOW,TOLD,TNEW)
      CALL box_timestep(GAMMA_S,SSTAR,FW,UVEL,SNOW,SOLD,SNEW)
      CALL box_robert_filter(TNOW,TOLD,TNEW)
      CALL box_robert_filter(SNOW,SOLD,SNEW)
      CALL box_cycle_fields()
      DO L = 1, 3, 1
        IF (TNOW(L)%v .LT. (-2.0D00)) THEN
          TNOW(INT(L))%v = 2.0D00
          CALL zero_deriv(TNOW(INT(L)))
        ENDIF
      END DO
      END SUBROUTINE

      SUBROUTINE box_final_state()
      use w2f__types
      use OAD_active
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
        TSVEC(INT(L)) = TNOW(L)%v
        TSVEC(INT(L+3)) = SNOW(L)%v
      END DO
      END SUBROUTINE

      SUBROUTINE box_ini_fields()
      use w2f__types
      use OAD_active
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_123
      type(active) :: OpenAD_Symbol_124
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
      T(1)%v = 2.0D+01
      T(2)%v = 1.0D00
      T(3)%v = 1.0D00
      S(1)%v = 3.55D+01
      S(2)%v = 3.45D+01
      S(3)%v = 3.45D+01
      CALL zero_deriv(T(1))
      CALL zero_deriv(T(2))
      CALL zero_deriv(T(3))
      CALL zero_deriv(S(1))
      CALL zero_deriv(S(2))
      CALL zero_deriv(S(3))
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
      END DO
      DO L = 1, 3, 1
        T(INT(L))%v = (T(L)%v+XX(L)%v)
        S(INT(L))%v = (S(L)%v+XX(L+3)%v)
        CALL setderiv(OpenAD_Symbol_123,T(L))
        CALL setderiv(OpenAD_Symbol_124,S(L))
        CALL sax(1 _w2f__i8,OpenAD_Symbol_123,T(L))
        CALL saxpy(1 _w2f__i8,XX(L),T(L))
        CALL sax(1 _w2f__i8,OpenAD_Symbol_124,S(L))
        CALL saxpy(1 _w2f__i8,XX(L+3),S(L))
      END DO
      DO L = 1, 3, 1
        TNEW(INT(L))%v = T(L)%v
        CALL setderiv(TNEW(L),T(L))
        SNEW(INT(L))%v = S(L)%v
        TOLD(INT(L))%v = T(L)%v
        CALL setderiv(SNEW(L),S(L))
        CALL setderiv(TOLD(L),T(L))
        SOLD(INT(L))%v = S(L)%v
        TNOW(INT(L))%v = T(L)%v
        CALL setderiv(SOLD(L),S(L))
        CALL setderiv(TNOW(L),T(L))
        SNOW(INT(L))%v = S(L)%v
        CALL setderiv(SNOW(L),S(L))
      END DO
      UVEL%v = UBAR
      CALL zero_deriv(UVEL)
      END SUBROUTINE

      SUBROUTINE box_ini_params()
      use w2f__types
      use OAD_active
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
      use OAD_active
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
      use OAD_active
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
      type(active) :: TLOC(1 : 3)
      type(active) :: SLOC(1 : 3)
      type(active) :: RHOLOC(1 : 3)
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
        RHOLOC(INT(L))%v = (SLOC(L)%v*BETA-TLOC(L)%v*ALPHA)
        OpenAD_Symbol_0 = BETA
        OpenAD_Symbol_2 = ALPHA
        OpenAD_Symbol_88 = (OpenAD_Symbol_2 * INT((-1_w2f__i8)))
        CALL sax(OpenAD_Symbol_0,SLOC(L),RHOLOC(L))
        CALL saxpy(OpenAD_Symbol_88,TLOC(L),RHOLOC(L))
      END DO
      END SUBROUTINE

      SUBROUTINE box_transport(RHOLOC, UVELLOC)
      use w2f__types
      use OAD_active
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
      REAL(w2f__8) OpenAD_Symbol_90
      REAL(w2f__8) OpenAD_Symbol_91
      REAL(w2f__8) OpenAD_Symbol_92
C
C     **** Parameters and Result ****
C
      type(active) :: RHOLOC(1 : 3)
      type(active) :: UVELLOC
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
      OpenAD_Symbol_4 = (RHOLOC(1)%v*DELTA+RHOLOC(3)%v*OpenAD_Symbol_9-R
     +HOLOC(2)%v)
      UVELLOC%v = (-(U0*OpenAD_Symbol_4))
      OpenAD_Symbol_7 = DELTA
      OpenAD_Symbol_10 = OpenAD_Symbol_9
      OpenAD_Symbol_6 = U0
      OpenAD_Symbol_89 = (OpenAD_Symbol_6 * INT((-1_w2f__i8)))
      OpenAD_Symbol_90 = (INT((-1_w2f__i8)) * OpenAD_Symbol_89)
      OpenAD_Symbol_91 = (OpenAD_Symbol_10 * OpenAD_Symbol_89)
      OpenAD_Symbol_92 = (OpenAD_Symbol_7 * OpenAD_Symbol_89)
      CALL sax(OpenAD_Symbol_90,RHOLOC(2),UVELLOC)
      CALL saxpy(OpenAD_Symbol_91,RHOLOC(3),UVELLOC)
      CALL saxpy(OpenAD_Symbol_92,RHOLOC(1),UVELLOC)
      END SUBROUTINE

      SUBROUTINE box_robert_filter(FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
      use OAD_active
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_118
      type(active) :: OpenAD_Symbol_119
      type(active) :: OpenAD_Symbol_120
      REAL(w2f__8) OpenAD_Symbol_80
      REAL(w2f__8) OpenAD_Symbol_82
      REAL(w2f__8) OpenAD_Symbol_84
C
C     **** Parameters and Result ****
C
      type(active) :: FLDNOW(1 : 3)
      type(active) :: FLDOLD(1 : 3)
      type(active) :: FLDNEW(1 : 3)
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
        OpenAD_Symbol_80 = (FLDOLD(L)%v+FLDNEW(L)%v-FLDNOW(L)%v*2.0D00)
        OpenAD_Symbol_84 = (FLDNOW(L)%v+ROBERT_FILTER_COEFF*OpenAD_Symbo
     +l_80)
        OpenAD_Symbol_82 = ROBERT_FILTER_COEFF
        FLDNOW(INT(L))%v = OpenAD_Symbol_84
        OpenAD_Symbol_118 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_82)
        CALL setderiv(OpenAD_Symbol_119,FLDNOW(L))
        CALL setderiv(OpenAD_Symbol_120,FLDNOW(L))
        CALL sax(OpenAD_Symbol_82,FLDOLD(L),FLDNOW(L))
        CALL saxpy(OpenAD_Symbol_82,FLDNEW(L),FLDNOW(L))
        CALL saxpy(OpenAD_Symbol_118,OpenAD_Symbol_120,FLDNOW(L))
        CALL saxpy(1 _w2f__i8,OpenAD_Symbol_119,FLDNOW(L))
      END DO
      END SUBROUTINE

      SUBROUTINE box_cycle_fields()
      use w2f__types
      use OAD_active
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_Symbol_121
      type(active) :: OpenAD_Symbol_122
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
        TOLD(INT(L))%v = TNOW(L)%v
        TNOW(INT(L))%v = TNEW(L)%v
        CALL setderiv(OpenAD_Symbol_121,TNOW(L))
        CALL setderiv(TOLD(L),OpenAD_Symbol_121)
        CALL setderiv(TNOW(L),TNEW(L))
        SOLD(INT(L))%v = SNOW(L)%v
        SNOW(INT(L))%v = SNEW(L)%v
        CALL setderiv(OpenAD_Symbol_122,SNOW(L))
        CALL setderiv(SOLD(L),OpenAD_Symbol_122)
        CALL setderiv(SNOW(L),SNEW(L))
      END DO
      END SUBROUTINE

      SUBROUTINE box_update(FLDNEW, FLDOLD, DFLDDT)
      use w2f__types
      use OAD_active
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
      type(active) :: FLDNEW(1 : 3)
      type(active) :: FLDOLD(1 : 3)
      type(active) :: DFLDDT(1 : 3)
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
        FLDNEW(INT(L))%v = (FLDOLD(L)%v+DFLDDT(L)%v*OpenAD_Symbol_85)
        OpenAD_Symbol_86 = OpenAD_Symbol_85
        CALL sax(OpenAD_Symbol_86,DFLDDT(L),FLDNEW(L))
        CALL saxpy(1 _w2f__i8,FLDOLD(L),FLDNEW(L))
      END DO
      END SUBROUTINE

      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC,
     >  FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
      use OAD_active
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
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
      REAL(w2f__8) OpenAD_Symbol_112
      REAL(w2f__8) OpenAD_Symbol_113
      REAL(w2f__8) OpenAD_Symbol_114
      REAL(w2f__8) OpenAD_Symbol_115
      REAL(w2f__8) OpenAD_Symbol_116
      REAL(w2f__8) OpenAD_Symbol_117
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
      REAL(w2f__8) GAMMALOC
      REAL(w2f__8) FLDSTAR(1 : 2)
      REAL(w2f__8) EXTFORLOC(1 : 2)
      type(active) :: UVELLOC
      type(active) :: FLDNOW(1 : 3)
      type(active) :: FLDOLD(1 : 3)
      type(active) :: FLDNEW(1 : 3)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL box_update
      type(active) :: DFLDDT(1 : 3)
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
      IF (UVELLOC%v .GE. 0.0D00) THEN
        OpenAD_Symbol_19 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_Symbol_16 = (GAMMALOC * OpenAD_Symbol_19)
        OpenAD_Symbol_23 = (FLDNOW(3)%v-FLDNOW(1)%v)
        OpenAD_Symbol_12 = (EXTFORLOC(1)+VOL(1)*OpenAD_Symbol_16+UVELLOC
     +%v*OpenAD_Symbol_23)
        DFLDDT(1)%v = (OpenAD_Symbol_12/VOL(1))
        OpenAD_Symbol_21 = GAMMALOC
        OpenAD_Symbol_18 = VOL(1)
        OpenAD_Symbol_24 = OpenAD_Symbol_23
        OpenAD_Symbol_25 = UVELLOC%v
        OpenAD_Symbol_13 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_93 = (OpenAD_Symbol_24 * OpenAD_Symbol_13)
        OpenAD_Symbol_94 = (OpenAD_Symbol_25 * OpenAD_Symbol_13)
        OpenAD_Symbol_95 = (INT((-1_w2f__i8)) * OpenAD_Symbol_94)
        OpenAD_Symbol_96 = (INT((-1_w2f__i8)) * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_18 * OpenAD_Symbol_13)
        CALL sax(OpenAD_Symbol_93,UVELLOC,DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_94,FLDNOW(3),DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_95,FLDNOW(1),DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_96,FLDNOW(1),DFLDDT(1))
        OpenAD_Symbol_33 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_Symbol_30 = (GAMMALOC * OpenAD_Symbol_33)
        OpenAD_Symbol_37 = (FLDNOW(1)%v-FLDNOW(2)%v)
        OpenAD_Symbol_26 = (EXTFORLOC(2)+VOL(2)*OpenAD_Symbol_30+UVELLOC
     +%v*OpenAD_Symbol_37)
        DFLDDT(2)%v = (OpenAD_Symbol_26/VOL(2))
        OpenAD_Symbol_35 = GAMMALOC
        OpenAD_Symbol_32 = VOL(2)
        OpenAD_Symbol_38 = OpenAD_Symbol_37
        OpenAD_Symbol_39 = UVELLOC%v
        OpenAD_Symbol_27 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_97 = (OpenAD_Symbol_38 * OpenAD_Symbol_27)
        OpenAD_Symbol_98 = (OpenAD_Symbol_39 * OpenAD_Symbol_27)
        OpenAD_Symbol_99 = (INT((-1_w2f__i8)) * OpenAD_Symbol_98)
        OpenAD_Symbol_100 = (INT((-1_w2f__i8)) * OpenAD_Symbol_35 *
     >  OpenAD_Symbol_32 * OpenAD_Symbol_27)
        CALL sax(OpenAD_Symbol_97,UVELLOC,DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_98,FLDNOW(1),DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_99,FLDNOW(2),DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_100,FLDNOW(2),DFLDDT(2))
        OpenAD_Symbol_43 = (FLDNOW(2)%v-FLDNOW(3)%v)
        OpenAD_Symbol_40 = (UVELLOC%v*OpenAD_Symbol_43)
        DFLDDT(3)%v = (OpenAD_Symbol_40/VOL(3))
        OpenAD_Symbol_44 = OpenAD_Symbol_43
        OpenAD_Symbol_45 = UVELLOC%v
        OpenAD_Symbol_41 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_101 = (OpenAD_Symbol_44 * OpenAD_Symbol_41)
        OpenAD_Symbol_102 = (OpenAD_Symbol_45 * OpenAD_Symbol_41)
        OpenAD_Symbol_103 = (INT((-1_w2f__i8)) * OpenAD_Symbol_102)
        CALL sax(OpenAD_Symbol_101,UVELLOC,DFLDDT(3))
        CALL saxpy(OpenAD_Symbol_102,FLDNOW(2),DFLDDT(3))
        CALL saxpy(OpenAD_Symbol_103,FLDNOW(3),DFLDDT(3))
      ELSE
        OpenAD_Symbol_53 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_Symbol_50 = (GAMMALOC * OpenAD_Symbol_53)
        OpenAD_Symbol_57 = (FLDNOW(2)%v-FLDNOW(1)%v)
        OpenAD_Symbol_46 = (EXTFORLOC(1)+VOL(1)*OpenAD_Symbol_50-UVELLOC
     +%v*OpenAD_Symbol_57)
        DFLDDT(1)%v = (OpenAD_Symbol_46/VOL(1))
        OpenAD_Symbol_55 = GAMMALOC
        OpenAD_Symbol_52 = VOL(1)
        OpenAD_Symbol_58 = OpenAD_Symbol_57
        OpenAD_Symbol_59 = UVELLOC%v
        OpenAD_Symbol_47 = (INT(1_w2f__i8) / VOL(1))
        OpenAD_Symbol_104 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47)
        OpenAD_Symbol_105 = (OpenAD_Symbol_58 * OpenAD_Symbol_104)
        OpenAD_Symbol_106 = (OpenAD_Symbol_59 * OpenAD_Symbol_104)
        OpenAD_Symbol_107 = (INT((-1_w2f__i8)) * OpenAD_Symbol_106)
        OpenAD_Symbol_108 = (INT((-1_w2f__i8)) * OpenAD_Symbol_55 *
     >  OpenAD_Symbol_52 * OpenAD_Symbol_47)
        CALL sax(OpenAD_Symbol_105,UVELLOC,DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_106,FLDNOW(2),DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_107,FLDNOW(1),DFLDDT(1))
        CALL saxpy(OpenAD_Symbol_108,FLDNOW(1),DFLDDT(1))
        OpenAD_Symbol_67 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_Symbol_64 = (GAMMALOC * OpenAD_Symbol_67)
        OpenAD_Symbol_71 = (FLDNOW(3)%v-FLDNOW(2)%v)
        OpenAD_Symbol_60 = (EXTFORLOC(2)+VOL(2)*OpenAD_Symbol_64-UVELLOC
     +%v*OpenAD_Symbol_71)
        DFLDDT(2)%v = (OpenAD_Symbol_60/VOL(2))
        OpenAD_Symbol_69 = GAMMALOC
        OpenAD_Symbol_66 = VOL(2)
        OpenAD_Symbol_72 = OpenAD_Symbol_71
        OpenAD_Symbol_73 = UVELLOC%v
        OpenAD_Symbol_61 = (INT(1_w2f__i8) / VOL(2))
        OpenAD_Symbol_109 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61)
        OpenAD_Symbol_110 = (OpenAD_Symbol_72 * OpenAD_Symbol_109)
        OpenAD_Symbol_111 = (OpenAD_Symbol_73 * OpenAD_Symbol_109)
        OpenAD_Symbol_112 = (INT((-1_w2f__i8)) * OpenAD_Symbol_111)
        OpenAD_Symbol_113 = (INT((-1_w2f__i8)) * OpenAD_Symbol_69 *
     >  OpenAD_Symbol_66 * OpenAD_Symbol_61)
        CALL sax(OpenAD_Symbol_110,UVELLOC,DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_111,FLDNOW(3),DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_112,FLDNOW(2),DFLDDT(2))
        CALL saxpy(OpenAD_Symbol_113,FLDNOW(2),DFLDDT(2))
        OpenAD_Symbol_77 = (FLDNOW(1)%v-FLDNOW(3)%v)
        OpenAD_Symbol_74 = (UVELLOC%v*OpenAD_Symbol_77)
        DFLDDT(3)%v = (-(OpenAD_Symbol_74/VOL(3)))
        OpenAD_Symbol_78 = OpenAD_Symbol_77
        OpenAD_Symbol_79 = UVELLOC%v
        OpenAD_Symbol_75 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_114 = (OpenAD_Symbol_75 * INT((-1_w2f__i8)))
        OpenAD_Symbol_115 = (OpenAD_Symbol_78 * OpenAD_Symbol_114)
        OpenAD_Symbol_116 = (OpenAD_Symbol_79 * OpenAD_Symbol_114)
        OpenAD_Symbol_117 = (INT((-1_w2f__i8)) * OpenAD_Symbol_116)
        CALL sax(OpenAD_Symbol_115,UVELLOC,DFLDDT(3))
        CALL saxpy(OpenAD_Symbol_116,FLDNOW(1),DFLDDT(3))
        CALL saxpy(OpenAD_Symbol_117,FLDNOW(3),DFLDDT(3))
      ENDIF
      CALL box_update(FLDNEW,FLDOLD,DFLDDT)
      END SUBROUTINE
