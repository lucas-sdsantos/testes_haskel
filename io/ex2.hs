-- boco do: a indentação faz parte da sintaxe

main = do
        putStrLn "Qual o seu nome?"
        nome <- getLine
        putStrLn ("Alô, " ++ nome ++ "!")