max2 :: Int -> Int -> IO()
max2 i j
    | i > j = print i
    | otherwise = print j


main :: IO()
main = do
    putStrLn "Please enter number 1: "
    firstNum <- getLine
    let a = read firstNum::Int
    putStrLn "Please enter number 2: "
    secondNum <- getLine
    let b = read secondNum::Int
    max2 a b
