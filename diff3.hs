diff1 :: Int -> Int -> Int -> IO()
diff1 a b c
 print Bool

main :: IO()
main = do
    putStrLn "This program will determine if all numbers are the same (FALSE) or different (TRUE)"
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