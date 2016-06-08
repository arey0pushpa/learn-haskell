
-- Calculating Factors 
-- Very brute force
factors :: Int -> [Int] 
factors x = [y | y <- [1..x] , x `mod` y == 0]

-- A dummy function
prime :: Int -> Bool
prime z = factors z == [1,z]

-- Calculating primes till some integer
primes :: Int -> [Int]
primes n = [x | x <- [2..n] , prime x ]  

-- Zip function 
zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) =  (x,y) :  zip xs ys

-- A Pairs Function
pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

-- Sorted function
sorted :: Ord a =>  [a] -> Bool
sorted xs = 
      and [x <= y | (x,y) <- pairs xs ] 

-- Position function 
position ::  Eq a => a -> [a] -> [Int]
position x (xs) = [y | (w , y) <- zip xs [0..] , w == x]   

-- Calculate Total Lower Alphabets in a String 
lowers :: String -> Int
lowers xs = length[x | x <- xs , isLower x] 



