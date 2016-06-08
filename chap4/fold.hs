
len :: [a] -> Int
len = foldr (\x y -> 1 + y) (0) 
