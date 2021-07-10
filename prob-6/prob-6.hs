sumOfSquares n = sum [ x*x | x <- [1..n] ]
squareOfSum n = (sum [ x | x <- [1..n] ]) ^ 2
diff n = squareOfSum n - sumOfSquares n

main = do
    print (diff 100)
