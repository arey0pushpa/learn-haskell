{-- n = a `div` length xs
        where
             a = 10
             xs = [1,2,3,4,5] 
--}

--last1 :: [Int] -> Int
last1 xs = head(reverse xs)
init1 xs = tail(reverse xs) 

last2 xs = head (drop (n - 1) xs)
           where n = length xs




init2 xs  = head (take (n - 1) xs)
              where n = length xs
