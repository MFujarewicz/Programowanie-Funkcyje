a = [1, 1, 1,  2, 2, 1, 1, 1, 5, 5, 2, 2, 1, 6, 6, 6, 6, 7, 7]
b = [1..10000]
c = "aaalamakoootaaa"

main = print (rleDecode(rleEncode c))


first a | length a == 0 = 0
        | length a == 1 = 1
        | head a /= head(tail a) = 1
        | otherwise = 1 + first(tail a)


cutFirst a | length a == 0 = []
           | length a == 1 = []
           | head a /= head(tail a) = tail a
           | otherwise = cutFirst (tail a)


rleEncode a | length a == 0 = []
            | otherwise = [(first a, head a)] ++ rleEncode (cutFirst a)  


rleDecode a | length a == 0 = []
            | otherwise = unvindTuple (head a) ++ rleDecode (tail a)

unvindTuple a = unvindTuple2 (fst a) (snd a)

unvindTuple2 a b | a == 1 = [b]
          | otherwise = unvindTuple2 (a-1) b ++ [b]