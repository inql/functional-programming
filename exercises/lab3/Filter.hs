module Filter where

filter' _ [] = []
filter' p (l:ls)
    |   p l = l:(filter' p ls)
    |   otherwise = filter' p ls
