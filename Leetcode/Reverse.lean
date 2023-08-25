namespace Leetcode.Reverse

--- https://leetcode.com/problems/reverse-integer/
def reverse (i: Int): Int := Id.run <| do
  let rangeMax : Int := (Int.ofNat 2^31) -1 
  let rangeMin : Int := (Int.ofNat 2^31)
  let iAbs := i.natAbs
  let isNeg := i != iAbs
  let range := if isNeg then rangeMin else rangeMax
  let (String.mk cs) := iAbs.repr
  let zeroCodePoint := '0'.toNat
  let mut result : Int := 0
  for c in cs.reverse do
    let digit := c.toNat - zeroCodePoint
    if result > (range - digit) / 10 then return 0
    result := result * 10 + digit
  if isNeg then -1 * result else result