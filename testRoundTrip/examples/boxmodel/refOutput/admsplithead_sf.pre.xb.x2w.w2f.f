
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
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
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
      INTEGER(w2f__i8) OpenAD_Symbol_276
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
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
        ENDIF
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
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
      OpenAD_Symbol_128 = 0_w2f__i8
      DO L = 1, 3, 1
        IF(__value__(TNOW(L)) .LT.(-2.0D00)) THEN
          __value__(TNOW(INT(L))) = 2.0D00
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(L)
          OpenAD_Symbol_129 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_129)
        ELSE
          OpenAD_Symbol_130 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_130)
        ENDIF
        OpenAD_Symbol_128 = (INT(OpenAD_Symbol_128) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_128)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_125)
      OpenAD_Symbol_126 = 1
      DO WHILE(INT(OpenAD_Symbol_126) .LE. INT(OpenAD_Symbol_125))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_127)
        IF(OpenAD_Symbol_127 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_276)
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_276))))
        ENDIF
        OpenAD_Symbol_126 = INT(OpenAD_Symbol_126) + 1
      END DO
      CALL box_cycle_fields()
      CALL box_robert_filter(__deriv__(SNOW), __deriv__(SOLD),
     >  __deriv__(SNEW))
      CALL box_robert_filter(__deriv__(TNOW), __deriv__(TOLD),
     >  __deriv__(TNEW))
      CALL box_timestep(GAMMA_S, SSTAR, FW, __deriv__(UVEL), __deriv__(
     > SNOW), __deriv__(SOLD), __deriv__(SNEW))
      CALL box_timestep(GAMMA_T, TSTAR, NULLFORCE, __deriv__(UVEL),
     >  __deriv__(TNOW), __deriv__(TOLD), __deriv__(TNEW))
      CALL box_transport(__deriv__(RHO), __deriv__(UVEL))
      CALL box_density(__deriv__(TNOW), __deriv__(SNOW), __deriv__(RHO)
     > )
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(GAMMA_S)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(GAMMA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(ILEV1)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(RHO))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(SSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(TSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(VOL)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(TSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(SSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(RHO))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(ILEV1)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(GAMMA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(GAMMA_S)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ALPHA)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(RHO))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(ILEV1)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(ILEV1)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(RHO))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
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
      OpenAD_Symbol_134 = 0_w2f__i8
      DO L = 1, 3, 1
        IF(__value__(TNOW(L)) .LT.(-2.0D00)) THEN
          __value__(TNOW(INT(L))) = 2.0D00
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(L)
          OpenAD_Symbol_135 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_135)
        ELSE
          OpenAD_Symbol_136 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_136)
        ENDIF
        OpenAD_Symbol_134 = (INT(OpenAD_Symbol_134) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_134)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_131)
      OpenAD_Symbol_132 = 1
      DO WHILE(INT(OpenAD_Symbol_132) .LE. INT(OpenAD_Symbol_131))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_133)
        IF(OpenAD_Symbol_133 .ne. 0) THEN
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_276)
C         $OpenAD$ INLINE ZeroDeriv(subst)
          CALL ZeroDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_276))))
        ENDIF
        OpenAD_Symbol_132 = INT(OpenAD_Symbol_132) + 1
      END DO
      CALL box_cycle_fields()
      CALL box_robert_filter(__deriv__(SNOW), __deriv__(SOLD),
     >  __deriv__(SNEW))
      CALL box_robert_filter(__deriv__(TNOW), __deriv__(TOLD),
     >  __deriv__(TNEW))
      CALL box_timestep(GAMMA_S, SSTAR, FW, __deriv__(UVEL), __deriv__(
     > SNOW), __deriv__(SOLD), __deriv__(SNEW))
      CALL box_timestep(GAMMA_T, TSTAR, NULLFORCE, __deriv__(UVEL),
     >  __deriv__(TNOW), __deriv__(TOLD), __deriv__(TNEW))
      CALL box_transport(__deriv__(RHO), __deriv__(UVEL))
      CALL box_density(__deriv__(TNOW), __deriv__(SNOW), __deriv__(RHO)
     > )
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_final_state()
      use w2f__types
      use all_globals_mod
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_161
      INTEGER(w2f__i8) OpenAD_Symbol_162
      INTEGER(w2f__i8) OpenAD_Symbol_163
      INTEGER(w2f__i8) OpenAD_Symbol_164
      INTEGER(w2f__i8) OpenAD_Symbol_165
      INTEGER(w2f__i8) OpenAD_Symbol_166
      INTEGER(w2f__i8) OpenAD_Symbol_167
      INTEGER(w2f__i8) OpenAD_Symbol_168
      INTEGER(w2f__i8) OpenAD_Symbol_169
      INTEGER(w2f__i8) OpenAD_Symbol_170
      INTEGER(w2f__i8) OpenAD_Symbol_171
      INTEGER(w2f__i8) OpenAD_Symbol_172
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
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
      END DO
      DO L = 1, 3, 1
        TSVEC(INT(L)) = __value__(TNOW(L))
        TSVEC(INT(L + 3)) = __value__(SNOW(L))
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_165 = 0_w2f__i8
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
        OpenAD_Symbol_165 = (INT(OpenAD_Symbol_165) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_165)
      OpenAD_Symbol_166 = 0_w2f__i8
      DO L = 1, 3, 1
        TSVEC(INT(L)) = __value__(TNOW(L))
        TSVEC(INT(L + 3)) = __value__(SNOW(L))
        OpenAD_Symbol_166 = (INT(OpenAD_Symbol_166) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_166)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_161)
      OpenAD_Symbol_162 = 1
      DO WHILE(INT(OpenAD_Symbol_162) .LE. INT(OpenAD_Symbol_161))
        OpenAD_Symbol_162 = INT(OpenAD_Symbol_162) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_163)
      OpenAD_Symbol_164 = 1
      DO WHILE(INT(OpenAD_Symbol_164) .LE. INT(OpenAD_Symbol_163))
        OpenAD_Symbol_164 = INT(OpenAD_Symbol_164) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(TSVEC)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(TSVEC)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_171 = 0_w2f__i8
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
        OpenAD_Symbol_171 = (INT(OpenAD_Symbol_171) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_171)
      OpenAD_Symbol_172 = 0_w2f__i8
      DO L = 1, 3, 1
        TSVEC(INT(L)) = __value__(TNOW(L))
        TSVEC(INT(L + 3)) = __value__(SNOW(L))
        OpenAD_Symbol_172 = (INT(OpenAD_Symbol_172) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_172)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_167)
      OpenAD_Symbol_168 = 1
      DO WHILE(INT(OpenAD_Symbol_168) .LE. INT(OpenAD_Symbol_167))
        OpenAD_Symbol_168 = INT(OpenAD_Symbol_168) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_169)
      OpenAD_Symbol_170 = 1
      DO WHILE(INT(OpenAD_Symbol_170) .LE. INT(OpenAD_Symbol_169))
        OpenAD_Symbol_170 = INT(OpenAD_Symbol_170) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_ini_fields()
      use w2f__types
      use all_globals_mod
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_123
      TYPE (OpenADTy_active) OpenAD_Symbol_124
      INTEGER(w2f__i8) OpenAD_Symbol_173
      INTEGER(w2f__i8) OpenAD_Symbol_174
      INTEGER(w2f__i8) OpenAD_Symbol_175
      INTEGER(w2f__i8) OpenAD_Symbol_176
      INTEGER(w2f__i8) OpenAD_Symbol_177
      INTEGER(w2f__i8) OpenAD_Symbol_178
      INTEGER(w2f__i8) OpenAD_Symbol_179
      INTEGER(w2f__i8) OpenAD_Symbol_180
      INTEGER(w2f__i8) OpenAD_Symbol_181
      INTEGER(w2f__i8) OpenAD_Symbol_182
      INTEGER(w2f__i8) OpenAD_Symbol_183
      INTEGER(w2f__i8) OpenAD_Symbol_184
      INTEGER(w2f__i8) OpenAD_Symbol_185
      INTEGER(w2f__i8) OpenAD_Symbol_186
      INTEGER(w2f__i8) OpenAD_Symbol_187
      INTEGER(w2f__i8) OpenAD_Symbol_188
      INTEGER(w2f__i8) OpenAD_Symbol_189
      INTEGER(w2f__i8) OpenAD_Symbol_190
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
      INTEGER(w2f__i8) OpenAD_Symbol_191
      INTEGER(w2f__i8) OpenAD_Symbol_327
      INTEGER(w2f__i8) OpenAD_Symbol_328
      INTEGER(w2f__i8) OpenAD_Symbol_329
      INTEGER(w2f__i8) OpenAD_Symbol_330
      INTEGER(w2f__i8) OpenAD_Symbol_331
      INTEGER(w2f__i8) OpenAD_Symbol_332
      INTEGER(w2f__i8) OpenAD_Symbol_333
      INTEGER(w2f__i8) OpenAD_Symbol_334
      INTEGER(w2f__i8) OpenAD_Symbol_335
      INTEGER(w2f__i8) OpenAD_Symbol_336
      INTEGER(w2f__i8) OpenAD_Symbol_337
      INTEGER(w2f__i8) OpenAD_Symbol_338
      INTEGER(w2f__i8) OpenAD_Symbol_339
      INTEGER(w2f__i8) OpenAD_Symbol_340
      INTEGER(w2f__i8) OpenAD_Symbol_341
      INTEGER(w2f__i8) OpenAD_Symbol_342
      INTEGER(w2f__i8) OpenAD_Symbol_343
      INTEGER(w2f__i8) OpenAD_Symbol_344
      INTEGER(w2f__i8) OpenAD_Symbol_345
      INTEGER(w2f__i8) OpenAD_Symbol_346
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
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
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
      END DO
      DO L = 1, 3, 1
        __value__(T(INT(L))) = (__value__(T(L)) + __value__(XX(L)))
        __value__(S(INT(L))) = (__value__(S(L)) + __value__(XX(L + 3)))
      END DO
      DO L = 1, 3, 1
        __value__(TNEW(INT(L))) = __value__(T(L))
        __value__(SNEW(INT(L))) = __value__(S(L))
        __value__(TOLD(INT(L))) = __value__(T(L))
        __value__(SOLD(INT(L))) = __value__(S(L))
        __value__(TNOW(INT(L))) = __value__(T(L))
        __value__(SNOW(INT(L))) = __value__(S(L))
      END DO
      __value__(UVEL) = UBAR
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
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
      OpenAD_Symbol_179 = 0_w2f__i8
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
        OpenAD_Symbol_179 = (INT(OpenAD_Symbol_179) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_179)
      OpenAD_Symbol_180 = 0_w2f__i8
      DO L = 1, 3, 1
        __value__(T(INT(L))) = (__value__(T(L)) + __value__(XX(L)))
        __value__(S(INT(L))) = (__value__(S(L)) + __value__(XX(L + 3)))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_191 = (L + 3)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_191)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_180 = (INT(OpenAD_Symbol_180) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_180)
      OpenAD_Symbol_181 = 0_w2f__i8
      DO L = 1, 3, 1
        __value__(TNEW(INT(L))) = __value__(T(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        __value__(SNEW(INT(L))) = __value__(S(L))
        __value__(TOLD(INT(L))) = __value__(T(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        __value__(SOLD(INT(L))) = __value__(S(L))
        __value__(TNOW(INT(L))) = __value__(T(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        __value__(SNOW(INT(L))) = __value__(S(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_181 = (INT(OpenAD_Symbol_181) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_181)
      __value__(UVEL) = UBAR
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UVEL))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_173)
      OpenAD_Symbol_174 = 1
      DO WHILE(INT(OpenAD_Symbol_174) .LE. INT(OpenAD_Symbol_173))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_335)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_336)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SNOW(INT(OpenAD_Symbol_335))),
     >  __deriv__(S(INT(OpenAD_Symbol_336))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SNOW(INT(OpenAD_Symbol_335))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_337)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_338)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_337))),
     >  __deriv__(T(INT(OpenAD_Symbol_338))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_337))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_339)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_340)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SOLD(INT(OpenAD_Symbol_339))),
     >  __deriv__(S(INT(OpenAD_Symbol_340))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SOLD(INT(OpenAD_Symbol_339))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_341)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_342)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TOLD(INT(OpenAD_Symbol_341))),
     >  __deriv__(T(INT(OpenAD_Symbol_342))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TOLD(INT(OpenAD_Symbol_341))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_343)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_344)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SNEW(INT(OpenAD_Symbol_343))),
     >  __deriv__(S(INT(OpenAD_Symbol_344))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SNEW(INT(OpenAD_Symbol_343))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_345)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_346)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TNEW(INT(OpenAD_Symbol_345))),
     >  __deriv__(T(INT(OpenAD_Symbol_346))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TNEW(INT(OpenAD_Symbol_345))))
        OpenAD_Symbol_174 = INT(OpenAD_Symbol_174) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_175)
      OpenAD_Symbol_176 = 1
      DO WHILE(INT(OpenAD_Symbol_176) .LE. INT(OpenAD_Symbol_175))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_327)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_328)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(S(INT(OpenAD_Symbol_327))),
     >  __deriv__(XX(INT(OpenAD_Symbol_328))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_329)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(S(INT(OpenAD_Symbol_329))),
     >  __deriv__(OpenAD_Symbol_124))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(S(INT(OpenAD_Symbol_329))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_330)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_331)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(T(INT(OpenAD_Symbol_330))),
     >  __deriv__(XX(INT(OpenAD_Symbol_331))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_332)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(T(INT(OpenAD_Symbol_332))),
     >  __deriv__(OpenAD_Symbol_123))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(T(INT(OpenAD_Symbol_332))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_333)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_124), __deriv__(S(INT(
     > OpenAD_Symbol_333))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_124))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_334)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_123), __deriv__(T(INT(
     > OpenAD_Symbol_334))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_123))
        OpenAD_Symbol_176 = INT(OpenAD_Symbol_176) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_177)
      OpenAD_Symbol_178 = 1
      DO WHILE(INT(OpenAD_Symbol_178) .LE. INT(OpenAD_Symbol_177))
        OpenAD_Symbol_178 = INT(OpenAD_Symbol_178) + 1
      END DO
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(S(3)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(S(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(S(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T(3)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T(1)))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HUNDRED)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(XX))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(XX))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HUNDRED)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(METRIC)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(METRIC1)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(METRIC2)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THC_S)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THC_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THC_TOT)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(SSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(TSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(TSVEC)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HUNDRED)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(XX))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(XX))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HUNDRED)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(TSVEC)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(TSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(SSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THC_TOT)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THC_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THC_S)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(METRIC2)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(METRIC1)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(METRIC)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
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
      OpenAD_Symbol_188 = 0_w2f__i8
      DO L = 1, 6, 1
        TSVEC(INT(L)) = 0.0
        OpenAD_Symbol_188 = (INT(OpenAD_Symbol_188) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_188)
      OpenAD_Symbol_189 = 0_w2f__i8
      DO L = 1, 3, 1
        __value__(T(INT(L))) = (__value__(T(L)) + __value__(XX(L)))
        __value__(S(INT(L))) = (__value__(S(L)) + __value__(XX(L + 3)))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_191 = (L + 3)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_191)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_189 = (INT(OpenAD_Symbol_189) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_189)
      OpenAD_Symbol_190 = 0_w2f__i8
      DO L = 1, 3, 1
        __value__(TNEW(INT(L))) = __value__(T(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        __value__(SNEW(INT(L))) = __value__(S(L))
        __value__(TOLD(INT(L))) = __value__(T(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        __value__(SOLD(INT(L))) = __value__(S(L))
        __value__(TNOW(INT(L))) = __value__(T(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        __value__(SNOW(INT(L))) = __value__(S(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_190 = (INT(OpenAD_Symbol_190) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_190)
      __value__(UVEL) = UBAR
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UVEL))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_182)
      OpenAD_Symbol_183 = 1
      DO WHILE(INT(OpenAD_Symbol_183) .LE. INT(OpenAD_Symbol_182))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_335)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_336)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SNOW(INT(OpenAD_Symbol_335))),
     >  __deriv__(S(INT(OpenAD_Symbol_336))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SNOW(INT(OpenAD_Symbol_335))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_337)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_338)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_337))),
     >  __deriv__(T(INT(OpenAD_Symbol_338))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_337))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_339)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_340)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SOLD(INT(OpenAD_Symbol_339))),
     >  __deriv__(S(INT(OpenAD_Symbol_340))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SOLD(INT(OpenAD_Symbol_339))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_341)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_342)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TOLD(INT(OpenAD_Symbol_341))),
     >  __deriv__(T(INT(OpenAD_Symbol_342))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TOLD(INT(OpenAD_Symbol_341))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_343)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_344)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SNEW(INT(OpenAD_Symbol_343))),
     >  __deriv__(S(INT(OpenAD_Symbol_344))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SNEW(INT(OpenAD_Symbol_343))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_345)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_346)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TNEW(INT(OpenAD_Symbol_345))),
     >  __deriv__(T(INT(OpenAD_Symbol_346))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TNEW(INT(OpenAD_Symbol_345))))
        OpenAD_Symbol_183 = INT(OpenAD_Symbol_183) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_184)
      OpenAD_Symbol_185 = 1
      DO WHILE(INT(OpenAD_Symbol_185) .LE. INT(OpenAD_Symbol_184))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_327)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_328)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(S(INT(OpenAD_Symbol_327))),
     >  __deriv__(XX(INT(OpenAD_Symbol_328))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_329)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(S(INT(OpenAD_Symbol_329))),
     >  __deriv__(OpenAD_Symbol_124))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(S(INT(OpenAD_Symbol_329))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_330)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_331)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(T(INT(OpenAD_Symbol_330))),
     >  __deriv__(XX(INT(OpenAD_Symbol_331))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_332)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(T(INT(OpenAD_Symbol_332))),
     >  __deriv__(OpenAD_Symbol_123))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(T(INT(OpenAD_Symbol_332))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_333)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_124), __deriv__(S(INT(
     > OpenAD_Symbol_333))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_124))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_334)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_123), __deriv__(T(INT(
     > OpenAD_Symbol_334))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_123))
        OpenAD_Symbol_185 = INT(OpenAD_Symbol_185) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_186)
      OpenAD_Symbol_187 = 1
      DO WHILE(INT(OpenAD_Symbol_187) .LE. INT(OpenAD_Symbol_186))
        OpenAD_Symbol_187 = INT(OpenAD_Symbol_187) + 1
      END DO
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(S(3)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(S(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(S(1)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T(3)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(T(1)))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_ini_params()
      use w2f__types
      use all_globals_mod
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_192
      INTEGER(w2f__i8) OpenAD_Symbol_193
      INTEGER(w2f__i8) OpenAD_Symbol_194
      INTEGER(w2f__i8) OpenAD_Symbol_195
      INTEGER(w2f__i8) OpenAD_Symbol_196
      INTEGER(w2f__i8) OpenAD_Symbol_197
      INTEGER(w2f__i8) OpenAD_Symbol_198
      INTEGER(w2f__i8) OpenAD_Symbol_199
      INTEGER(w2f__i8) OpenAD_Symbol_200
      INTEGER(w2f__i8) OpenAD_Symbol_201
      INTEGER(w2f__i8) OpenAD_Symbol_202
      INTEGER(w2f__i8) OpenAD_Symbol_203
      INTEGER(w2f__i8) OpenAD_Symbol_204
      INTEGER(w2f__i8) OpenAD_Symbol_205
      INTEGER(w2f__i8) OpenAD_Symbol_206
      INTEGER(w2f__i8) OpenAD_Symbol_207
      INTEGER(w2f__i8) OpenAD_Symbol_208
      INTEGER(w2f__i8) OpenAD_Symbol_209
      INTEGER(w2f__i8) OpenAD_Symbol_210
      INTEGER(w2f__i8) OpenAD_Symbol_211
      INTEGER(w2f__i8) OpenAD_Symbol_212
      INTEGER(w2f__i8) OpenAD_Symbol_213
      INTEGER(w2f__i8) OpenAD_Symbol_214
      INTEGER(w2f__i8) OpenAD_Symbol_215
      INTEGER(w2f__i8) OpenAD_Symbol_216
      INTEGER(w2f__i8) OpenAD_Symbol_217
      INTEGER(w2f__i8) OpenAD_Symbol_218
      INTEGER(w2f__i8) OpenAD_Symbol_219
      INTEGER(w2f__i8) OpenAD_Symbol_220
      INTEGER(w2f__i8) OpenAD_Symbol_221
      INTEGER(w2f__i8) OpenAD_Symbol_222
      INTEGER(w2f__i8) OpenAD_Symbol_223
      INTEGER(w2f__i8) OpenAD_Symbol_224
      INTEGER(w2f__i8) OpenAD_Symbol_225
      INTEGER(w2f__i8) OpenAD_Symbol_226
      INTEGER(w2f__i8) OpenAD_Symbol_227
      INTEGER(w2f__i8) OpenAD_Symbol_228
      INTEGER(w2f__i8) OpenAD_Symbol_229
      INTEGER(w2f__i8) OpenAD_Symbol_230
      INTEGER(w2f__i8) OpenAD_Symbol_231
      INTEGER(w2f__i8) OpenAD_Symbol_232
      INTEGER(w2f__i8) OpenAD_Symbol_233
      INTEGER(w2f__i8) OpenAD_Symbol_234
      INTEGER(w2f__i8) OpenAD_Symbol_235
      INTEGER(w2f__i8) OpenAD_Symbol_236
      INTEGER(w2f__i8) OpenAD_Symbol_237
      INTEGER(w2f__i8) OpenAD_Symbol_238
      INTEGER(w2f__i8) OpenAD_Symbol_239
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
C     $OpenAD$ BEGIN REPLACEMENT 1
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
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
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
      OpenAD_Symbol_207 = 0_w2f__i8
      DO L = 1, 6, 1
        R(INT(L)) = ((R(L) * U0) / SV)
        OpenAD_Symbol_207 = (INT(OpenAD_Symbol_207) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_207)
      OpenAD_Symbol_208 = 0_w2f__i8
      DO L = 1, 6, 1
        IF(L .LE. 3) THEN
          PROJ_T(INT(L)) = 1.0D00
          PROJ_S(INT(L)) = 0.0D00
          OpenAD_Symbol_209 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_209)
        ELSE
          PROJ_T(INT(L)) = 0.0D00
          PROJ_S(INT(L)) = 1.0D00
          OpenAD_Symbol_210 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_210)
        ENDIF
        OpenAD_Symbol_208 = (INT(OpenAD_Symbol_208) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_208)
      OpenAD_Symbol_211 = 0_w2f__i8
      DO L = 1, 6, 1
        R_T(INT(L)) = (PROJ_T(L) * R(L))
        R_S(INT(L)) = (PROJ_S(L) * R(L))
        OpenAD_Symbol_211 = (INT(OpenAD_Symbol_211) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_211)
      R1(1) = 1.0D00
      R1(2) = (-1.0D00)
      R1(3) = 0.0D00
      R1(4) = 0.0D00
      R1(5) = 0.0D00
      R1(6) = 0.0D00
      OpenAD_Symbol_212 = 0_w2f__i8
      DO J = 1, 6, 1
        OpenAD_Symbol_213 = 0_w2f__i8
        DO I = 1, 6, 1
          X(INT(I), INT(J)) = (R(I) * R(J))
          OpenAD_Symbol_213 = (INT(OpenAD_Symbol_213) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_213)
        OpenAD_Symbol_212 = (INT(OpenAD_Symbol_212) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_212)
      EPSILON_REGULARIZE = 1.00000000000000002092D-08
      OpenAD_Symbol_214 = 0_w2f__i8
      DO J = 1, 6, 1
        OpenAD_Symbol_215 = 0_w2f__i8
        DO I = 1, 6, 1
          X(INT(I), INT(J)) = (X(I, J) + EPSILON_REGULARIZE)
          OpenAD_Symbol_215 = (INT(OpenAD_Symbol_215) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_215)
        OpenAD_Symbol_214 = (INT(OpenAD_Symbol_214) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_214)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_192)
      OpenAD_Symbol_193 = 1
      DO WHILE(INT(OpenAD_Symbol_193) .LE. INT(OpenAD_Symbol_192))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_194)
        OpenAD_Symbol_195 = 1
        DO WHILE(INT(OpenAD_Symbol_195) .LE. INT(OpenAD_Symbol_194))
          OpenAD_Symbol_195 = INT(OpenAD_Symbol_195) + 1
        END DO
        OpenAD_Symbol_193 = INT(OpenAD_Symbol_193) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_196)
      OpenAD_Symbol_197 = 1
      DO WHILE(INT(OpenAD_Symbol_197) .LE. INT(OpenAD_Symbol_196))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_198)
        OpenAD_Symbol_199 = 1
        DO WHILE(INT(OpenAD_Symbol_199) .LE. INT(OpenAD_Symbol_198))
          OpenAD_Symbol_199 = INT(OpenAD_Symbol_199) + 1
        END DO
        OpenAD_Symbol_197 = INT(OpenAD_Symbol_197) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_200)
      OpenAD_Symbol_201 = 1
      DO WHILE(INT(OpenAD_Symbol_201) .LE. INT(OpenAD_Symbol_200))
        OpenAD_Symbol_201 = INT(OpenAD_Symbol_201) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_202)
      OpenAD_Symbol_203 = 1
      DO WHILE(INT(OpenAD_Symbol_203) .LE. INT(OpenAD_Symbol_202))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_204)
        IF(OpenAD_Symbol_204 .ne. 0) THEN
        ENDIF
        OpenAD_Symbol_203 = INT(OpenAD_Symbol_203) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_205)
      OpenAD_Symbol_206 = 1
      DO WHILE(INT(OpenAD_Symbol_206) .LE. INT(OpenAD_Symbol_205))
        OpenAD_Symbol_206 = INT(OpenAD_Symbol_206) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BWIDTH)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DAY)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DAYS_PER_50M_MIXED_LAYER)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(EPSILON_REGULARIZE)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(INTEGRATION_TIME)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THOUSAND)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(BHEIGHT)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(BLENGTH)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(PROJ_S)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(PROJ_T)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(R)
C     $OpenAD$ INLINE cp_arg_store_real_matrix(subst)
      CALL cp_arg_store_real_matrix(X)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_matrix(subst)
      CALL cp_arg_restore_real_matrix(X)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(R)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(PROJ_T)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(PROJ_S)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(BLENGTH)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(BHEIGHT)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THOUSAND)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(INTEGRATION_TIME)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(EPSILON_REGULARIZE)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DAYS_PER_50M_MIXED_LAYER)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DAY)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BWIDTH)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ALPHA)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BWIDTH)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DAY)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DAYS_PER_50M_MIXED_LAYER)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(EPSILON_IC)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(EPSILON_REGULARIZE)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(FDEPS)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(GAMMA_S)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(GAMMA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HUNDRED)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(INTEGRATION_TIME)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(NOISE_CORRELATION_TIME)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(N_MAX)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THOUSAND)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_store_bool_scalar(subst)
      CALL cp_arg_store_bool_scalar(VERBMODE)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(BHEIGHT)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(BLENGTH)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(PROJ_S)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(PROJ_T)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(R)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(R1)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(R_S)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(R_T)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_store_real_matrix(subst)
      CALL cp_arg_store_real_matrix(X)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(Y)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BWIDTH)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DAY)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DAYS_PER_50M_MIXED_LAYER)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(EPSILON_REGULARIZE)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(INTEGRATION_TIME)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THOUSAND)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(BHEIGHT)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(BLENGTH)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(PROJ_S)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(PROJ_T)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(R)
C     $OpenAD$ INLINE cp_arg_store_real_matrix(subst)
      CALL cp_arg_store_real_matrix(X)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_matrix(subst)
      CALL cp_arg_restore_real_matrix(X)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(R)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(PROJ_T)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(PROJ_S)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(BLENGTH)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(BHEIGHT)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THOUSAND)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(INTEGRATION_TIME)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(EPSILON_REGULARIZE)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DAYS_PER_50M_MIXED_LAYER)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DAY)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BWIDTH)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(Y)
C     $OpenAD$ INLINE cp_arg_restore_real_matrix(subst)
      CALL cp_arg_restore_real_matrix(X)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(R_T)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(R_S)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(R1)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(R)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(PROJ_T)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(PROJ_S)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(BLENGTH)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(BHEIGHT)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_restore_bool_scalar(subst)
      CALL cp_arg_restore_bool_scalar(VERBMODE)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THOUSAND)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(N_MAX)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(NOISE_CORRELATION_TIME)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(INTEGRATION_TIME)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HUNDRED)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(GAMMA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(GAMMA_S)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(FDEPS)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(EPSILON_REGULARIZE)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(EPSILON_IC)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DAYS_PER_50M_MIXED_LAYER)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DAY)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BWIDTH)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ALPHA)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
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
      OpenAD_Symbol_231 = 0_w2f__i8
      DO L = 1, 6, 1
        R(INT(L)) = ((R(L) * U0) / SV)
        OpenAD_Symbol_231 = (INT(OpenAD_Symbol_231) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_231)
      OpenAD_Symbol_232 = 0_w2f__i8
      DO L = 1, 6, 1
        IF(L .LE. 3) THEN
          PROJ_T(INT(L)) = 1.0D00
          PROJ_S(INT(L)) = 0.0D00
          OpenAD_Symbol_233 = 1_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_233)
        ELSE
          PROJ_T(INT(L)) = 0.0D00
          PROJ_S(INT(L)) = 1.0D00
          OpenAD_Symbol_234 = 0_w2f__i8
C         $OpenAD$ INLINE push_i(subst)
          CALL push_i(OpenAD_Symbol_234)
        ENDIF
        OpenAD_Symbol_232 = (INT(OpenAD_Symbol_232) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_232)
      OpenAD_Symbol_235 = 0_w2f__i8
      DO L = 1, 6, 1
        R_T(INT(L)) = (PROJ_T(L) * R(L))
        R_S(INT(L)) = (PROJ_S(L) * R(L))
        OpenAD_Symbol_235 = (INT(OpenAD_Symbol_235) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_235)
      R1(1) = 1.0D00
      R1(2) = (-1.0D00)
      R1(3) = 0.0D00
      R1(4) = 0.0D00
      R1(5) = 0.0D00
      R1(6) = 0.0D00
      OpenAD_Symbol_236 = 0_w2f__i8
      DO J = 1, 6, 1
        OpenAD_Symbol_237 = 0_w2f__i8
        DO I = 1, 6, 1
          X(INT(I), INT(J)) = (R(I) * R(J))
          OpenAD_Symbol_237 = (INT(OpenAD_Symbol_237) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_237)
        OpenAD_Symbol_236 = (INT(OpenAD_Symbol_236) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_236)
      EPSILON_REGULARIZE = 1.00000000000000002092D-08
      OpenAD_Symbol_238 = 0_w2f__i8
      DO J = 1, 6, 1
        OpenAD_Symbol_239 = 0_w2f__i8
        DO I = 1, 6, 1
          X(INT(I), INT(J)) = (X(I, J) + EPSILON_REGULARIZE)
          OpenAD_Symbol_239 = (INT(OpenAD_Symbol_239) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_239)
        OpenAD_Symbol_238 = (INT(OpenAD_Symbol_238) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_238)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_216)
      OpenAD_Symbol_217 = 1
      DO WHILE(INT(OpenAD_Symbol_217) .LE. INT(OpenAD_Symbol_216))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_218)
        OpenAD_Symbol_219 = 1
        DO WHILE(INT(OpenAD_Symbol_219) .LE. INT(OpenAD_Symbol_218))
          OpenAD_Symbol_219 = INT(OpenAD_Symbol_219) + 1
        END DO
        OpenAD_Symbol_217 = INT(OpenAD_Symbol_217) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_220)
      OpenAD_Symbol_221 = 1
      DO WHILE(INT(OpenAD_Symbol_221) .LE. INT(OpenAD_Symbol_220))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_222)
        OpenAD_Symbol_223 = 1
        DO WHILE(INT(OpenAD_Symbol_223) .LE. INT(OpenAD_Symbol_222))
          OpenAD_Symbol_223 = INT(OpenAD_Symbol_223) + 1
        END DO
        OpenAD_Symbol_221 = INT(OpenAD_Symbol_221) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_224)
      OpenAD_Symbol_225 = 1
      DO WHILE(INT(OpenAD_Symbol_225) .LE. INT(OpenAD_Symbol_224))
        OpenAD_Symbol_225 = INT(OpenAD_Symbol_225) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_226)
      OpenAD_Symbol_227 = 1
      DO WHILE(INT(OpenAD_Symbol_227) .LE. INT(OpenAD_Symbol_226))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_228)
        IF(OpenAD_Symbol_228 .ne. 0) THEN
        ENDIF
        OpenAD_Symbol_227 = INT(OpenAD_Symbol_227) + 1
      END DO
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_229)
      OpenAD_Symbol_230 = 1
      DO WHILE(INT(OpenAD_Symbol_230) .LE. INT(OpenAD_Symbol_229))
        OpenAD_Symbol_230 = INT(OpenAD_Symbol_230) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_model_body()
      use w2f__types
      use all_globals_mod
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_240
      INTEGER(w2f__i8) OpenAD_Symbol_241
      INTEGER(w2f__i8) OpenAD_Symbol_242
      INTEGER(w2f__i8) OpenAD_Symbol_243
      INTEGER(w2f__i8) OpenAD_Symbol_244
      INTEGER(w2f__i8) OpenAD_Symbol_245
      INTEGER(w2f__i8) OpenAD_Symbol_246
      INTEGER(w2f__i8) OpenAD_Symbol_247
      INTEGER(w2f__i8) OpenAD_Symbol_248
      INTEGER(w2f__i8) OpenAD_Symbol_249
      INTEGER(w2f__i8) OpenAD_Symbol_250
      INTEGER(w2f__i8) OpenAD_Symbol_251
      INTEGER(w2f__i8) OpenAD_Symbol_252
      INTEGER(w2f__i8) OpenAD_Symbol_253
      INTEGER(w2f__i8) OpenAD_Symbol_254
      INTEGER(w2f__i8) OpenAD_Symbol_255
      INTEGER(w2f__i8) OpenAD_Symbol_256
      INTEGER(w2f__i8) OpenAD_Symbol_257
      INTEGER(w2f__i8) OpenAD_Symbol_258
      INTEGER(w2f__i8) OpenAD_Symbol_259
      INTEGER(w2f__i8) OpenAD_Symbol_260
      INTEGER(w2f__i8) OpenAD_Symbol_261
      INTEGER(w2f__i8) OpenAD_Symbol_262
      INTEGER(w2f__i8) OpenAD_Symbol_263
      INTEGER(w2f__i8) OpenAD_Symbol_264
      INTEGER(w2f__i8) OpenAD_Symbol_265
      INTEGER(w2f__i8) OpenAD_Symbol_266
      INTEGER(w2f__i8) OpenAD_Symbol_267
      INTEGER(w2f__i8) OpenAD_Symbol_268
      INTEGER(w2f__i8) OpenAD_Symbol_269
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
C     $OpenAD$ BEGIN REPLACEMENT 1
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
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      CALL box_ini_fields()
      MAXLEV2 = ((N_MAX / 73) + 1)
      IF(N_MAX .GT. 3650) THEN
        WRITE(*, *) 'NEED TO SET nlev1*nlev2 >= n_max '
        OpenAD_Symbol_253 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_253)
      ELSE
        OpenAD_Symbol_247 = 0_w2f__i8
        DO ILEV2 = 1, 50, 1
          IF(ILEV2 .LE. MAXLEV2) THEN
            OpenAD_Symbol_248 = 0_w2f__i8
            DO ILEV1 = 1, 73, 1
              ILOOP = (ILEV1 + ILEV2 * 73 +(-73))
              IF(ILOOP .LE. N_MAX) THEN
                CALL box_forward(ILEV1)
                OpenAD_Symbol_249 = 1_w2f__i8
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(OpenAD_Symbol_249)
              ELSE
                OpenAD_Symbol_250 = 0_w2f__i8
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(OpenAD_Symbol_250)
              ENDIF
              OpenAD_Symbol_248 = (INT(OpenAD_Symbol_248) + INT(
     > 1_w2f__i8))
            END DO
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_248)
            OpenAD_Symbol_252 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_252)
          ELSE
            OpenAD_Symbol_251 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_251)
          ENDIF
          OpenAD_Symbol_247 = (INT(OpenAD_Symbol_247) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_247)
        CALL box_final_state()
        OpenAD_Symbol_254 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_254)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_240)
      IF(OpenAD_Symbol_240 .ne. 0) THEN
      ELSE
        CALL box_final_state()
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_241)
        OpenAD_Symbol_242 = 1
        DO WHILE(INT(OpenAD_Symbol_242) .LE. INT(OpenAD_Symbol_241))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_243)
          IF(OpenAD_Symbol_243 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_244)
            OpenAD_Symbol_245 = 1
            DO WHILE(INT(OpenAD_Symbol_245) .LE. INT(OpenAD_Symbol_244)
     > )
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_246)
              IF(OpenAD_Symbol_246 .ne. 0) THEN
                CALL box_forward(ILEV1)
              ENDIF
              OpenAD_Symbol_245 = INT(OpenAD_Symbol_245) + 1
            END DO
          ENDIF
          OpenAD_Symbol_242 = INT(OpenAD_Symbol_242) + 1
        END DO
      ENDIF
      CALL box_ini_fields()
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(GAMMA_S)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(GAMMA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(HUNDRED)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(N_MAX)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(RHO))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(SSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(TSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(XX))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(XX))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(TSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(SSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(RHO))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(AREA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(YEAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(SV)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(N_MAX)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(HUNDRED)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(GAMMA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(GAMMA_S)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ALPHA)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(METRIC)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(METRIC1)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(METRIC2)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THC_S)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THC_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(THC_TOT)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(RHO))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(SSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(TSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(TSVEC)
C     $OpenAD$ INLINE cp_arg_store_integer_scalar(subst)
      CALL cp_arg_store_integer_scalar(N_MAX)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_integer_scalar(subst)
      CALL cp_arg_restore_integer_scalar(N_MAX)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(TSVEC)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(TSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(T))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(SSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(S))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(RHO))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(NULLFORCE)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(FW)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(UVEL))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(UBAR)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THC_TOT)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THC_T)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(THC_S)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(METRIC2)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(METRIC1)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(METRIC)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      CALL box_ini_fields()
      MAXLEV2 = ((N_MAX / 73) + 1)
      IF(N_MAX .GT. 3650) THEN
        WRITE(*, *) 'NEED TO SET nlev1*nlev2 >= n_max '
        OpenAD_Symbol_268 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_268)
      ELSE
        OpenAD_Symbol_262 = 0_w2f__i8
        DO ILEV2 = 1, 50, 1
          IF(ILEV2 .LE. MAXLEV2) THEN
            OpenAD_Symbol_263 = 0_w2f__i8
            DO ILEV1 = 1, 73, 1
              ILOOP = (ILEV1 + ILEV2 * 73 +(-73))
              IF(ILOOP .LE. N_MAX) THEN
                CALL box_forward(ILEV1)
                OpenAD_Symbol_264 = 1_w2f__i8
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(OpenAD_Symbol_264)
              ELSE
                OpenAD_Symbol_265 = 0_w2f__i8
C               $OpenAD$ INLINE push_i(subst)
                CALL push_i(OpenAD_Symbol_265)
              ENDIF
              OpenAD_Symbol_263 = (INT(OpenAD_Symbol_263) + INT(
     > 1_w2f__i8))
            END DO
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_263)
            OpenAD_Symbol_267 = 1_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_267)
          ELSE
            OpenAD_Symbol_266 = 0_w2f__i8
C           $OpenAD$ INLINE push_i(subst)
            CALL push_i(OpenAD_Symbol_266)
          ENDIF
          OpenAD_Symbol_262 = (INT(OpenAD_Symbol_262) + INT(1_w2f__i8))
        END DO
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_262)
        CALL box_final_state()
        OpenAD_Symbol_269 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_269)
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_255)
      IF(OpenAD_Symbol_255 .ne. 0) THEN
      ELSE
        CALL box_final_state()
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_256)
        OpenAD_Symbol_257 = 1
        DO WHILE(INT(OpenAD_Symbol_257) .LE. INT(OpenAD_Symbol_256))
C         $OpenAD$ INLINE pop_i(subst)
          CALL pop_i(OpenAD_Symbol_258)
          IF(OpenAD_Symbol_258 .ne. 0) THEN
C           $OpenAD$ INLINE pop_i(subst)
            CALL pop_i(OpenAD_Symbol_259)
            OpenAD_Symbol_260 = 1
            DO WHILE(INT(OpenAD_Symbol_260) .LE. INT(OpenAD_Symbol_259)
     > )
C             $OpenAD$ INLINE pop_i(subst)
              CALL pop_i(OpenAD_Symbol_261)
              IF(OpenAD_Symbol_261 .ne. 0) THEN
                CALL box_forward(ILEV1)
              ENDIF
              OpenAD_Symbol_260 = INT(OpenAD_Symbol_260) + 1
            END DO
          ENDIF
          OpenAD_Symbol_257 = INT(OpenAD_Symbol_257) + 1
        END DO
      ENDIF
      CALL box_ini_fields()
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_density(TLOC, SLOC, RHOLOC)
      use w2f__types
      use all_globals_mod
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_137
      INTEGER(w2f__i8) OpenAD_Symbol_138
      INTEGER(w2f__i8) OpenAD_Symbol_139
      INTEGER(w2f__i8) OpenAD_Symbol_140
      INTEGER(w2f__i8) OpenAD_Symbol_141
      INTEGER(w2f__i8) OpenAD_Symbol_142
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
      INTEGER(w2f__i8) OpenAD_Symbol_277
      INTEGER(w2f__i8) OpenAD_Symbol_278
      REAL(w2f__8) OpenAD_Symbol_279
      INTEGER(w2f__i8) OpenAD_Symbol_280
      INTEGER(w2f__i8) OpenAD_Symbol_281
      REAL(w2f__8) OpenAD_Symbol_282
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      DO L = 1, 3, 1
        __value__(RHOLOC(INT(L))) = (__value__(SLOC(L)) * BETA -
     >  __value__(TLOC(L)) * ALPHA)
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_139 = 0_w2f__i8
      DO L = 1, 3, 1
        __value__(RHOLOC(INT(L))) = (__value__(SLOC(L)) * BETA -
     >  __value__(TLOC(L)) * ALPHA)
        OpenAD_Symbol_0 = BETA
        OpenAD_Symbol_2 = ALPHA
        OpenAD_Symbol_88 = (OpenAD_Symbol_2 * INT((-1_w2f__i8)))
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_0)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_88)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_139 = (INT(OpenAD_Symbol_139) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_139)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_137)
      OpenAD_Symbol_138 = 1
      DO WHILE(INT(OpenAD_Symbol_138) .LE. INT(OpenAD_Symbol_137))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_277)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_278)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_279)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_279, __deriv__(RHOLOC(INT(
     > OpenAD_Symbol_277))), __deriv__(TLOC(INT(OpenAD_Symbol_278))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_280)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_281)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_282)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_282, __deriv__(RHOLOC(INT(
     > OpenAD_Symbol_280))), __deriv__(SLOC(INT(OpenAD_Symbol_281))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(RHOLOC(INT(OpenAD_Symbol_280))))
        OpenAD_Symbol_138 = INT(OpenAD_Symbol_138) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TLOC))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SLOC))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SLOC))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TLOC))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ALPHA)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(RHOLOC))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TLOC))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SLOC))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SLOC))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TLOC))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(BETA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ALPHA)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(RHOLOC))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_142 = 0_w2f__i8
      DO L = 1, 3, 1
        __value__(RHOLOC(INT(L))) = (__value__(SLOC(L)) * BETA -
     >  __value__(TLOC(L)) * ALPHA)
        OpenAD_Symbol_0 = BETA
        OpenAD_Symbol_2 = ALPHA
        OpenAD_Symbol_88 = (OpenAD_Symbol_2 * INT((-1_w2f__i8)))
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_0)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_88)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_142 = (INT(OpenAD_Symbol_142) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_142)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_140)
      OpenAD_Symbol_141 = 1
      DO WHILE(INT(OpenAD_Symbol_141) .LE. INT(OpenAD_Symbol_140))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_277)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_278)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_279)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_279, __deriv__(RHOLOC(INT(
     > OpenAD_Symbol_277))), __deriv__(TLOC(INT(OpenAD_Symbol_278))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_280)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_281)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_282)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_282, __deriv__(RHOLOC(INT(
     > OpenAD_Symbol_280))), __deriv__(SLOC(INT(OpenAD_Symbol_281))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(RHOLOC(INT(OpenAD_Symbol_280))))
        OpenAD_Symbol_141 = INT(OpenAD_Symbol_141) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_transport(RHOLOC, UVELLOC)
      use w2f__types
      use all_globals_mod
      use all_globals_mod
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
      REAL(w2f__8) OpenAD_Symbol_283
      REAL(w2f__8) OpenAD_Symbol_284
      REAL(w2f__8) OpenAD_Symbol_285
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      __value__(UVELLOC) = (-(U0 *(__value__(RHOLOC(1)) * DELTA +
     >  __value__(RHOLOC(3)) *(1.0D00 - DELTA) - __value__(RHOLOC(2))))
     > )
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_9 = (1.0D00 - DELTA)
      OpenAD_Symbol_4 = (__value__(RHOLOC(1)) * DELTA + __value__(
     > RHOLOC(3)) * OpenAD_Symbol_9 - __value__(RHOLOC(2)))
      __value__(UVELLOC) = (-(U0 * OpenAD_Symbol_4))
      OpenAD_Symbol_7 = DELTA
      OpenAD_Symbol_10 = OpenAD_Symbol_9
      OpenAD_Symbol_6 = U0
      OpenAD_Symbol_89 = (OpenAD_Symbol_6 * INT((-1_w2f__i8)))
      OpenAD_Symbol_90 = (INT((-1_w2f__i8)) * OpenAD_Symbol_89)
      OpenAD_Symbol_91 = (OpenAD_Symbol_10 * OpenAD_Symbol_89)
      OpenAD_Symbol_92 = (OpenAD_Symbol_7 * OpenAD_Symbol_89)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_90)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_91)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_92)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_283)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_283, __deriv__(UVELLOC), __deriv__(
     > RHOLOC(1)))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_284)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_284, __deriv__(UVELLOC), __deriv__(
     > RHOLOC(3)))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_285)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_285, __deriv__(UVELLOC), __deriv__(
     > RHOLOC(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UVELLOC))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(RHOLOC))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(RHOLOC))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(UVELLOC))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(RHOLOC))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(RHOLOC))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(U0)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(UVELLOC))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_9 = (1.0D00 - DELTA)
      OpenAD_Symbol_4 = (__value__(RHOLOC(1)) * DELTA + __value__(
     > RHOLOC(3)) * OpenAD_Symbol_9 - __value__(RHOLOC(2)))
      __value__(UVELLOC) = (-(U0 * OpenAD_Symbol_4))
      OpenAD_Symbol_7 = DELTA
      OpenAD_Symbol_10 = OpenAD_Symbol_9
      OpenAD_Symbol_6 = U0
      OpenAD_Symbol_89 = (OpenAD_Symbol_6 * INT((-1_w2f__i8)))
      OpenAD_Symbol_90 = (INT((-1_w2f__i8)) * OpenAD_Symbol_89)
      OpenAD_Symbol_91 = (OpenAD_Symbol_10 * OpenAD_Symbol_89)
      OpenAD_Symbol_92 = (OpenAD_Symbol_7 * OpenAD_Symbol_89)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_90)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_91)
C     $OpenAD$ INLINE push(subst)
      CALL push(OpenAD_Symbol_92)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_283)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_283, __deriv__(UVELLOC), __deriv__(
     > RHOLOC(1)))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_284)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_284, __deriv__(UVELLOC), __deriv__(
     > RHOLOC(3)))
C     $OpenAD$ INLINE Pop(subst)
      CALL Pop(OpenAD_Symbol_285)
C     $OpenAD$ INLINE Saxpy(subst,subst,subst)
      CALL Saxpy(OpenAD_Symbol_285, __deriv__(UVELLOC), __deriv__(
     > RHOLOC(2)))
C     $OpenAD$ INLINE ZeroDeriv(subst)
      CALL ZeroDeriv(__deriv__(UVELLOC))
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_robert_filter(FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
      use all_globals_mod
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_118
      TYPE (OpenADTy_active) OpenAD_Symbol_119
      TYPE (OpenADTy_active) OpenAD_Symbol_120
      INTEGER(w2f__i8) OpenAD_Symbol_149
      INTEGER(w2f__i8) OpenAD_Symbol_150
      INTEGER(w2f__i8) OpenAD_Symbol_151
      INTEGER(w2f__i8) OpenAD_Symbol_152
      INTEGER(w2f__i8) OpenAD_Symbol_153
      INTEGER(w2f__i8) OpenAD_Symbol_154
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
      INTEGER(w2f__i8) OpenAD_Symbol_308
      INTEGER(w2f__i8) OpenAD_Symbol_309
      REAL(w2f__8) OpenAD_Symbol_310
      INTEGER(w2f__i8) OpenAD_Symbol_311
      INTEGER(w2f__i8) OpenAD_Symbol_312
      REAL(w2f__8) OpenAD_Symbol_313
      INTEGER(w2f__i8) OpenAD_Symbol_314
      INTEGER(w2f__i8) OpenAD_Symbol_315
      REAL(w2f__8) OpenAD_Symbol_316
      INTEGER(w2f__i8) OpenAD_Symbol_317
      INTEGER(w2f__i8) OpenAD_Symbol_318
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      DO L = 1, 3, 1
        __value__(FLDNOW(INT(L))) = (__value__(FLDNOW(L)) +
     >  ROBERT_FILTER_COEFF *(__value__(FLDOLD(L)) + __value__(FLDNEW(L
     > )) - __value__(FLDNOW(L)) * 2.0D00))
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_151 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_Symbol_80 = (__value__(FLDOLD(L)) + __value__(FLDNEW(L))
     >  - __value__(FLDNOW(L)) * 2.0D00)
        OpenAD_Symbol_84 = (__value__(FLDNOW(L)) + ROBERT_FILTER_COEFF
     >  * OpenAD_Symbol_80)
        OpenAD_Symbol_82 = ROBERT_FILTER_COEFF
        __value__(FLDNOW(INT(L))) = OpenAD_Symbol_84
        OpenAD_Symbol_118 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_82)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_82)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_82)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_118)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_151 = (INT(OpenAD_Symbol_151) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_151)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_149)
      OpenAD_Symbol_150 = 1
      DO WHILE(INT(OpenAD_Symbol_150) .LE. INT(OpenAD_Symbol_149))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_308)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(FLDNOW(INT(OpenAD_Symbol_308)))
     > , __deriv__(OpenAD_Symbol_119))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_309)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_310)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_310, __deriv__(FLDNOW(INT(
     > OpenAD_Symbol_309))), __deriv__(OpenAD_Symbol_120))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_311)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_312)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_313)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_313, __deriv__(FLDNOW(INT(
     > OpenAD_Symbol_311))), __deriv__(FLDNEW(INT(OpenAD_Symbol_312))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_314)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_315)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_316)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_316, __deriv__(FLDNOW(INT(
     > OpenAD_Symbol_314))), __deriv__(FLDOLD(INT(OpenAD_Symbol_315))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FLDNOW(INT(OpenAD_Symbol_314))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_317)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_120), __deriv__(FLDNOW(
     > INT(OpenAD_Symbol_317))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_120))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_318)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_119), __deriv__(FLDNOW(
     > INT(OpenAD_Symbol_318))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_119))
        OpenAD_Symbol_150 = INT(OpenAD_Symbol_150) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(ROBERT_FILTER_COEFF)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_154 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_Symbol_80 = (__value__(FLDOLD(L)) + __value__(FLDNEW(L))
     >  - __value__(FLDNOW(L)) * 2.0D00)
        OpenAD_Symbol_84 = (__value__(FLDNOW(L)) + ROBERT_FILTER_COEFF
     >  * OpenAD_Symbol_80)
        OpenAD_Symbol_82 = ROBERT_FILTER_COEFF
        __value__(FLDNOW(INT(L))) = OpenAD_Symbol_84
        OpenAD_Symbol_118 = (2.0D00 * INT((-1_w2f__i8)) *
     >  OpenAD_Symbol_82)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_82)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_82)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_118)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_154 = (INT(OpenAD_Symbol_154) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_154)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_152)
      OpenAD_Symbol_153 = 1
      DO WHILE(INT(OpenAD_Symbol_153) .LE. INT(OpenAD_Symbol_152))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_308)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(FLDNOW(INT(OpenAD_Symbol_308)))
     > , __deriv__(OpenAD_Symbol_119))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_309)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_310)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_310, __deriv__(FLDNOW(INT(
     > OpenAD_Symbol_309))), __deriv__(OpenAD_Symbol_120))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_311)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_312)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_313)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_313, __deriv__(FLDNOW(INT(
     > OpenAD_Symbol_311))), __deriv__(FLDNEW(INT(OpenAD_Symbol_312))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_314)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_315)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_316)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_316, __deriv__(FLDNOW(INT(
     > OpenAD_Symbol_314))), __deriv__(FLDOLD(INT(OpenAD_Symbol_315))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FLDNOW(INT(OpenAD_Symbol_314))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_317)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_120), __deriv__(FLDNOW(
     > INT(OpenAD_Symbol_317))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_120))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_318)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_119), __deriv__(FLDNOW(
     > INT(OpenAD_Symbol_318))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_119))
        OpenAD_Symbol_153 = INT(OpenAD_Symbol_153) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_cycle_fields()
      use w2f__types
      use all_globals_mod
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_121
      TYPE (OpenADTy_active) OpenAD_Symbol_122
      INTEGER(w2f__i8) OpenAD_Symbol_155
      INTEGER(w2f__i8) OpenAD_Symbol_156
      INTEGER(w2f__i8) OpenAD_Symbol_157
      INTEGER(w2f__i8) OpenAD_Symbol_158
      INTEGER(w2f__i8) OpenAD_Symbol_159
      INTEGER(w2f__i8) OpenAD_Symbol_160
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
      INTEGER(w2f__i8) OpenAD_Symbol_319
      INTEGER(w2f__i8) OpenAD_Symbol_320
      INTEGER(w2f__i8) OpenAD_Symbol_321
      INTEGER(w2f__i8) OpenAD_Symbol_322
      INTEGER(w2f__i8) OpenAD_Symbol_323
      INTEGER(w2f__i8) OpenAD_Symbol_324
      INTEGER(w2f__i8) OpenAD_Symbol_325
      INTEGER(w2f__i8) OpenAD_Symbol_326
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      DO L = 1, 3, 1
        __value__(TOLD(INT(L))) = __value__(TNOW(L))
        __value__(TNOW(INT(L))) = __value__(TNEW(L))
        __value__(SOLD(INT(L))) = __value__(SNOW(L))
        __value__(SNOW(INT(L))) = __value__(SNEW(L))
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_157 = 0_w2f__i8
      DO L = 1, 3, 1
        __value__(TOLD(INT(L))) = __value__(TNOW(L))
        __value__(TNOW(INT(L))) = __value__(TNEW(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        __value__(SOLD(INT(L))) = __value__(SNOW(L))
        __value__(SNOW(INT(L))) = __value__(SNEW(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_157 = (INT(OpenAD_Symbol_157) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_157)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_155)
      OpenAD_Symbol_156 = 1
      DO WHILE(INT(OpenAD_Symbol_156) .LE. INT(OpenAD_Symbol_155))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_319)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_320)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SNOW(INT(OpenAD_Symbol_319))),
     >  __deriv__(SNEW(INT(OpenAD_Symbol_320))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SNOW(INT(OpenAD_Symbol_319))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_321)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SOLD(INT(OpenAD_Symbol_321))),
     >  __deriv__(OpenAD_Symbol_122))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SOLD(INT(OpenAD_Symbol_321))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_322)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_122), __deriv__(SNOW(INT(
     > OpenAD_Symbol_322))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_122))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_323)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_324)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_323))),
     >  __deriv__(TNEW(INT(OpenAD_Symbol_324))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_323))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_325)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TOLD(INT(OpenAD_Symbol_325))),
     >  __deriv__(OpenAD_Symbol_121))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TOLD(INT(OpenAD_Symbol_325))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_326)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_121), __deriv__(TNOW(INT(
     > OpenAD_Symbol_326))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_121))
        OpenAD_Symbol_156 = INT(OpenAD_Symbol_156) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(TNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(SNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_160 = 0_w2f__i8
      DO L = 1, 3, 1
        __value__(TOLD(INT(L))) = __value__(TNOW(L))
        __value__(TNOW(INT(L))) = __value__(TNEW(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        __value__(SOLD(INT(L))) = __value__(SNOW(L))
        __value__(SNOW(INT(L))) = __value__(SNEW(L))
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_160 = (INT(OpenAD_Symbol_160) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_160)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_158)
      OpenAD_Symbol_159 = 1
      DO WHILE(INT(OpenAD_Symbol_159) .LE. INT(OpenAD_Symbol_158))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_319)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_320)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SNOW(INT(OpenAD_Symbol_319))),
     >  __deriv__(SNEW(INT(OpenAD_Symbol_320))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SNOW(INT(OpenAD_Symbol_319))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_321)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(SOLD(INT(OpenAD_Symbol_321))),
     >  __deriv__(OpenAD_Symbol_122))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(SOLD(INT(OpenAD_Symbol_321))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_322)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_122), __deriv__(SNOW(INT(
     > OpenAD_Symbol_322))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_122))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_323)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_324)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_323))),
     >  __deriv__(TNEW(INT(OpenAD_Symbol_324))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TNOW(INT(OpenAD_Symbol_323))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_325)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(TOLD(INT(OpenAD_Symbol_325))),
     >  __deriv__(OpenAD_Symbol_121))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(TOLD(INT(OpenAD_Symbol_325))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_326)
C       $OpenAD$ INLINE IncDeriv(subst,subst)
        CALL IncDeriv(__deriv__(OpenAD_Symbol_121), __deriv__(TNOW(INT(
     > OpenAD_Symbol_326))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(OpenAD_Symbol_121))
        OpenAD_Symbol_159 = INT(OpenAD_Symbol_159) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_update(FLDNEW, FLDOLD, DFLDDT)
      use w2f__types
      use all_globals_mod
      use all_globals_mod
      use all_globals_mod
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_270
      INTEGER(w2f__i8) OpenAD_Symbol_271
      INTEGER(w2f__i8) OpenAD_Symbol_272
      INTEGER(w2f__i8) OpenAD_Symbol_273
      INTEGER(w2f__i8) OpenAD_Symbol_274
      INTEGER(w2f__i8) OpenAD_Symbol_275
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
      INTEGER(w2f__i8) OpenAD_Symbol_347
      INTEGER(w2f__i8) OpenAD_Symbol_348
      INTEGER(w2f__i8) OpenAD_Symbol_349
      INTEGER(w2f__i8) OpenAD_Symbol_350
      REAL(w2f__8) OpenAD_Symbol_351
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      DO L = 1, 3, 1
        __value__(FLDNEW(INT(L))) = (__value__(FLDOLD(L)) + __value__(
     > DFLDDT(L)) * DELTA_T * 2.0D00)
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_272 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_Symbol_85 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (__value__(FLDOLD(L)) + __value__(
     > DFLDDT(L)) * OpenAD_Symbol_85)
        OpenAD_Symbol_86 = OpenAD_Symbol_85
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_86)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_272 = (INT(OpenAD_Symbol_272) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_272)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_270)
      OpenAD_Symbol_271 = 1
      DO WHILE(INT(OpenAD_Symbol_271) .LE. INT(OpenAD_Symbol_270))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_347)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_348)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(FLDNEW(INT(OpenAD_Symbol_347)))
     > , __deriv__(FLDOLD(INT(OpenAD_Symbol_348))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_349)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_350)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_351)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_351, __deriv__(FLDNEW(INT(
     > OpenAD_Symbol_349))), __deriv__(DFLDDT(INT(OpenAD_Symbol_350))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FLDNEW(INT(OpenAD_Symbol_349))))
        OpenAD_Symbol_271 = INT(OpenAD_Symbol_271) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(DFLDDT))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(DFLDDT))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA_T)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(DFLDDT))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(DFLDDT))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
C$OPENAD XXX Template ad_template.f
      OpenAD_Symbol_275 = 0_w2f__i8
      DO L = 1, 3, 1
        OpenAD_Symbol_85 = (DELTA_T * 2.0D00)
        __value__(FLDNEW(INT(L))) = (__value__(FLDOLD(L)) + __value__(
     > DFLDDT(L)) * OpenAD_Symbol_85)
        OpenAD_Symbol_86 = OpenAD_Symbol_85
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_86)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(L)
        OpenAD_Symbol_275 = (INT(OpenAD_Symbol_275) + INT(1_w2f__i8))
      END DO
C     $OpenAD$ INLINE push_i(subst)
      CALL push_i(OpenAD_Symbol_275)
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_273)
      OpenAD_Symbol_274 = 1
      DO WHILE(INT(OpenAD_Symbol_274) .LE. INT(OpenAD_Symbol_273))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_347)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_348)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(1_w2f__i8, __deriv__(FLDNEW(INT(OpenAD_Symbol_347)))
     > , __deriv__(FLDOLD(INT(OpenAD_Symbol_348))))
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_349)
C       $OpenAD$ INLINE pop_i(subst)
        CALL pop_i(OpenAD_Symbol_350)
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_351)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_351, __deriv__(FLDNEW(INT(
     > OpenAD_Symbol_349))), __deriv__(DFLDDT(INT(OpenAD_Symbol_350))))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(FLDNEW(INT(OpenAD_Symbol_349))))
        OpenAD_Symbol_274 = INT(OpenAD_Symbol_274) + 1
      END DO
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE

      SUBROUTINE box_timestep(GAMMALOC, FLDSTAR, EXTFORLOC, UVELLOC,
     >  FLDNOW, FLDOLD, FLDNEW)
      use w2f__types
      use all_globals_mod
      use all_globals_mod
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
      INTEGER(w2f__i8) OpenAD_Symbol_143
      INTEGER(w2f__i8) OpenAD_Symbol_144
      INTEGER(w2f__i8) OpenAD_Symbol_145
      INTEGER(w2f__i8) OpenAD_Symbol_146
      INTEGER(w2f__i8) OpenAD_Symbol_147
      INTEGER(w2f__i8) OpenAD_Symbol_148
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
      REAL(w2f__8) OpenAD_Symbol_286
      REAL(w2f__8) OpenAD_Symbol_287
      REAL(w2f__8) OpenAD_Symbol_288
      REAL(w2f__8) OpenAD_Symbol_289
      REAL(w2f__8) OpenAD_Symbol_290
      REAL(w2f__8) OpenAD_Symbol_291
      REAL(w2f__8) OpenAD_Symbol_292
      REAL(w2f__8) OpenAD_Symbol_293
      REAL(w2f__8) OpenAD_Symbol_294
      REAL(w2f__8) OpenAD_Symbol_295
      REAL(w2f__8) OpenAD_Symbol_296
      REAL(w2f__8) OpenAD_Symbol_297
      REAL(w2f__8) OpenAD_Symbol_298
      REAL(w2f__8) OpenAD_Symbol_299
      REAL(w2f__8) OpenAD_Symbol_300
      REAL(w2f__8) OpenAD_Symbol_301
      REAL(w2f__8) OpenAD_Symbol_302
      REAL(w2f__8) OpenAD_Symbol_303
      REAL(w2f__8) OpenAD_Symbol_304
      REAL(w2f__8) OpenAD_Symbol_305
      REAL(w2f__8) OpenAD_Symbol_306
      REAL(w2f__8) OpenAD_Symbol_307
C
C     **** Statements ****
C
C     $OpenAD$ BEGIN REPLACEMENT 1
C$OPENAD XXX Template ad_template.f
      IF(__value__(UVELLOC) .GE. 0.0D00) THEN
        __value__(DFLDDT(1)) = ((EXTFORLOC(1) + VOL(1) * GAMMALOC *(
     > FLDSTAR(1) - __value__(FLDNOW(1))) + __value__(UVELLOC) *(
     > __value__(FLDNOW(3)) - __value__(FLDNOW(1)))) / VOL(1))
        __value__(DFLDDT(2)) = ((EXTFORLOC(2) + VOL(2) * GAMMALOC *(
     > FLDSTAR(2) - __value__(FLDNOW(2))) + __value__(UVELLOC) *(
     > __value__(FLDNOW(1)) - __value__(FLDNOW(2)))) / VOL(2))
        __value__(DFLDDT(3)) = ((__value__(UVELLOC) *(__value__(FLDNOW(
     > 2)) - __value__(FLDNOW(3)))) / VOL(3))
      ELSE
        __value__(DFLDDT(1)) = ((EXTFORLOC(1) + VOL(1) * GAMMALOC *(
     > FLDSTAR(1) - __value__(FLDNOW(1))) - __value__(UVELLOC) *(
     > __value__(FLDNOW(2)) - __value__(FLDNOW(1)))) / VOL(1))
        __value__(DFLDDT(2)) = ((EXTFORLOC(2) + VOL(2) * GAMMALOC *(
     > FLDSTAR(2) - __value__(FLDNOW(2))) - __value__(UVELLOC) *(
     > __value__(FLDNOW(3)) - __value__(FLDNOW(2)))) / VOL(2))
        __value__(DFLDDT(3)) = (-((__value__(UVELLOC) *(__value__(
     > FLDNOW(1)) - __value__(FLDNOW(3)))) / VOL(3)))
      ENDIF
      CALL box_update(__deriv__(FLDNEW), __deriv__(FLDOLD), __deriv__(
     > DFLDDT))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 2
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
        OpenAD_Symbol_93 = (OpenAD_Symbol_24 * OpenAD_Symbol_13)
        OpenAD_Symbol_94 = (OpenAD_Symbol_25 * OpenAD_Symbol_13)
        OpenAD_Symbol_95 = (INT((-1_w2f__i8)) * OpenAD_Symbol_94)
        OpenAD_Symbol_96 = (INT((-1_w2f__i8)) * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_18 * OpenAD_Symbol_13)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_93)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_94)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_95)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_96)
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
        OpenAD_Symbol_97 = (OpenAD_Symbol_38 * OpenAD_Symbol_27)
        OpenAD_Symbol_98 = (OpenAD_Symbol_39 * OpenAD_Symbol_27)
        OpenAD_Symbol_99 = (INT((-1_w2f__i8)) * OpenAD_Symbol_98)
        OpenAD_Symbol_100 = (INT((-1_w2f__i8)) * OpenAD_Symbol_35 *
     >  OpenAD_Symbol_32 * OpenAD_Symbol_27)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_97)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_98)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_99)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_100)
        OpenAD_Symbol_43 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_40 = (__value__(UVELLOC) * OpenAD_Symbol_43)
        __value__(DFLDDT(3)) = (OpenAD_Symbol_40 / VOL(3))
        OpenAD_Symbol_44 = OpenAD_Symbol_43
        OpenAD_Symbol_45 = __value__(UVELLOC)
        OpenAD_Symbol_41 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_101 = (OpenAD_Symbol_44 * OpenAD_Symbol_41)
        OpenAD_Symbol_102 = (OpenAD_Symbol_45 * OpenAD_Symbol_41)
        OpenAD_Symbol_103 = (INT((-1_w2f__i8)) * OpenAD_Symbol_102)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_101)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_102)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_103)
        OpenAD_Symbol_144 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_144)
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
        OpenAD_Symbol_104 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47)
        OpenAD_Symbol_105 = (OpenAD_Symbol_58 * OpenAD_Symbol_104)
        OpenAD_Symbol_106 = (OpenAD_Symbol_59 * OpenAD_Symbol_104)
        OpenAD_Symbol_107 = (INT((-1_w2f__i8)) * OpenAD_Symbol_106)
        OpenAD_Symbol_108 = (INT((-1_w2f__i8)) * OpenAD_Symbol_55 *
     >  OpenAD_Symbol_52 * OpenAD_Symbol_47)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_105)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_106)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_107)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_108)
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
        OpenAD_Symbol_109 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61)
        OpenAD_Symbol_110 = (OpenAD_Symbol_72 * OpenAD_Symbol_109)
        OpenAD_Symbol_111 = (OpenAD_Symbol_73 * OpenAD_Symbol_109)
        OpenAD_Symbol_112 = (INT((-1_w2f__i8)) * OpenAD_Symbol_111)
        OpenAD_Symbol_113 = (INT((-1_w2f__i8)) * OpenAD_Symbol_69 *
     >  OpenAD_Symbol_66 * OpenAD_Symbol_61)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_110)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_111)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_112)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_113)
        OpenAD_Symbol_77 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_74 = (__value__(UVELLOC) * OpenAD_Symbol_77)
        __value__(DFLDDT(3)) = (-(OpenAD_Symbol_74 / VOL(3)))
        OpenAD_Symbol_78 = OpenAD_Symbol_77
        OpenAD_Symbol_79 = __value__(UVELLOC)
        OpenAD_Symbol_75 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_114 = (OpenAD_Symbol_75 * INT((-1_w2f__i8)))
        OpenAD_Symbol_115 = (OpenAD_Symbol_78 * OpenAD_Symbol_114)
        OpenAD_Symbol_116 = (OpenAD_Symbol_79 * OpenAD_Symbol_114)
        OpenAD_Symbol_117 = (INT((-1_w2f__i8)) * OpenAD_Symbol_116)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_115)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_116)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_117)
        OpenAD_Symbol_145 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_145)
      ENDIF
      CALL box_update(__deriv__(FLDNEW), __deriv__(FLDOLD), __deriv__(
     > DFLDDT))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 3
      CALL box_update(__deriv__(FLDNEW), __deriv__(FLDOLD), __deriv__(
     > DFLDDT))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_143)
      IF(OpenAD_Symbol_143 .ne. 0) THEN
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_286)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_286, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_287)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_287, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_288)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_288, __deriv__(DFLDDT(3)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_289)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_289, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_290)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_290, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_291)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_291, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_292)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_292, __deriv__(DFLDDT(2)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_293)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_293, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_294)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_294, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_295)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_295, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_296)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_296, __deriv__(DFLDDT(1)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_297)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_297, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_298)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_298, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_299)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_299, __deriv__(DFLDDT(3)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_300)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_300, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_301)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_301, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_302)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_302, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_303)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_303, __deriv__(DFLDDT(2)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_304)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_304, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_305)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_305, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_306)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_306, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_307)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_307, __deriv__(DFLDDT(1)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
      ENDIF
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 4
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(GAMMALOC)
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(UVELLOC))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(FLDSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(EXTFORLOC)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 5
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 6
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(EXTFORLOC)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(FLDSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(UVELLOC))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(GAMMALOC)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(DELTA_T)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 7
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 8
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ INLINE cp_arg_store_real_scalar(subst)
      CALL cp_arg_store_real_scalar(GAMMALOC)
C     $OpenAD$ INLINE cp_arg_store_real_scalar_a(subst)
      CALL cp_arg_store_real_scalar_a(__deriv__(UVELLOC))
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(FLDSTAR)
C     $OpenAD$ INLINE cp_arg_store_real_vector(subst)
      CALL cp_arg_store_real_vector(EXTFORLOC)
C     $OpenAD$ INLINE cp_arg_store_real_vector_a(subst)
      CALL cp_arg_store_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 9
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNOW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(EXTFORLOC)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(FLDSTAR)
C     $OpenAD$ INLINE cp_arg_restore_real_vector(subst)
      CALL cp_arg_restore_real_vector(VOL)
C     $OpenAD$ INLINE cp_arg_restore_real_scalar_a(subst)
      CALL cp_arg_restore_real_scalar_a(__deriv__(UVELLOC))
C     $OpenAD$ INLINE cp_arg_restore_real_scalar(subst)
      CALL cp_arg_restore_real_scalar(GAMMALOC)
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDOLD))
C     $OpenAD$ INLINE cp_arg_restore_real_vector_a(subst)
      CALL cp_arg_restore_real_vector_a(__deriv__(FLDNEW))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 10
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
        OpenAD_Symbol_93 = (OpenAD_Symbol_24 * OpenAD_Symbol_13)
        OpenAD_Symbol_94 = (OpenAD_Symbol_25 * OpenAD_Symbol_13)
        OpenAD_Symbol_95 = (INT((-1_w2f__i8)) * OpenAD_Symbol_94)
        OpenAD_Symbol_96 = (INT((-1_w2f__i8)) * OpenAD_Symbol_21 *
     >  OpenAD_Symbol_18 * OpenAD_Symbol_13)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_93)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_94)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_95)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_96)
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
        OpenAD_Symbol_97 = (OpenAD_Symbol_38 * OpenAD_Symbol_27)
        OpenAD_Symbol_98 = (OpenAD_Symbol_39 * OpenAD_Symbol_27)
        OpenAD_Symbol_99 = (INT((-1_w2f__i8)) * OpenAD_Symbol_98)
        OpenAD_Symbol_100 = (INT((-1_w2f__i8)) * OpenAD_Symbol_35 *
     >  OpenAD_Symbol_32 * OpenAD_Symbol_27)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_97)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_98)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_99)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_100)
        OpenAD_Symbol_43 = (__value__(FLDNOW(2)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_40 = (__value__(UVELLOC) * OpenAD_Symbol_43)
        __value__(DFLDDT(3)) = (OpenAD_Symbol_40 / VOL(3))
        OpenAD_Symbol_44 = OpenAD_Symbol_43
        OpenAD_Symbol_45 = __value__(UVELLOC)
        OpenAD_Symbol_41 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_101 = (OpenAD_Symbol_44 * OpenAD_Symbol_41)
        OpenAD_Symbol_102 = (OpenAD_Symbol_45 * OpenAD_Symbol_41)
        OpenAD_Symbol_103 = (INT((-1_w2f__i8)) * OpenAD_Symbol_102)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_101)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_102)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_103)
        OpenAD_Symbol_147 = 1_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_147)
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
        OpenAD_Symbol_104 = (INT((-1_w2f__i8)) * OpenAD_Symbol_47)
        OpenAD_Symbol_105 = (OpenAD_Symbol_58 * OpenAD_Symbol_104)
        OpenAD_Symbol_106 = (OpenAD_Symbol_59 * OpenAD_Symbol_104)
        OpenAD_Symbol_107 = (INT((-1_w2f__i8)) * OpenAD_Symbol_106)
        OpenAD_Symbol_108 = (INT((-1_w2f__i8)) * OpenAD_Symbol_55 *
     >  OpenAD_Symbol_52 * OpenAD_Symbol_47)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_105)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_106)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_107)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_108)
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
        OpenAD_Symbol_109 = (INT((-1_w2f__i8)) * OpenAD_Symbol_61)
        OpenAD_Symbol_110 = (OpenAD_Symbol_72 * OpenAD_Symbol_109)
        OpenAD_Symbol_111 = (OpenAD_Symbol_73 * OpenAD_Symbol_109)
        OpenAD_Symbol_112 = (INT((-1_w2f__i8)) * OpenAD_Symbol_111)
        OpenAD_Symbol_113 = (INT((-1_w2f__i8)) * OpenAD_Symbol_69 *
     >  OpenAD_Symbol_66 * OpenAD_Symbol_61)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_110)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_111)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_112)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_113)
        OpenAD_Symbol_77 = (__value__(FLDNOW(1)) - __value__(FLDNOW(3))
     > )
        OpenAD_Symbol_74 = (__value__(UVELLOC) * OpenAD_Symbol_77)
        __value__(DFLDDT(3)) = (-(OpenAD_Symbol_74 / VOL(3)))
        OpenAD_Symbol_78 = OpenAD_Symbol_77
        OpenAD_Symbol_79 = __value__(UVELLOC)
        OpenAD_Symbol_75 = (INT(1_w2f__i8) / VOL(3))
        OpenAD_Symbol_114 = (OpenAD_Symbol_75 * INT((-1_w2f__i8)))
        OpenAD_Symbol_115 = (OpenAD_Symbol_78 * OpenAD_Symbol_114)
        OpenAD_Symbol_116 = (OpenAD_Symbol_79 * OpenAD_Symbol_114)
        OpenAD_Symbol_117 = (INT((-1_w2f__i8)) * OpenAD_Symbol_116)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_115)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_116)
C       $OpenAD$ INLINE push(subst)
        CALL push(OpenAD_Symbol_117)
        OpenAD_Symbol_148 = 0_w2f__i8
C       $OpenAD$ INLINE push_i(subst)
        CALL push_i(OpenAD_Symbol_148)
      ENDIF
      CALL box_update(__deriv__(FLDNEW), __deriv__(FLDOLD), __deriv__(
     > DFLDDT))
C     $OpenAD$ END REPLACEMENT
C     $OpenAD$ BEGIN REPLACEMENT 11
      CALL box_update(__deriv__(FLDNEW), __deriv__(FLDOLD), __deriv__(
     > DFLDDT))
C     $OpenAD$ INLINE pop_i(subst)
      CALL pop_i(OpenAD_Symbol_146)
      IF(OpenAD_Symbol_146 .ne. 0) THEN
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_286)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_286, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_287)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_287, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_288)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_288, __deriv__(DFLDDT(3)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_289)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_289, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_290)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_290, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_291)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_291, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_292)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_292, __deriv__(DFLDDT(2)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_293)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_293, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_294)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_294, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_295)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_295, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_296)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_296, __deriv__(DFLDDT(1)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
      ELSE
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_297)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_297, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_298)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_298, __deriv__(DFLDDT(3)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_299)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_299, __deriv__(DFLDDT(3)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_300)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_300, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_301)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_301, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_302)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_302, __deriv__(DFLDDT(2)), __deriv__(
     > FLDNOW(3)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_303)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_303, __deriv__(DFLDDT(2)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_304)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_304, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_305)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_305, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(1)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_306)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_306, __deriv__(DFLDDT(1)), __deriv__(
     > FLDNOW(2)))
C       $OpenAD$ INLINE Pop(subst)
        CALL Pop(OpenAD_Symbol_307)
C       $OpenAD$ INLINE Saxpy(subst,subst,subst)
        CALL Saxpy(OpenAD_Symbol_307, __deriv__(DFLDDT(1)), __deriv__(
     > UVELLOC))
C       $OpenAD$ INLINE ZeroDeriv(subst)
        CALL ZeroDeriv(__deriv__(DFLDDT(1)))
      ENDIF
C     $OpenAD$ END REPLACEMENT
      END SUBROUTINE
