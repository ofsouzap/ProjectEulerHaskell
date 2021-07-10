fac a b = mod b a == 0
d n = sum [x | x <- [1..(n-1)], fac x n]
amicable a = a == d (d a) && a /= d a

main = do
    print (sum [x | x <- [1..10000], amicable x])
