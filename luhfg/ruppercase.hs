ruppercase :: [Char] -> [Char]
ruppercase xs = [x | x <- xs ,  x `elem` ['A'..'Z']]

fact :: Integer -> Integer
fact n = product [1..n]

