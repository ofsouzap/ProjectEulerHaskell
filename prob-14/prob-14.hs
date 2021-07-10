import Data.Function
import Data.List

collatz x
    | x `mod` 2 == 0 = x `div` 2
    | otherwise = (3*x) + 1

cLen x
    | x == 1 = 1
    | otherwise = (cLen (collatz x)) + 1

main = do
    print (maximumBy (compare `on` (\a -> cLen a)) [ x | x <- [1..1000000]])
