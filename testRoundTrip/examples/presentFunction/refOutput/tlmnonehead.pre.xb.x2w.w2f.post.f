

      SUBROUTINE opt(REQARG, OPTARG, OUTARG)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      type(active) :: OpenAD_prop_0
      REAL(w2f__8) OpenAD_tmp_0
C
C     **** Parameters and Result ****
C
      type(active) :: REQARG
      INTENT(IN) REQARG
      type(active) :: OPTARG
      OPTIONAL OPTARG
      INTENT(IN) OPTARG
      type(active) :: OUTARG
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      IF (PRESENT(OPTARG)) THEN
        IF (OPTARG%v.LE.2.0D00) THEN
          OpenAD_tmp_0 = (OPTARG%v*OUTARG%v)
          OpenAD_Symbol_0 = (REQARG%v*OpenAD_tmp_0)
          OpenAD_lin_0 = OpenAD_tmp_0
          OpenAD_lin_2 = OUTARG%v
          OpenAD_lin_3 = OPTARG%v
          OpenAD_lin_1 = REQARG%v
          OUTARG%v = OpenAD_Symbol_0
          OpenAD_acc_0 = (OpenAD_lin_2*OpenAD_lin_1)
          OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_1)
          CALL setderiv(OpenAD_prop_0,OUTARG)
          CALL sax(OpenAD_lin_0,REQARG,OUTARG)
          CALL saxpy(OpenAD_acc_0,OPTARG,OUTARG)
          CALL saxpy(OpenAD_acc_1,OpenAD_prop_0,OUTARG)
        ENDIF
      ELSE
        OUTARG%v = REQARG%v
        CALL setderiv(OUTARG,REQARG)
      ENDIF
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use OAD_active
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        SUBROUTINE opt(REQARG, OPTARG, OUTARG)
        use w2f__types
      use OAD_active
        type(active) :: REQARG
        INTENT(in) REQARG
        type(active) :: OPTARG
        OPTIONAL OPTARG
        INTENT(in) OPTARG
        type(active) :: OUTARG
        END SUBROUTINE

      end interface

C
C     **** Statements ****
C
      Y(1)%v = (X(1)%v*2.0D00)
      CALL sax(2.0D00,X(1),Y(1))
      CALL opt(X(2),X(1),Y(1))
      END SUBROUTINE
