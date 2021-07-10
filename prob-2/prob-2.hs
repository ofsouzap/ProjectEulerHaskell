fib n
    | n == 0 = 1
    | n == 1 = 1
    | otherwise = (fib (n-1)) + (fib (n-2))

main = do
    print (sum [fib x | x <- [1..], fib x <= 4000000, x `mod` 2 == 0])
