-- Multiply all It arguments
multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z


-- Compare with 100
compareWithHundred :: Int -> Ordering 
compareWithHundred = compare 100 -- Point Free Noatation Cool

-- Section Examples 
divideByTen :: (Floating a) => a -> a
divideByTen = (/ 10)  -- Also a Point free Notation

--Check if all Chars are in UpperCase
isUpperCase :: Char -> Bool
isUpperCase = (`elem` ['A'..'Z'])

