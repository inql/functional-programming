-- calculates Greatest common divisor
-- Load it by using :l Gcd.hs in ghci

module Gcd where

gcd' n 0 = n
gcd' n m = gcd' n (m `mod` n)
