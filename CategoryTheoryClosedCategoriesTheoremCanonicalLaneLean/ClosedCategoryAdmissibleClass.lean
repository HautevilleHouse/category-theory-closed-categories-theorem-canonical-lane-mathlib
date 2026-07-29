import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesCanonicalLaneLean

structure ClosedCategoryObject where
  carrier : Type u
  tensorProduct : carrier → carrier → carrier
  internalHom : carrier → carrier → carrier
  adjunctionData : Prop
  adjunctionDataTerm : adjunctionData

structure AdmissibleClass where
  object : ClosedCategoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClosedCategoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryClosedCategoriesCanonicalLaneLean
end HautevilleHouse