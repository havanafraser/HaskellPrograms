checkAdjustment:: Int -> IO()
checkAdjustment adjustmentDay
 | adjustmentDay > 25 = print "Input adjustment days is over 25, please run program again"
 | adjustmentDay < -25 = print "Input adjustment days is less than -25, please run program again"

main :: IO()
main = do
    -- Change your start date accordingly here --
    let inputDate = (21, 12, 3000)

    {- For debugging
    print inputDate
    putStrLn "Please enter the number of days you wish to adjust your date by (-25 to 25):"
    -}

    -- Change your adjustment days here --
    let inputAdjust = -26
    checkAdjustment inputAdjust

