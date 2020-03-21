module Functions where

import FoldR

prod' = foldr' (*) 1
reverse' = foldr' (\x acc -> acc ++ [x]) []
and' = foldl' (&&) True
nwd' (x:xs) = foldr' gcd x xs
delete' item = foldr' (\x xs -> if x == item then xs else (x:xs)) []
length' = foldr' (\_ n -> n + 1) 0
map' f = foldr' (\x xs -> (f x):xs) []
filter' p = foldr' (\x xs -> if p x then x:xs else xs) []
forall' p = foldl' p True
