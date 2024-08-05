main = do
    putStrLn "Please enter your number: "
    userNum <- getLine
    let num = read userNum::Int
    print (num * num * num)
