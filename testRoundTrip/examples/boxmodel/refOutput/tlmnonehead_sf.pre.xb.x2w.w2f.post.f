      module all_globals_mod
      use w2f__types
      use OAD_active
      implicit none
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: ALPHA
      real(w2f__8) :: AREA(1:3)
      real(w2f__8) :: BETA
      real(w2f__8) :: BHEIGHT(1:3)
      real(w2f__8) :: BLENGTH(1:3)
      real(w2f__8) :: BWIDTH
      real(w2f__8) :: DAY
      real(w2f__8) :: DAYS_PER_50M_MIXED_LAYER
      real(w2f__8) :: DELTA
      real(w2f__8) :: DELTA_T
      real(w2f__8) :: EPSILON_IC
      real(w2f__8) :: EPSILON_REGULARIZE
      real(w2f__8) :: FDEPS
      real(w2f__8) :: FW(1:2)
      real(w2f__8) :: GAMMA_S
      real(w2f__8) :: GAMMA_T
      real(w2f__8) :: HUNDRED
      real(w2f__8) :: INTEGRATION_TIME
      real(w2f__8) :: METRIC
      real(w2f__8) :: METRIC1
      real(w2f__8) :: METRIC2
      real(w2f__8) :: NOISE_CORRELATION_TIME
      real(w2f__8) :: NULLFORCE(1:2)
      integer(w2f__i4) :: N_MAX
      real(w2f__8) :: PROJ_S(1:6)
      real(w2f__8) :: PROJ_T(1:6)
      real(w2f__8) :: R(1:6)
      real(w2f__8) :: R1(1:6)
      type(active) :: RHO(1:3)
      real(w2f__8) :: ROBERT_FILTER_COEFF
      real(w2f__8) :: R_S(1:6)
      real(w2f__8) :: R_T(1:6)
      type(active) :: S(1:3)
      type(active) :: SNEW(1:3)
      type(active) :: SNOW(1:3)
      type(active) :: SOLD(1:3)
      real(w2f__8) :: SSTAR(1:2)
      real(w2f__8) :: SV
      type(active) :: T(1:3)
      real(w2f__8) :: THC_S
      real(w2f__8) :: THC_T
      real(w2f__8) :: THC_TOT
      real(w2f__8) :: THOUSAND
      type(active) :: TNEW(1:3)
      type(active) :: TNOW(1:3)
      type(active) :: TOLD(1:3)
      real(w2f__8) :: TSTAR(1:2)
      real(w2f__8) :: TSVEC(1:6)
      real(w2f__8) :: U0
      real(w2f__8) :: UBAR
      type(active) :: UVEL
      logical(w2f__i4) :: VERBMODE
      real(w2f__8) :: VOL(1:3)
      real(w2f__8) :: X(1:6,1:6)
      type(active) :: XX(1:6)
      real(w2f__8) :: Y(1:6)
      real(w2f__8) :: YEAR
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: NDIM
      parameter (NDIM=3)
C
C     **** Statements ****
C
      END MODULE
      subroutine box_forward(ILEV1)
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Parameters and Result ****
C
      integer(w2f__i4) :: ILEV1
C
C     **** Local Variables and Functions ****
C
      external box_cycle_fields
      external box_density
      external box_robert_filter
      external box_timestep
      external box_transport
      integer(w2f__i4) :: IKEY
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: L
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
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
      DO L = 1,3,1
        IF (TNOW(L)%v.LT.(-2.0D00)) THEN
          TNOW(INT(L))%v = 2.0D00
          CALL zero_deriv(TNOW(INT(L)))
        ENDIF
      END DO
      END SUBROUTINE
      subroutine box_final_state()
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: L
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1,6,1
        TSVEC(INT(L)) = 0.0
      END DO
      DO L = 1,3,1
        TSVEC(INT(L)) = TNOW(L)%v
        TSVEC(INT(L+3)) = SNOW(L)%v
      END DO
      END SUBROUTINE
      subroutine box_ini_fields()
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_prop_12
      type(active) :: OpenAD_prop_13
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: L
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
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
      FW(1) = (AREA(1)*(HUNDRED/YEAR)*3.5D+01)
      FW(2) = (-FW(1))
      TSTAR(1) = 2.2D+01
      TSTAR(2) = 0.0D00
      SSTAR(1) = 3.6D+01
      SSTAR(2) = 3.4D+01
      UBAR = (SV*2.0D+01)
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
      DO L = 1,6,1
        TSVEC(INT(L)) = 0.0
      END DO
      DO L = 1,3,1
        T(INT(L))%v = (T(L)%v+XX(L)%v)
        S(INT(L))%v = (S(L)%v+XX(L+3)%v)
        CALL setderiv(OpenAD_prop_12,T(L))
        CALL setderiv(OpenAD_prop_13,S(L))
        CALL setderiv(T(L),OpenAD_prop_12)
        CALL inc_deriv(T(L),XX(L))
        CALL setderiv(S(L),OpenAD_prop_13)
        CALL inc_deriv(S(L),XX(L+3))
      END DO
      DO L = 1,3,1
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
      subroutine box_ini_params()
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: I
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: J
      integer(w2f__i4) :: L
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      VERBMODE = .false.
      BLENGTH(1) = 5.0D+08
      BLENGTH(2) = 1.0D+08
      BLENGTH(3) = BLENGTH(1)
      BHEIGHT(1) = 1.0D+05
      BHEIGHT(3) = 4.0D+05
      BHEIGHT(2) = (BHEIGHT(1)+BHEIGHT(3))
      DELTA = (BHEIGHT(1)/(BHEIGHT(1)+BHEIGHT(3)))
      BWIDTH = 4.0D+08
      AREA(1) = (BLENGTH(1)*BWIDTH)
      AREA(2) = (BLENGTH(2)*BWIDTH)
      AREA(3) = (BLENGTH(3)*BWIDTH)
      VOL(1) = (AREA(1)*BHEIGHT(1))
      VOL(2) = (AREA(2)*(BHEIGHT(1)+BHEIGHT(3)))
      VOL(3) = (AREA(3)*BHEIGHT(3))
      ROBERT_FILTER_COEFF = 2.5D-01
      HUNDRED = 1.0D+02
      THOUSAND = 1.0D+03
      DAY = 8.64D+04
      YEAR = (DAY*3.65D+02)
      SV = 1.0D+12
      U0 = ((SV*1.6D+01)/4.00000000000000019169D-04)
      ALPHA = 1.6679999999999998864D-04
      BETA = 7.81000000000000010186D-04
      DAYS_PER_50M_MIXED_LAYER = 5.0D+01
      GAMMA_T = (1.0D00/(DAY*3.0D+02))
      GAMMA_S = (0.0D00/((BHEIGHT(1)/5.0D+03)*DAY*DAYS_PER_50M_MIXED_LAY
     +ER))
      EPSILON_IC = (-1.00000000000000004792D-04)
      NOISE_CORRELATION_TIME = (DAY*1.5D+01)
      DELTA_T = (DAY*5.0D00)
      INTEGRATION_TIME = (YEAR*5.0D+01)
      N_MAX = INT(INTEGRATION_TIME/DELTA_T)
      FDEPS = 9.99999999999999954748D-07
      Y(1) = (THOUSAND/3.2680000000000000715D-02)
      Y(2) = (THOUSAND/7.9399999999999991418D-03)
      Y(3) = (THOUSAND/1.39999999999999998578D-03)
      Y(4) = (THOUSAND/1.41699999999999992628D-01)
      Y(5) = (THOUSAND/1.28599999999999992095D-01)
      Y(6) = (THOUSAND/8.7800000000000003042D-02)
      R(1) = (ALPHA*DELTA)
      R(2) = (-ALPHA)
      R(3) = (ALPHA*(1.0D00-DELTA))
      R(4) = (-(BETA*DELTA))
      R(5) = BETA
      R(6) = (-(BETA*(1.0D00-DELTA)))
      DO L = 1,6,1
        R(INT(L)) = ((R(L)*U0)/SV)
      END DO
      DO L = 1,6,1
        IF (L.LE.3) THEN
          PROJ_T(INT(L)) = 1.0D00
          PROJ_S(INT(L)) = 0.0D00
        ELSE
          PROJ_T(INT(L)) = 0.0D00
          PROJ_S(INT(L)) = 1.0D00
        ENDIF
      END DO
      DO L = 1,6,1
        R_T(INT(L)) = (PROJ_T(L)*R(L))
        R_S(INT(L)) = (PROJ_S(L)*R(L))
      END DO
      R1(1) = 1.0D00
      R1(2) = (-1.0D00)
      R1(3) = 0.0D00
      R1(4) = 0.0D00
      R1(5) = 0.0D00
      R1(6) = 0.0D00
      DO J = 1,6,1
        DO I = 1,6,1
          X(INT(I),INT(J)) = (R(I)*R(J))
        END DO
      END DO
      EPSILON_REGULARIZE = 1.00000000000000002092D-08
      DO J = 1,6,1
        DO I = 1,6,1
          X(INT(I),INT(J)) = (X(I,J)+EPSILON_REGULARIZE)
        END DO
      END DO
      END SUBROUTINE
      subroutine box_model_body()
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Local Variables and Functions ****
C
      external box_final_state
      external box_forward
      external box_ini_fields
      integer(w2f__i4) :: ILEV1
      integer(w2f__i4) :: ILEV2
      integer(w2f__i4) :: ILOOP
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: MAXLEV2
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
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
      MAXLEV2 = ((N_MAX/73)+1)
      IF (N_MAX.GT.3650) THEN
        WRITE(*,*) 'NEED TO SET nlev1*nlev2 >= n_max '
      ELSE
        DO ILEV2 = 1,50,1
          IF (ILEV2.LE.MAXLEV2) THEN
            DO ILEV1 = 1,73,1
              ILOOP = (ILEV1+ILEV2*73+(-73))
              IF (ILOOP.LE.N_MAX) THEN
                CALL box_forward(ILEV1)
              ENDIF
            END DO
          ENDIF
        END DO
        CALL box_final_state()
      ENDIF
      END SUBROUTINE
      subroutine box_density(TLOC,SLOC,RHOLOC)
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_0
      real(w2f__8) :: OpenAD_lin_0
      real(w2f__8) :: OpenAD_lin_2
C
C     **** Parameters and Result ****
C
      type(active) :: TLOC(1:3)
      type(active) :: SLOC(1:3)
      type(active) :: RHOLOC(1:3)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: L
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1,3,1
        RHOLOC(INT(L))%v = (SLOC(L)%v*BETA-TLOC(L)%v*ALPHA)
        OpenAD_lin_0 = BETA
        OpenAD_lin_2 = ALPHA
        OpenAD_acc_0 = (OpenAD_lin_2*INT((-1_w2f__i8)))
        CALL sax(OpenAD_lin_0,SLOC(L),RHOLOC(L))
        CALL saxpy(OpenAD_acc_0,TLOC(L),RHOLOC(L))
      END DO
      END SUBROUTINE
      subroutine box_transport(RHOLOC,UVELLOC)
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_1
      real(w2f__8) :: OpenAD_lin_5
      real(w2f__8) :: OpenAD_lin_6
      real(w2f__8) :: OpenAD_lin_8
      type(active) :: OpenAD_prop_0
      real(w2f__8) :: OpenAD_tmp_0
      real(w2f__8) :: OpenAD_tmp_1
C
C     **** Parameters and Result ****
C
      type(active) :: RHOLOC(1:3)
      type(active) :: UVELLOC
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      OpenAD_tmp_1 = (1.0D00-DELTA)
      OpenAD_tmp_0 = (RHOLOC(1)%v*DELTA+RHOLOC(3)%v*OpenAD_tmp_1-RHOLOC(
     +2)%v)
      UVELLOC%v = (-(U0*OpenAD_tmp_0))
      OpenAD_lin_6 = DELTA
      OpenAD_lin_8 = OpenAD_tmp_1
      OpenAD_lin_5 = U0
      OpenAD_acc_1 = (OpenAD_lin_5*INT((-1_w2f__i8)))
      CALL set_neg_deriv(OpenAD_prop_0,RHOLOC(2))
      CALL saxpy(OpenAD_lin_6,RHOLOC(1),OpenAD_prop_0)
      CALL saxpy(OpenAD_lin_8,RHOLOC(3),OpenAD_prop_0)
      CALL sax(OpenAD_acc_1,OpenAD_prop_0,UVELLOC)
      END SUBROUTINE
      subroutine box_robert_filter(FLDNOW,FLDOLD,FLDNEW)
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_Symbol_0
      real(w2f__8) :: OpenAD_lin_59
      type(active) :: OpenAD_prop_7
      type(active) :: OpenAD_prop_8
      type(active) :: OpenAD_prop_9
      real(w2f__8) :: OpenAD_tmp_22
C
C     **** Parameters and Result ****
C
      type(active) :: FLDNOW(1:3)
      type(active) :: FLDOLD(1:3)
      type(active) :: FLDNEW(1:3)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: L
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1,3,1
        OpenAD_tmp_22 = (FLDOLD(L)%v+FLDNEW(L)%v-FLDNOW(L)%v*2.0D00)
        OpenAD_Symbol_0 = (FLDNOW(L)%v+ROBERT_FILTER_COEFF*OpenAD_tmp_22
     +)
        OpenAD_lin_59 = ROBERT_FILTER_COEFF
        FLDNOW(INT(L))%v = OpenAD_Symbol_0
        CALL setderiv(OpenAD_prop_7,FLDNOW(L))
        CALL setderiv(OpenAD_prop_8,FLDNOW(L))
        CALL setderiv(OpenAD_prop_9,FLDOLD(L))
        CALL inc_deriv(OpenAD_prop_9,FLDNEW(L))
        CALL saxpy(-2.0D00,OpenAD_prop_8,OpenAD_prop_9)
        CALL setderiv(FLDNOW(L),OpenAD_prop_7)
        CALL saxpy(OpenAD_lin_59,OpenAD_prop_9,FLDNOW(L))
      END DO
      END SUBROUTINE
      subroutine box_cycle_fields()
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: OpenAD_prop_10
      type(active) :: OpenAD_prop_11
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: L
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1,3,1
        TOLD(INT(L))%v = TNOW(L)%v
        TNOW(INT(L))%v = TNEW(L)%v
        CALL setderiv(OpenAD_prop_10,TNOW(L))
        CALL setderiv(TOLD(L),OpenAD_prop_10)
        CALL setderiv(TNOW(L),TNEW(L))
        SOLD(INT(L))%v = SNOW(L)%v
        SNOW(INT(L))%v = SNEW(L)%v
        CALL setderiv(OpenAD_prop_11,SNOW(L))
        CALL setderiv(SOLD(L),OpenAD_prop_11)
        CALL setderiv(SNOW(L),SNEW(L))
      END DO
      END SUBROUTINE
      subroutine box_update(FLDNEW,FLDOLD,DFLDDT)
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_lin_61
      real(w2f__8) :: OpenAD_tmp_23
C
C     **** Parameters and Result ****
C
      type(active) :: FLDNEW(1:3)
      type(active) :: FLDOLD(1:3)
      type(active) :: DFLDDT(1:3)
C
C     **** Local Variables and Functions ****
C
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: L
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      DO L = 1,3,1
        OpenAD_tmp_23 = (DELTA_T*2.0D00)
        FLDNEW(INT(L))%v = (FLDOLD(L)%v+DFLDDT(L)%v*OpenAD_tmp_23)
        OpenAD_lin_61 = OpenAD_tmp_23
        CALL setderiv(FLDNEW(L),FLDOLD(L))
        CALL saxpy(OpenAD_lin_61,DFLDDT(L),FLDNEW(L))
      END DO
      END SUBROUTINE
      subroutine box_timestep(GAMMALOC,FLDSTAR,EXTFORLOC,UVELLOC,FLDNOW,
     +FLDOLD,FLDNEW)
      use w2f__types
      use OAD_active
      use all_globals_mod
      implicit none
C
C     **** Global Variables & Derived Type Definitions ****
C
      real(w2f__8) :: OpenAD_acc_10
      real(w2f__8) :: OpenAD_acc_11
      real(w2f__8) :: OpenAD_acc_12
      real(w2f__8) :: OpenAD_acc_13
      real(w2f__8) :: OpenAD_acc_14
      real(w2f__8) :: OpenAD_acc_15
      real(w2f__8) :: OpenAD_acc_16
      real(w2f__8) :: OpenAD_acc_17
      real(w2f__8) :: OpenAD_acc_18
      real(w2f__8) :: OpenAD_acc_19
      real(w2f__8) :: OpenAD_acc_2
      real(w2f__8) :: OpenAD_acc_3
      real(w2f__8) :: OpenAD_acc_4
      real(w2f__8) :: OpenAD_acc_5
      real(w2f__8) :: OpenAD_acc_6
      real(w2f__8) :: OpenAD_acc_7
      real(w2f__8) :: OpenAD_acc_8
      real(w2f__8) :: OpenAD_acc_9
      real(w2f__8) :: OpenAD_lin_10
      real(w2f__8) :: OpenAD_lin_14
      real(w2f__8) :: OpenAD_lin_16
      real(w2f__8) :: OpenAD_lin_18
      real(w2f__8) :: OpenAD_lin_19
      real(w2f__8) :: OpenAD_lin_20
      real(w2f__8) :: OpenAD_lin_24
      real(w2f__8) :: OpenAD_lin_26
      real(w2f__8) :: OpenAD_lin_28
      real(w2f__8) :: OpenAD_lin_29
      real(w2f__8) :: OpenAD_lin_30
      real(w2f__8) :: OpenAD_lin_32
      real(w2f__8) :: OpenAD_lin_33
      real(w2f__8) :: OpenAD_lin_34
      real(w2f__8) :: OpenAD_lin_38
      real(w2f__8) :: OpenAD_lin_40
      real(w2f__8) :: OpenAD_lin_42
      real(w2f__8) :: OpenAD_lin_43
      real(w2f__8) :: OpenAD_lin_44
      real(w2f__8) :: OpenAD_lin_48
      real(w2f__8) :: OpenAD_lin_50
      real(w2f__8) :: OpenAD_lin_52
      real(w2f__8) :: OpenAD_lin_53
      real(w2f__8) :: OpenAD_lin_54
      real(w2f__8) :: OpenAD_lin_56
      real(w2f__8) :: OpenAD_lin_57
      type(active) :: OpenAD_prop_1
      type(active) :: OpenAD_prop_2
      type(active) :: OpenAD_prop_3
      type(active) :: OpenAD_prop_4
      type(active) :: OpenAD_prop_5
      type(active) :: OpenAD_prop_6
      real(w2f__8) :: OpenAD_tmp_10
      real(w2f__8) :: OpenAD_tmp_11
      real(w2f__8) :: OpenAD_tmp_12
      real(w2f__8) :: OpenAD_tmp_13
      real(w2f__8) :: OpenAD_tmp_14
      real(w2f__8) :: OpenAD_tmp_15
      real(w2f__8) :: OpenAD_tmp_16
      real(w2f__8) :: OpenAD_tmp_17
      real(w2f__8) :: OpenAD_tmp_18
      real(w2f__8) :: OpenAD_tmp_19
      real(w2f__8) :: OpenAD_tmp_2
      real(w2f__8) :: OpenAD_tmp_20
      real(w2f__8) :: OpenAD_tmp_21
      real(w2f__8) :: OpenAD_tmp_3
      real(w2f__8) :: OpenAD_tmp_4
      real(w2f__8) :: OpenAD_tmp_5
      real(w2f__8) :: OpenAD_tmp_6
      real(w2f__8) :: OpenAD_tmp_7
      real(w2f__8) :: OpenAD_tmp_8
      real(w2f__8) :: OpenAD_tmp_9
C
C     **** Parameters and Result ****
C
      real(w2f__8) :: GAMMALOC
      real(w2f__8) :: FLDSTAR(1:2)
      real(w2f__8) :: EXTFORLOC(1:2)
      type(active) :: UVELLOC
      type(active) :: FLDNOW(1:3)
      type(active) :: FLDOLD(1:3)
      type(active) :: FLDNEW(1:3)
C
C     **** Local Variables and Functions ****
C
      external box_update
      type(active) :: DFLDDT(1:3)
      integer(w2f__i4) :: ISBYTE
      parameter (ISBYTE=8)
      integer(w2f__i4) :: NLEV1
      parameter (NLEV1=73)
      integer(w2f__i4) :: NLEV2
      parameter (NLEV2=50)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      IF (UVELLOC%v.GE.0.0D00) THEN
        OpenAD_tmp_4 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_tmp_3 = (GAMMALOC*OpenAD_tmp_4)
        OpenAD_tmp_5 = (FLDNOW(3)%v-FLDNOW(1)%v)
        OpenAD_tmp_2 = (EXTFORLOC(1)+VOL(1)*OpenAD_tmp_3+UVELLOC%v*OpenA
     +D_tmp_5)
        DFLDDT(1)%v = (OpenAD_tmp_2/VOL(1))
        OpenAD_lin_16 = GAMMALOC
        OpenAD_lin_14 = VOL(1)
        OpenAD_lin_18 = OpenAD_tmp_5
        OpenAD_lin_19 = UVELLOC%v
        OpenAD_lin_10 = (INT(1_w2f__i8)/VOL(1))
        OpenAD_acc_2 = (OpenAD_lin_18*OpenAD_lin_10)
        OpenAD_acc_3 = (OpenAD_lin_19*OpenAD_lin_10)
        OpenAD_acc_4 = (INT((-1_w2f__i8))*OpenAD_lin_16*OpenAD_lin_14*Op
     +enAD_lin_10)
        CALL setderiv(OpenAD_prop_1,FLDNOW(3))
        CALL dec_deriv(OpenAD_prop_1,FLDNOW(1))
        CALL sax(OpenAD_acc_2,UVELLOC,DFLDDT(1))
        CALL saxpy(OpenAD_acc_3,OpenAD_prop_1,DFLDDT(1))
        CALL saxpy(OpenAD_acc_4,FLDNOW(1),DFLDDT(1))
        OpenAD_tmp_8 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_tmp_7 = (GAMMALOC*OpenAD_tmp_8)
        OpenAD_tmp_9 = (FLDNOW(1)%v-FLDNOW(2)%v)
        OpenAD_tmp_6 = (EXTFORLOC(2)+VOL(2)*OpenAD_tmp_7+UVELLOC%v*OpenA
     +D_tmp_9)
        DFLDDT(2)%v = (OpenAD_tmp_6/VOL(2))
        OpenAD_lin_26 = GAMMALOC
        OpenAD_lin_24 = VOL(2)
        OpenAD_lin_28 = OpenAD_tmp_9
        OpenAD_lin_29 = UVELLOC%v
        OpenAD_lin_20 = (INT(1_w2f__i8)/VOL(2))
        OpenAD_acc_5 = (OpenAD_lin_28*OpenAD_lin_20)
        OpenAD_acc_6 = (OpenAD_lin_29*OpenAD_lin_20)
        OpenAD_acc_7 = (INT((-1_w2f__i8))*OpenAD_lin_26*OpenAD_lin_24*Op
     +enAD_lin_20)
        CALL setderiv(OpenAD_prop_2,FLDNOW(1))
        CALL dec_deriv(OpenAD_prop_2,FLDNOW(2))
        CALL sax(OpenAD_acc_5,UVELLOC,DFLDDT(2))
        CALL saxpy(OpenAD_acc_6,OpenAD_prop_2,DFLDDT(2))
        CALL saxpy(OpenAD_acc_7,FLDNOW(2),DFLDDT(2))
        OpenAD_tmp_11 = (FLDNOW(2)%v-FLDNOW(3)%v)
        OpenAD_tmp_10 = (UVELLOC%v*OpenAD_tmp_11)
        DFLDDT(3)%v = (OpenAD_tmp_10/VOL(3))
        OpenAD_lin_32 = OpenAD_tmp_11
        OpenAD_lin_33 = UVELLOC%v
        OpenAD_lin_30 = (INT(1_w2f__i8)/VOL(3))
        OpenAD_acc_8 = (OpenAD_lin_32*OpenAD_lin_30)
        OpenAD_acc_9 = (OpenAD_lin_33*OpenAD_lin_30)
        CALL setderiv(OpenAD_prop_3,FLDNOW(2))
        CALL dec_deriv(OpenAD_prop_3,FLDNOW(3))
        CALL sax(OpenAD_acc_8,UVELLOC,DFLDDT(3))
        CALL saxpy(OpenAD_acc_9,OpenAD_prop_3,DFLDDT(3))
      ELSE
        OpenAD_tmp_14 = (FLDSTAR(1)-FLDNOW(1)%v)
        OpenAD_tmp_13 = (GAMMALOC*OpenAD_tmp_14)
        OpenAD_tmp_15 = (FLDNOW(2)%v-FLDNOW(1)%v)
        OpenAD_tmp_12 = (EXTFORLOC(1)+VOL(1)*OpenAD_tmp_13-UVELLOC%v*Ope
     +nAD_tmp_15)
        DFLDDT(1)%v = (OpenAD_tmp_12/VOL(1))
        OpenAD_lin_40 = GAMMALOC
        OpenAD_lin_38 = VOL(1)
        OpenAD_lin_42 = OpenAD_tmp_15
        OpenAD_lin_43 = UVELLOC%v
        OpenAD_lin_34 = (INT(1_w2f__i8)/VOL(1))
        OpenAD_acc_10 = (INT((-1_w2f__i8))*OpenAD_lin_34)
        OpenAD_acc_11 = (OpenAD_lin_42*OpenAD_acc_10)
        OpenAD_acc_12 = (OpenAD_lin_43*OpenAD_acc_10)
        OpenAD_acc_13 = (INT((-1_w2f__i8))*OpenAD_lin_40*OpenAD_lin_38*O
     +penAD_lin_34)
        CALL setderiv(OpenAD_prop_4,FLDNOW(2))
        CALL dec_deriv(OpenAD_prop_4,FLDNOW(1))
        CALL sax(OpenAD_acc_11,UVELLOC,DFLDDT(1))
        CALL saxpy(OpenAD_acc_12,OpenAD_prop_4,DFLDDT(1))
        CALL saxpy(OpenAD_acc_13,FLDNOW(1),DFLDDT(1))
        OpenAD_tmp_18 = (FLDSTAR(2)-FLDNOW(2)%v)
        OpenAD_tmp_17 = (GAMMALOC*OpenAD_tmp_18)
        OpenAD_tmp_19 = (FLDNOW(3)%v-FLDNOW(2)%v)
        OpenAD_tmp_16 = (EXTFORLOC(2)+VOL(2)*OpenAD_tmp_17-UVELLOC%v*Ope
     +nAD_tmp_19)
        DFLDDT(2)%v = (OpenAD_tmp_16/VOL(2))
        OpenAD_lin_50 = GAMMALOC
        OpenAD_lin_48 = VOL(2)
        OpenAD_lin_52 = OpenAD_tmp_19
        OpenAD_lin_53 = UVELLOC%v
        OpenAD_lin_44 = (INT(1_w2f__i8)/VOL(2))
        OpenAD_acc_14 = (INT((-1_w2f__i8))*OpenAD_lin_44)
        OpenAD_acc_15 = (OpenAD_lin_52*OpenAD_acc_14)
        OpenAD_acc_16 = (OpenAD_lin_53*OpenAD_acc_14)
        OpenAD_acc_17 = (INT((-1_w2f__i8))*OpenAD_lin_50*OpenAD_lin_48*O
     +penAD_lin_44)
        CALL setderiv(OpenAD_prop_5,FLDNOW(3))
        CALL dec_deriv(OpenAD_prop_5,FLDNOW(2))
        CALL sax(OpenAD_acc_15,UVELLOC,DFLDDT(2))
        CALL saxpy(OpenAD_acc_16,OpenAD_prop_5,DFLDDT(2))
        CALL saxpy(OpenAD_acc_17,FLDNOW(2),DFLDDT(2))
        OpenAD_tmp_21 = (FLDNOW(1)%v-FLDNOW(3)%v)
        OpenAD_tmp_20 = (UVELLOC%v*OpenAD_tmp_21)
        DFLDDT(3)%v = (-(OpenAD_tmp_20/VOL(3)))
        OpenAD_lin_56 = OpenAD_tmp_21
        OpenAD_lin_57 = UVELLOC%v
        OpenAD_lin_54 = (INT(1_w2f__i8)/VOL(3))
        OpenAD_acc_18 = (OpenAD_lin_56*OpenAD_lin_54*INT((-1_w2f__i8)))
        OpenAD_acc_19 = (OpenAD_lin_57*OpenAD_lin_54*INT((-1_w2f__i8)))
        CALL setderiv(OpenAD_prop_6,FLDNOW(1))
        CALL dec_deriv(OpenAD_prop_6,FLDNOW(3))
        CALL sax(OpenAD_acc_18,UVELLOC,DFLDDT(3))
        CALL saxpy(OpenAD_acc_19,OpenAD_prop_6,DFLDDT(3))
      ENDIF
      CALL box_update(FLDNEW,FLDOLD,DFLDDT)
      END SUBROUTINE
