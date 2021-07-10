main = do
    print (sum [ read [x] | x <- (show (product [2..100])) ])
