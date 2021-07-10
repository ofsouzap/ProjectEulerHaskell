main = do
    print ( sum [ (read [x]::Int) | x <- (show (2^1000)) ] )
