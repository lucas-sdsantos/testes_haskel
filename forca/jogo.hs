import System.IO 

mian = forca

forca :: IO ()
forca = do
    putStrLn "Think of a word: "
    word <- sgetLine
    putStrLn "Try to guess it:"
    play word

sgetLine :: IO String
sgetLine = do
    c <- sgetChar
    if c == '\n'
        then do 
            putChar c
            return []
        else do
            putChar '-'
            cs <- sgetLine
            return (c:cs)

sgetChar :: IO Char 
sgetChar = do
    hSetEcho stdin False
    c <- getChar
    hSetEcho stdin True
    return c

play :: String -> IO ()
play word = do
    putStr "? "
    chute <- getLine
    if chute == word
        then putStrLn "Você acertou"
        else do
            putStrLn (pareia word chute)
            play word

pareia :: String -> String -> String
pareia word chute = [if c `elem` chute then c else '-' | c <- word] 

