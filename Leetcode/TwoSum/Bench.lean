import Leetcode.TwoSum
open Leetcode.TwoSum

namespace Leetcode.TwoSum.Bench

def testData : IO (Array Int) := do
  let range := 1000000000
  let min := 0 
  let max := 2 * range
  let capacity := 10000
  let mut data := Array.mkEmpty capacity
  for _ in [0:capacity] do
    let v <- IO.rand min max
    let vi := Int.ofNat v
    data := data.push (vi - Int.ofNat range)
  pure data

partial def getTarget (values: Array Int) : IO Int := do
  let i1 <- IO.rand 0 (values.size - 1)
  let i2 <- IO.rand 0 (values.size - 1)
  if i1 == i2
    then getTarget values
    else pure (values[i1]! + values[i2]!)

def bench : IO Unit := do
  let values <- testData
  let mut acc := 0
  for _ in [0:10000] do
    let target <- getTarget values
    let (i, j) := twoSum values target
    acc := acc + i + j
  IO.println s!"done: {acc}"

end Leetcode.TwoSum.Bench

open Leetcode.TwoSum.Bench in
def main : IO Unit := bench