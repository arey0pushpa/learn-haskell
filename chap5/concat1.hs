concat1 :: [[a]] -> [a]
concat1 xss = [x | xs <- xss , x <- xs]
