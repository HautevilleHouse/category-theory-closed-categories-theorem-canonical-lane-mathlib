import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure ClosedCategoryAdmittedObject where
  carrier : Type u
  internalHom : carrier → carrier → carrier
  homEquiv : ∀ (A B C : carrier), (A ⊗ B ⇾ C) ≃ (A ⇾ (B ⇾ C))
  tensorUnit : carrier
  associator : ∀ (A B C : carrier), (A ⊗ B) ⊗ C ≅ A ⊗ (B ⊗ C)
  leftUnitor : ∀ (A : carrier), tensorUnit ⊗ A ≅ A
  rightUnitor : ∀ (A : carrier), A ⊗ tensorUnit ≅ A
  triangleIdentity : Prop
  pentagonIdentity : Prop
  triangleIdentityTerm : triangleIdentity
  pentagonIdentityTerm : pentagonIdentity

def ClosedCategoryWitnessClosed (O : ClosedCategoryAdmittedObject) : Prop :=
  O.triangleIdentity ∧ O.pentagonIdentity

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse
