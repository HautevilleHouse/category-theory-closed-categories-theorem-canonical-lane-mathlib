import CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.CategoryTheory.Monoidal.Closed

/-!
# Monoidal Closure Package
-/

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure MonoidalClosurePackage where
  tensorProductDefined : Prop
  internalHomDefined : Prop
  adjunctionUnits : Prop
  coherenceConditions : Prop

structure MonoidalClosureEvidence (M : MonoidalClosurePackage) where
  tensorProductDefinedClosed : M.tensorProductDefined
  internalHomDefinedClosed : M.internalHomDefined
  adjunctionUnitsClosed : M.adjunctionUnits
  coherenceConditionsClosed : M.coherenceConditions

def MonoidalClosureClosed (M : MonoidalClosurePackage) : Prop :=
  M.tensorProductDefined ∧ M.internalHomDefined ∧
  M.adjunctionUnits ∧ M.coherenceConditions

theorem monoidal_closure_closed_from_evidence (M : MonoidalClosurePackage)
    (E : MonoidalClosureEvidence M) : MonoidalClosureClosed M := by
  exact And.intro E.tensorProductDefinedClosed
    (And.intro E.internalHomDefinedClosed
      (And.intro E.adjunctionUnitsClosed E.coherenceConditionsClosed))

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse