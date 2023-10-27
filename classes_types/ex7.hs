-- 1 + 2 * 3

--     +
--  1     *
--      2   3

data Expr = Val Int
          | Add Expr Expr
          | Mul Expr Expr
          deriving (Show)

size :: Expr -> Int
size (Val _)   = 1 
size (Add e d) = size e + size d
size (Mul e d) = size e + size d

eval :: Expr -> Int
eval (Val n)   = n
eval (Add e d) = eval e + eval d
eval (Mul e d) = eval e * eval d

show :: Expr -> String
show (Val n)   = Prelude.show n
show (Add e d) = "(" ++ Main.show e ++ "+" ++ Main.show d ++ ")"
show (Mul e d) = "(" ++ Main.show e ++ "*" ++ Main.show d ++ ")"