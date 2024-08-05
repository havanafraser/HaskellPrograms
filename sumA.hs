sumA :: Int
sumA a 
 | a == 1 = 1
 | a > 1 = n + sumA (a-1)

main
main = do
    putStrLn "This program sum and add your numbers"
    putStrLn "Please enter number: "
    num <- getLine
    let a = read num::Int
    sumA a