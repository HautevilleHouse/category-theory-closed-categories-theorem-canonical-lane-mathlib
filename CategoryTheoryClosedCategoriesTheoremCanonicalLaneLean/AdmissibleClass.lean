import HautevilleHouse.CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean.ClosedCategoryObject

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ClosedCategoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClosedCategoryObjectHomeomorphicUnit A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse