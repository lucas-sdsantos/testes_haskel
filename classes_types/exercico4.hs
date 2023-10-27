data Tree a = Leaf a 
            | Node (Tree a) (Tree a)
            deriving (show)

balanced :: Tree a -> Bool
balanced (Leaf _) = True
balanced (Node e d) = if (mod (leafs a) - (leafs b)) > 1 = False
                      else True

leafs :: Tree -> Int
leafs (Leaf _) = 1
leafs (Node a b) = (leafs a) + (leafs b)

-- não finalizado
