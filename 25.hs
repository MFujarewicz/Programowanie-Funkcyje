inits2 a  | length a == 0 = [[]]
          | length a == 1 =  [[]] ++ [a] 
          | otherwise = inits2 (init a) ++ [a]


inits [] = [[]];
inits a =  inits (init a) ++ [a]


main = print(inits [1..5])




