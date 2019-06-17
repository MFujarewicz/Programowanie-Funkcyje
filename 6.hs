main = print (newton3 50000 401)



newton n k | k>n = error "bad args"
           | n == k || k == 0 = 1 
           | otherwise = newton (n-1) (k-1) + newton (n-1) (k)




newton2 n k | k < 0 = 0
            | k > n = 0
            | otherwise = factorial n `div` (factorial k * factorial (n-k))


newton3 n k | k < 0 = 0
            | k > n = 0
            | otherwise = product [(k+1)..n] `div` (factorial (n-k))






factorial n = product[1..n]

