import CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.CategoryTheory.Closed.Cartesian

/-!
# Cartesian Closure Package
-/

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure CartesianClosurePackage where
  productsExist : Prop
  exponentiationExists : Prop
  evaluationMapDefined : Prop
  curryingBijection : Prop

structure CartesianClosureEvidence (C : CartesianClosurePackage) where
  productsExistClosed : C.productsExist
  exponentiationExistsClosed : C.exponentiationExists
  evaluationMapDefinedClosed : C.evaluationMapDefined
  curryingBijectionClosed : C.curryingBijection

def CartesianClosureClosed (C : CartesianClosurePackage) : Prop :=
  C.productsExist ∧ C.exponentiationExists ∧
  C.evaluationMapDefined ∧ C.curryingBijection

theorem cartesian_closure_closed_from_evidence (C : CartesianClosurePackage)
    (E : CartesianClosureEvidence C) : CartesianClosureClosed C := by
  exact And.intro E.productsExistClosed
    (And.intro E.exponentiationExistsClosed
      (And.intro E.evaluationMapDefinedClosed E.curryingBijectionClosed))

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse