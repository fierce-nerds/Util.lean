import FierceNerdsUtil.FierceNerds.Util.UniqueBy_type
import FierceNerdsUtil.FierceNerds.Util.SortedBy_type

namespace FierceNerds.Util.UniqueBy

variable {α β}

theorem sorted_ascending_hard__implies__unique_by
  (xs : List α)
  (f : α → β)
  [LT β]
  (h : SortedAscendingHardBy f xs)
  : UniqueBy f xs
  := by admit

theorem sorted_descending_hard__implies__unique_by
  (xs : List α)
  (f : α → β)
  [LT β]
  (h : SortedDescendingHardBy f xs)
  : UniqueBy f xs
  := by admit

theorem replaceByKeyPreservesUniqueness
  [iBEq : BEq α]
  (x y : α)
  (h1 : f x = f y)
  (input : List α)
  (h3 : UniqueBy f input)
  : UniqueBy f (input.replace x y)
  := by
    unfold UniqueBy
    unfold PairwiseBy
    cases input
    . -- nil 
      simp
    . -- cons
      rename_i head tail
      have h : List.Pairwise Ne (List.map f ((head :: tail).replace x y)) := sorry
      exact h
      -- cases output 
      -- . -- nil
      --   conv at h2 =>
      --     unfold List.replace
      --     -- exact nomatch h2
      --   -- exact nomatch h2
      --   done
      -- . -- cons
      --   rename_i output_head output_tail
      --   admit


    -- cases input
    -- . -- nil
    --   cases output
    --     . -- nil
    --       admit
    --     . -- cons
    --       admit
    --   -- have h : @List.Pairwise α Ne [] := List.Pairwise.nil
    --   -- simp at h2
    --   -- have h4 := @List.map_nil α β f
    --   -- rw [←h2] at h4
    --   -- have h5 := h2.symm ▸ (h2.symm ▸ h4.symm)
    --   -- have h6 := h2.symm ▸ h5
    --   -- unfold List.map
    --   -- rw [←h2]
    --   -- rw [h6] at h
    --   -- exact h
