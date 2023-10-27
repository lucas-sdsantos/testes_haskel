-- Maybe
-- data Maybe a = Nothing | Just a

cabeca :: [a] -> a
cabeca [] = error "Lista vazia."
cabeca (x:_) = x

cabeca1 :: [a] -> Maybe a
cabeca1 [] = Nothing
cabeca1 (x:_) = Just x
