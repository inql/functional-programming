module Exp where

exp' b 0 = 1
exp' b 1 = b
exp' b e = (exp' b (div e 2)) * (exp' b (div e 2))


square x = x * x

pow' x n
    |   n==0 = 1
    |   n==1 = x
    |   even n = square (pow' x ( div n 2))
    |   odd n  = x * (pow' x (n-1))



tail_pow x n = tail_pow' x n 1 

tail_pow' x n acc
    |   n==0 = acc
    |   n==1 = (acc * x)
    |   even n = tail_pow' (x*x) (div n 2) acc
    |   odd n = tail_pow' (x*x) (n-1) (acc * x) 
