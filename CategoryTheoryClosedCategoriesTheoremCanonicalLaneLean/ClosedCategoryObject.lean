import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure ClosedCategoryObject where
  carrier : Type
  topology : TopologicalSpace carrier
  homSet : carrier → carrier → Type
  closedMonoidalStructure : Prop
  internalHomExists : Prop
  unitObject : carrier
  homeomorphicToUnit : Prop
  conclusion : homeomorphicToUnit

def ClosedCategoryObjectHomeomorphicUnit (O : ClosedCategoryObject) : Prop :=
  O.homeomorphicToUnit

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse