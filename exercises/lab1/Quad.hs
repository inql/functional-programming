-- calculates solutions for quadriatic equation
-- Load it by using :l Quad.hs in ghci
module Quad where

quad a b c = quad' ((b*b) - (4*a*c))
-- those values are dummies, implement them on your own
quad' d 
   |  d>0 = [1,2]
   |  d==0 = [1]
   |  d<0 = []
