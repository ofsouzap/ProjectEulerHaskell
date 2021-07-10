fac a b = mod b a == 0
prm x = not (any (\a -> fac a x) [2..(x-1)])

main = do
    print ([x | x <- [2..], prm x] !! 10000)
