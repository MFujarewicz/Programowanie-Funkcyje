import Control.Monad.Writer
--main = print(g 98987)

f::Int->Int


f x = if x `mod` 2 == 0 then x `div` 2 else 3*x+1

h :: Int -> Writer (Sum Int,String) Int

h x 
    | x == 1 = do
        tell (1,"dupa")
        return 1 
    | otherwise = do
        tell (1,"test")
        return (f x)


g :: Int -> Writer (Sum Int,String) Int
g x | x == 1 = 1
    | otherwise = do
        tell (1, "prosto")
        return g (h x)
