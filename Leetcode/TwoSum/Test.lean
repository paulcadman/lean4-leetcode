import Leetcode.Test
import Leetcode.TwoSum

open Leetcode.Test
open Leetcode.TwoSum

namespace Leetcode.TwoSum.Test

def test : IO Unit := do
  assertEqual (0,1) (twoSum #[1,2] 3)
  println! "All tests passed"
