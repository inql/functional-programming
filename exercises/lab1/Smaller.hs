-- checks if one number is smaller/greater (and so on...) than the other one
-- Load it by using :l Smaller.hs in ghci
module Smaller where

smaller x y = x < y

greater x y = y < x

equal x y = not (smaller x y) && not (greater x y)

smaller_equal x y = not (y < x)

greater_equal x y = not (x < y)

not_equal x y = not (equal x y)
