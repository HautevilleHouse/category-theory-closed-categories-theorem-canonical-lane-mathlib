import CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean.TheoremStatement
import Mathlib.CategoryTheory.Closed.Cartesian
import Mathlib.CategoryTheory.Closed.Monoidal

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean

structure CategorySpace where
  carrier : Type
  category : Category carrier

structure CategoryAdmittedObject where
  space : CategorySpace
  closedMonoidalStructure : Prop
  cartesianClosed : Prop
  internalHomDefined : Prop
  conclusion : closedMonoidalStructure ∧ cartesianClosed ∧ internalHomDefined

structure CategoryEndgameState where
  object : CategoryAdmittedObject

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.closedMonoidalStructure ∧ O.cartesianClosed ∧ O.internalHomDefined

end CategoryTheoryClosedCategoriesTheoremCanonicalLaneLean
end HautevilleHouse