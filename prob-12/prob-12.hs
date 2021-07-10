tri n = sum [1..n]
fac a b = mod b a == 0
facs n = [x | x <- [1..n], fac x n]
valid = [tri x | x <- [1..], length (facs (tri x)) > 500]

main = do
    print (head valid)
