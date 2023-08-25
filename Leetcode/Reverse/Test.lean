import Leetcode.Reverse
import Leetcode.Test

open Leetcode.Reverse
open Leetcode.Test

namespace Leetcode.Reverse.Test

def test : IO Unit := do
  assertEqual (-(Int.ofNat 2^31)) (reverse (-8463847412))
  assertEqual (Int.ofNat 2^31 - 1) (reverse 7463847412)
  assertEqual 0 (reverse (-9463847412))
  assertEqual 0 (reverse 8463847412)
  println! "All tests passed"
