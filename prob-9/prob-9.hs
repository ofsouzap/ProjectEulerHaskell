valLim = 10000

main = do
    print ([(a,b,c,a*b*c) | a <- [1..valLim], b <- [1..valLim], c <- [1..valLim], a < b, b < c, a^2 + b^2 == c^2, a+b+c==1000])
