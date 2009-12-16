
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
      MODULE m
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Top Level Pragmas ****
C
      interface  FOO
        module procedure  FOOI

      end interface 
      
C
C     **** Statements ****
C
      CONTAINS

        SUBROUTINE FOOI(X)
        use w2f__types
        IMPLICIT NONE
C
C       **** Parameters and Result ****
C
        REAL(w2f__8) X(1 :)
C
C       **** Statements ****
C
C$OPENAD XXX Template ad_template.f
        END SUBROUTINE
      END

      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      use m
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      REAL(w2f__8) OpenAD_Symbol_0(:)
      ALLOCATABLE OpenAD_Symbol_0
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 :)
      TYPE (OpenADTy_active) Y(1 :)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(Y(1 : )) = __value__(X(1 : ))
      CALL setderiv(__deriv__(Y(1 : )), __deriv__(X(1 : )))
C     $OpenAD$ INLINE oad_AllocateMatching(subst,subst)
      CALL oad_AllocateMatching(OpenAD_Symbol_0, __deriv__(Y))
C     $OpenAD$ INLINE convert_a2p_vector(subst,subst)
      CALL convert_a2p_vector(OpenAD_Symbol_0, __deriv__(Y))
      CALL FOOI(OpenAD_Symbol_0)
C     $OpenAD$ INLINE convert_p2a_vector(subst,subst)
      CALL convert_p2a_vector(__deriv__(Y), OpenAD_Symbol_0)
      END SUBROUTINE
