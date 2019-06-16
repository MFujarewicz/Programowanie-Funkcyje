a = [1..1000] ++ [1..1000] ++ [1..1000] ++ [1..1000]
main = print (nub a)


nub a | length a < 2 = a
      | head a `elem` (tail a) = nub (tail a)
      | otherwise = [head a] ++ nub (tail a)
