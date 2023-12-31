import FierceNerdsUtil.Pred_type

namespace FierceNerds.Util

abbrev ListPredWithEmptyPass (α : Type u) := @Subtype (Pred (List α)) (fun pred => pred [])

instance [Inhabited α] : Inhabited (ListPredWithEmptyPass α) where
  default := {
    val := fun ls =>
      match ls with
      | [] => True
      | _ => False
    property := by simp
  }
