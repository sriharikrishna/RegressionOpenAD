
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      MODULE globals
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) AGLOBALACTIVE
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE foo(P)
      use w2f__types
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_3
      TYPE (OpenADTy_active) OpenAD_prop_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) P
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
C
C     **** Statements ****
C
      OpenAD_Symbol_3 = (__value__(P) * __value__(AGLOBALACTIVE))
      OpenAD_Symbol_1 = __value__(AGLOBALACTIVE)
      OpenAD_Symbol_2 = __value__(P)
      __value__(AGLOBALACTIVE) = OpenAD_Symbol_3
      CALL setderiv(__deriv__(OpenAD_prop_0), __deriv__(AGLOBALACTIVE))
      CALL sax(OpenAD_Symbol_1, __deriv__(P), __deriv__(AGLOBALACTIVE))
      CALL saxpy(OpenAD_Symbol_2, __deriv__(OpenAD_prop_0), __deriv__(
     > AGLOBALACTIVE))
      END SUBROUTINE

      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      TYPE (OpenADTy_active) OpenAD_Symbol_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 1)
      INTENT(IN)  X
      TYPE (OpenADTy_active) Y(1 : 1)
      INTENT(OUT)  Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) ANINACTIVE
      EXTERNAL foo
      REAL(w2f__8) OpenAD_Symbol_4
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      ANINACTIVE = 4.445600128173828125D+01
      __value__(AGLOBALACTIVE) = 1.61803400516510009766D00
      CALL zero_deriv(__deriv__(AGLOBALACTIVE))
      CALL foo(__deriv__(X(1)))
C     $OpenAD$ INLINE convert_p2a_scalar(subst,subst)
      CALL convert_p2a_scalar(__deriv__(OpenAD_Symbol_0), ANINACTIVE)
      CALL foo(__deriv__(OpenAD_Symbol_0))
C     $OpenAD$ INLINE convert_a2p_scalar(subst,subst)
      CALL convert_a2p_scalar(ANINACTIVE, __deriv__(OpenAD_Symbol_0))
      __value__(Y(1)) = SIN(__value__(AGLOBALACTIVE))
      OpenAD_Symbol_4 = COS(__value__(AGLOBALACTIVE))
      CALL sax(OpenAD_Symbol_4, __deriv__(AGLOBALACTIVE), __deriv__(Y(1
     > )))
      END SUBROUTINE
