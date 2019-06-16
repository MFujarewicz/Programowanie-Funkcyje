inits a  | length a == 0 = [[]]
         | length a == 1 =  [[]] ++ [a] 
         | otherwise = inits (init a) ++ [a]



inits2 a | length a == 1 =  [[]] ++ [a] 
         | otherwise = inits2 (init a) ++ [a]


inits3 a =  [a] ++ inits3 (init a)

main = print(inits [1..5])




