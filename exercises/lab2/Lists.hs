module Lists where

append [] m = m
append (x:xs) m = x:(append xs m)

member x [] = False
member x (y:ys) = if x == y then True else member x ys

reverse' [] = []
reverse' (x:xs) = append (reverse xs) [x]

last' [x] = x
last' (x:xs) = last' xs

delete' x [] = []
delete' x (y:ys)
    |   x == y = delete' x ys
    |   otherwise = (y:delete' x ys)


split' x l = split_loop' x l [] []

split_loop' x [] l1 l2 = [l1,l2]
split_loop' x (l:ls) l1 l2
    | x < l = split_loop' x ls (l:l1) l2
    | otherwise = split_loop' x ls l1 (l:l2)


map' f [] = []
map' f (x:xs) = (f x):(map' f xs)

map2' _ [] _ = []
map2' _ _ [] = []
map2' f (x:xs) (y:ys) = (f x y): (map2' f xs ys)

pairing' [] _ = []
pairing' _ [] = []
pairing' (x:xs) (y:ys) = (x,y):(pairing' xs ys)

filter' p [] = []
filter' p (x:xs)
    | (p x) = x:(filter' p xs)
    | otherwise = filter p xs

