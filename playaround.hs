adjustDate :: (Int, Int, Int) -> Int -> (Int, Int, Int)
adjustDate (day, month, year) offset
 | day < 1 = invalidDay
 | year > 3000 = invalidYear
 | year < 1600 = invalidYear
 | offset < -25 = invalidInput
 | offset > 25 = invalidInput
{-if month == 2
    then
        febDate
    else
        day = day + d
    if a == 32
        then -}

-- Extracts the day integer from the input tuple --
extractDay :: (Int, Int, Int) -> Int
extractDay (day, _, _) = day

-- Extracts the month integer from the input tuple --
extractMonth :: (Int, Int, Int) -> Int
extractMonth (_, month, _) = month

-- Extracts the year integer from the input tuple --
extractYear :: (Int, Int, Int) -> Int
extractYear (_, _, year) = year
 leapYearCheck year

-- Function checks whether the year is a leap year or not --
leapYearCheck :: Int -> Bool
-- If the year divides by 4 and not by 100 (it is a leap year) or divides by 400 (it IS a leap year)
leapYearCheck year = (year 'mod' 4 == 0 && year 'mod' 100 /= 0) || (year 'mod' 400 == 0)

invalidInput :: IO()
 print "Invalid date"

invalidYear :: IO()
 print "The year you have chosen is not valid (needs to be between 1600 and 3000)"

invalidDay :: IO()
 print "The day you have chosen is not valid (must be between )"

monthDaysList :: Int -> [Int]
monthDaysList year =
    if leapYearCheck year
        -- this is for a leap year --
        then [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        -- this is if it is not a leap year --
            else [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

main :: IO()
let inputDate = (22, 3, 2000)
adjustNum = 15
adjustDate inputDate adjustNum