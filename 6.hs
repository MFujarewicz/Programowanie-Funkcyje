main = print (newton2 5 2)



newton n k | k>n = error "bad args"
           | n == k || k == 0 = 1 
           | otherwise = newton (n-1) (k-1) + newton (n-1) (k)



newton2 n k = round (newtonNaive n k)

newtonNaive n k | k < 0 = 0
                | k > n = 0
                | otherwise = factorial n / (factorial k * factorial (n-k))


factorial n = product[1..n]

