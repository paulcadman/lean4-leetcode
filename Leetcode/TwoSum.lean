import Std
open Std (HashMap)

namespace Leetcode.TwoSum

--- https://leetcode.com/problems/two-sum/
def twoSum (values: Array Int) (target: Int): Nat × Nat := Id.run <| do
  let mut h : HashMap Int Nat := HashMap.empty
  for i in [0:values.size] do
    let value := values[i]!
    let complement := target - value
    let complementIdx?: Option Nat := h.find? complement
    match complementIdx? with
    | some complementIdx => return (complementIdx, i)
    | none => h := h.insert value i
  pure (0,0)