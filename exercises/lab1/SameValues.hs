-- Checks if f(x,y) == g(x,y)
-- Load it by using :l SameValues.hs in ghci
module SameValues where

plus x y = x + y
times x y = x * y
same_values p1 p2 x y = (p1 x y) == (p2 x y)
