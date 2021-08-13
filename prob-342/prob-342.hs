fac a b = mod b a == 0
prm x = not (any (\a -> fac a x) [2..(x-1)])

coPrm a b = not (any (\x -> ((prm x) && (fac x a) && (fac x b))) [2..(minimum [a,b])])

totient x = length [n + 1 | n <- [1..x], coPrm n x ]

isCube x = any (\n -> x == (n^3)) [1..x]

test :: Integer -> Bool
test x = isCube (totient (x^2))

main = do
    print (sum [x | x <- [1..(10^10)], test x])