diff1 :: Int -> Int -> Int -> Bool -> IO()
diff1 a b c
 | a == b = False
 | a == c = False
 | b == c = False
 | otherwise = True
 print Bool

main :: IO()
main = do
    putStrLn "Please enter number 1: "
    firstNum <- getLine
    let a = read firstNum::Int
    putStrLn "Please enter number 2: "
    secondNum <- getLine
    let b = read secondNum::Int
    putStrLn "Please enter number 3: "
    thirdNum <- getLine
    let c = read thirdNum::Int
    diff1 a b c