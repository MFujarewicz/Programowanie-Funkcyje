a = [2, 1, 1,  2, 2, 1, 1, 1, 5, 5, 2, 2, 1, 6, 6, 6, 6, 7, 7]
b = [1..10000]
c = "aaalamakoootaaa"

main = print (pack c)


first a | length a == 0 = []
        | length a == 1 = a
        | head a /= head(tail a) = [head a]
        | head a == head(tail a) = [head a] ++ first (tail a)
        

cutFirst a | length a == 0 = []
           | length a == 1 = []
           | head a /= head(tail a) = tail a
           | otherwise = cutFirst (tail a)


pack a | length a == 0 = []
       | otherwise = [first a] ++ pack (cutFirst a)  