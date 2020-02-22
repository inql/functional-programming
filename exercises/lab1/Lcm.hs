-- calculates Least common multiple
-- Load it by using :l Lcm.hs in ghci


module Lcm where

import Gcd

lcm' n m = div (n * m) (gcd' n m)
