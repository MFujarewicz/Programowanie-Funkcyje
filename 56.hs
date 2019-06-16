a = [1, 2, 3, 4, 5, 6, 0, 0, 4, 1, 1, -20, -20, 1]

main = print (f a)

f x = foldl (\x y -> x*(-1) + y) 0 (if odd(length a) then x else x ++ [0])
