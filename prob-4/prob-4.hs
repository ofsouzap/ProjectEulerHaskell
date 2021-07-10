pal :: (Eq a) => [a] -> Bool
pal x
    | length x == 0 = True
    | length x == 1 = True
    | otherwise = (head x == last x) && pal (drop 1 (init x))

vs = [ a*b | a <- [999,998..100], b <- [999,998..100]]

main = do
    print (maximum [ x | x <- vs, pal (show x) ])
