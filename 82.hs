import Control.Monad.Writer
main = print(g 97)

f::Int->Int


f x = if x `mod` 2 == 0 then x `div` 2 else 3*x+1

h x | x == 1 = (1)
    | otherwise = (f x)


g :: Int -> Writer (Sum Int, String) Int  
g x | x == 1 = do
        tell (0,"")
        return 1
    | otherwise = do
        result <- g (h x)
        tell (1, show x ++ " ")
        return result