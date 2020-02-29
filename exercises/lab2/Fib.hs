module Fib where

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

tail_fib n = tail_fib' n 1 0

tail_fib' n prev curr
    |    n <= 0 = curr
    |    otherwise = tail_fib' (n-1) (prev + curr) prev
