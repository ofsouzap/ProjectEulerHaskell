fac a b = mod b a == 0
prm x = not (any (\a -> fac a x) [2..(x-1)])

main = do
    print (sum [x | x <- [2..2000000], prm x])
