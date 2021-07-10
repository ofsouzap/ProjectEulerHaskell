import System.Environment

fac a b = mod b a == 0
prm x = not (any (\a -> fac a x) [2..(x-1)])
lgstPF x = head [a | a <- [x,(x-1)..2], fac a x, prm a]

main = do
    print (lgstPF 600851475143)
