module FoldR where

foldl' f e [] = e
foldl' f e (x:xs) = foldl f (f e x) xs

foldr' f e [] = e
foldr' f e (x:xs) = f x (foldr' f e xs)


foldl_example1 = foldl' (+) 0 [1,2,3,4]
foldl_example2 = foldl' (*) 1 [1,2,3,4]

foldr_example1 = foldr' (+) 0 [1,2,3,4]
foldr_example2 = foldr' (*) 1 [1,2,3,4]
