namespace Leetcode.Test

def assertFailure (msg := "assertion failed") : IO α :=
  throw (IO.userError msg)

def assertBool (p: Bool) (msg := "assertion failed") : IO Unit :=
  unless p do assertFailure msg

def assertEqual [BEq α] [ToString α] (a : α) (b : α) (msgPrefix := "") : IO Unit :=
  unless a == b do assertFailure s!"{msgPrefix}{a} is not equal to {b}"