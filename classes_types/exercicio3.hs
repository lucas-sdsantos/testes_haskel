-- a (Haskell) <T> (Java)
data Tree a = Leaf a 
            | Node (Tree a) (Tree a)
            deriving (show)

-- Leaf 1
-- Node (Leaf 1) (Leaf 2)
-- Dados somente nas folhas (TRIE)


-- Node ( Node (Leaf1) (Leaf 2)) (Leaf 3)
--         ( )
--     ( )      (3)
--  (1)   (2) 

