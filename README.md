# Leetcode exercises in Lean4

## Run all the exercises

```
lake exe leetcode
```

## Run a single exercise

```
lake exe <name>
```

where `name` is given in the following table:

| Exercise | Implementation | Test name | Bench name |
| -------- | -------------- | --------- | ---------- |
| [twoSum](https://leetcode.com/problems/two-sum/) | [TwoSum.lean](./Leetcode/TwoSum.lean) |  `twosum-test` | `twosum-bench` |
| [reverse](https://leetcode.com/problems/reverse-integer/) | [Reverse.lean](./Leetcode/Reverse.lean) |  `reverse-test` | |