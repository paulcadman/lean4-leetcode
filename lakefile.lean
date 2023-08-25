import Lake
open Lake DSL

require mathlib from git
  "https://github.com/leanprover-community/mathlib4"

package leetcode {
  -- add package configuration options here
}

lean_lib Leetcode {
  -- add library configuration options here
}

lean_exe «twosum-bench» {
  root := `Leetcode.TwoSum.Bench
}

lean_exe «twosum-test» {
  root := `Leetcode.TwoSum.Main
}

lean_exe «reverse-test» {
  root := `Leetcode.Reverse.Main
}

@[default_target]
lean_exe leetcode {
  root := `Leetcode.Main
}