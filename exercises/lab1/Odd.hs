-- checks if number is even or odd 
-- Load it by using :l Odd.hs in ghci

module Odd where

even' 0 = True
even' n = odd' (n-1)

odd' 0 = False
odd' n = even' (n-1)
