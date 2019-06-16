a = [1, 1, 1, 2, 2, 1, 1, 1, 5, 5, 2, 2, 1, 6, 6, 6, 6, 7, 6, 6]
main = print (ecd a)



ecd a | length a < 2 = a
      | head a == head (tail a) = ecd (tail a)
      | otherwise = [head a] ++ ecd (tail a)


