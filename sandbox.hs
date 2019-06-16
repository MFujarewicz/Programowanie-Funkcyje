main = print (dec b)
b = [(3,'a'),(1,'l'),(1,'a'),(1,'m'),(1,'a'),(1,'k'),(3,'o'),(1,'t'),(3,'a')]

suma [] = 0
suma (x:xs) = x + suma xs

a = [1..99999]++[2]



factorial n = product[1..n]

contains e list = e `elem` list

isDup a | length a<=1 = False  
        | head a `elem` tail a = True
        | otherwise = isDup(tail a)


nub a | isDup a = a

delete deleted xs = [ x | x <- xs, i <-[0..2], x /= deleted]

occurs value [] = 0
occurs value (x:xs) = (if value == x then 1 else 0) + occurs value xs

dec a | length a == 0 = []
      | otherwise = test (head a) ++ dec (tail a)

test a = test2 (fst a) (snd a)

test2 a b | a == 1 = [b]
          | otherwise = test2 (a-1) b ++ [b]