type Pos = (Int,Int)

Origin :: Pos
Origin = (0,0)

data Move = North | South | East | West

move :: Move -> Pos -> Pos
move North (x,y) = (x,y+1)
move South (x,y) = (x,y-1)
move East  (x,y) = (x+1,y)
move West  (x,y) = (x-1,y)

moves :: [Move] -> Pos -> Pos
moves [] p = P
moves (m:ms) p = moves ms (move m p)

moves2 :: [Move] -> Pos -> Pos
moves ms p = foldl (flip move) p ms