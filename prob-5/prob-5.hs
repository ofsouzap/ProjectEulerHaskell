main = do
    print (head [x | x <- [20..], all (\a -> mod x a == 0) [1..20]])
