main = print (leavesBT (concatBT 9 a a))

data BTree a = L a | N a (BTree a) (BTree a) deriving Eq

instance Functor BTree where
    fmap f (L x) =  L (f x)
    fmap f (N x left right) = N (f x) (fmap f left) (fmap f right)

instance (Show a) => Show (BTree a) where
    show (L x) = "<" ++ show x ++ ">"
    show (N x l r) = "[" ++ show l ++ ", " ++ show x ++ ", " ++ show r ++ "]"


instance Foldable BTree where
  foldr f z (L x) = f x z
  foldr f z (N x left right) = foldr f (f x (foldr f z right)) left


findInBT search tree = foldr (\x acc -> (x == search) || acc) False tree

countNodes tree = foldr (\_ acc ->  1 + acc) 0 tree

concatBT a l r = N a l r

foldTree f z (L a) = z
foldTree f z (N a l r) = f a (foldTree f z l) (foldTree f z r)



heightBT = foldTree (\_ l r -> (max l r) + 1) 0
leavesBT = foldTree (\_ l r -> l + r) 1




a = N 1 (L 1) (L 2)