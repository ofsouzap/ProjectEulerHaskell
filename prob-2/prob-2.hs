fib n
    | n == 0 = 1
    | n == 1 = 1
    | otherwise = (fib (n-1)) + (fib (n-2))

--The 33rd fib value would be greater than 4 million (pre-calculated)
--Therefore, the 32nd fib value is the last lesser than 4 million
maxFibI = 32

main = do
    print (sum [fib x | x <- [1..maxFibI], (fib x) `mod` 2 == 0])
