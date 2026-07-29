import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure CartesianClosedCategoryPackage (C : Type u) [Category C] where
  finiteProducts : Prop
  exponential : C → C → C
  evaluation : ∀ A B : C, (exponential A B) × A ⟶ B
  currying : ∀ {A B C : C}, (C × A ⟶ B) ≃ (C ⟶ exponential A B)
  productLawful : Prop
  exponentialLawful : Prop

structure CartesianClosedCategoryEvidence {C : Type u} [Category C]
    (P : CartesianClosedCategoryPackage C) where
  productLawfulClosed : P.productLawful
  exponentialLawfulClosed : P.exponentialLawful

def CartesianClosedCategoryClosed {C : Type u} [Category C]
    (P : CartesianClosedCategoryPackage C) : Prop :=
  P.productLawful ∧ P.exponentialLawful

theorem cartesian_closed_category_closed_from_evidence {C : Type u} [Category C]
    (P : CartesianClosedCategoryPackage C) (E : CartesianClosedCategoryEvidence P) :
    CartesianClosedCategoryClosed P := by
  exact And.intro E.productLawfulClosed E.exponentialLawfulClosed

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
