
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE opt(REQARG, OPTARG, OUTARG)
      use w2f__types
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_Symbol_4
      REAL(w2f__8) OpenAD_Symbol_5
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      TYPE (OpenADTy_active) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) REQARG
      INTENT(IN)  REQARG
      TYPE (OpenADTy_active) OPTARG
      OPTIONAL  OPTARG
      INTENT(IN)  OPTARG
      TYPE (OpenADTy_active) OUTARG
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      IF(PRESENT(__value__(OPTARG))) THEN
        IF(__value__(OPTARG) .LE. 2.0D00) THEN
          OpenAD_Symbol_0 = (__value__(OPTARG) * __value__(OUTARG))
          OpenAD_Symbol_5 = (__value__(REQARG) * OpenAD_Symbol_0)
          OpenAD_Symbol_1 = OpenAD_Symbol_0
          OpenAD_Symbol_3 = __value__(OUTARG)
          OpenAD_Symbol_4 = __value__(OPTARG)
          OpenAD_Symbol_2 = __value__(REQARG)
          __value__(OUTARG) = OpenAD_Symbol_5
          OpenAD_Symbol_7 = (OpenAD_Symbol_3 * OpenAD_Symbol_2)
          OpenAD_Symbol_8 = (OpenAD_Symbol_4 * OpenAD_Symbol_2)
          CALL setderiv(__deriv__(OpenAD_Symbol_9), __deriv__(OUTARG))
          CALL sax(OpenAD_Symbol_7, __deriv__(OPTARG), __deriv__(OUTARG
     > ))
          CALL saxpy(OpenAD_Symbol_8, __deriv__(OpenAD_Symbol_9),
     >  __deriv__(OUTARG))
          CALL saxpy(OpenAD_Symbol_1, __deriv__(REQARG), __deriv__(
     > OUTARG))
        ENDIF
      ELSE
        __value__(OUTARG) = __value__(REQARG)
        CALL setderiv(__deriv__(OUTARG), __deriv__(REQARG))
      ENDIF
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
      interface 
        SUBROUTINE opt(REQARG, OPTARG, OUTARG)
        use w2f__types
        TYPE (OpenADTy_active) REQARG
        INTENT(in)  REQARG
        TYPE (OpenADTy_active) OPTARG
        OPTIONAL  OPTARG
        INTENT(in)  OPTARG
        TYPE (OpenADTy_active) OUTARG
        END SUBROUTINE

      end interface 
      
      __value__(Y(1)) = (__value__(X(1)) * 2.0D00)
      CALL sax(2.0D00, __deriv__(X(1)), __deriv__(Y(1)))
      CALL opt(__deriv__(X(2)), __deriv__(X(1)), __deriv__(Y(1)))
      END SUBROUTINE
