data Nat = Zero | Succ Nat deriving (Show)

-- Nat to Int:
nat2int :: Nat -> Int
nat2int Zero     = 0
nat2int (Succ n) = 1 + nat2int n

-- Int to Nat:
int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Succ (int2nat (n-1))

-- Soma recursiva de dois números Nat:
somar :: Nat -> Nat -> Nat
somar Zero n = n
somar (Succ n) m = Succ (somar n m)

