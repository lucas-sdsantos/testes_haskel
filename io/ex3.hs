--- dada um string inverta cada palavra presente nela
--- alo mundo -> ola odnum

--- . : composição de funçõe en haskell
-- do : composição de funções impuras

-- operações de io só podem ser utilizadas dentro do bloco "do"

inverte :: String -> String
inverte = unwords . map reverse . words

main = do
    linha <- getLine
    if null linha 
        then return ()
        else do 
            putStrLn (inverte linha)
            main
