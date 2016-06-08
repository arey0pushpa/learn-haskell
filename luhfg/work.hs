mult3 :: Int -> Int -> Int -> Int
mult3 a b c = a * b * c

table :: Int -> Int -> Int
table a b = a * b

last1 :: [Int] -> Int
last1 = head . reverse 

compareCombra :: Int -> Ordering
compareCombra = compare 10 


applyTwice ::  (a -> a) -> a -> a 
applyTwice f x  =  f (f x )


zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f [] _ = []
zipWith' f _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f  xs ys

flip' :: (a-> b-> c) -> (b-> a->c)
flip' f x y = f  y x

map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map f xs

filter' :: (a->Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x:xs)
           | p x = x : filter' p xs
           | otherwise = filter' p xs
{--
veryQuickGun :: (Ord a ) => [a] -> [a]
veryQuickGun [] = []
veryQuickGun (x : xs) = 

--}
--
quickGun :: (Ord a) => [a] -> [a]
quickGun [] = []
quickGun (x:xs) = quickGun smaller ++ [x] ++ quickGun larger
                    where smaller = filter' (<= x) xs
                          larger  = filter' (> x) xs


chain :: Int -> [Int]
chain 1 = [1]
chain n 
      | n == 1 = [1]
      | even n = n : chain (n `div` 2) 
      | odd  n = n : chain ( (n * 3) + 1) 

numChains :: Num a => a
numChains = fromIntegral (length ( filter' (isLong) (map chain [1..100])))
            where isLong xs = length xs > 15

numChang :: Int 
numChang = length (filter' (\xs -> length xs >15) (map chain [1..100]))

largestDiv :: Integer
largestDiv = head ( filter p [100000, 99999 ..])
             where p x = x `mod` 3820 == 0

--largestDiv = head (filter (\x -> x `mod` 3820 == 0) [100000,99999..])
--
--

sum100Square :: Integer 
sum100Square = sum [x ^2 | x <- [1..100]]

replicate' :: Int -> a -> [a]
replicate' n a = [a |  x <- [1..n]] 

pyths :: Int -> [(Int,Int,Int)]
pyths n = [(a,b,c) | a <-[1..n], b <- [1..n], c <- [1..n],a ^ 2 + b ^ 2 ==  c ^ 2 , c <= n]


factors ::  Int  -> [Int]
factors n = [ x | x <- [1..n] , n `mod` x == 0]


init1 :: [Int] -> [Int]
init1 xs = init xs 

perfects :: Int -> [Int]
perfects n =  [ x  | x <- [1..n]  , sum (init  $ factors x) == x ]

--couple :: (Enum t2) => (t1 , [t2])
--ple  = [ (x,y) | x <- [1..] ,  ys <- factors [1..] , y <- ys] 

prime :: Int -> Bool
prime n = factors n == [1,n]

primes :: Int -> [Int]
primes n = [ x | x <- [2..n] ,  prime x] 

{--
deadPerfect ::  Int -> [Int]
deadPerfect n = [ a | (a,b) <- couple ,  sum ( init (snd  (a,b))) == a] 
--}



find :: Eq a => a -> [(a,b)] -> [b]
find x t = [b | (z , b) <- t , z == x]

position :: Eq a => a -> [a] -> [Int]
position x xs = [b | (z,b)  <-  zip xs [0..n] , z == x ]
                where n = length xs

{--
superPos :: Eq a => a -> [a] -> [Int]
superPos x xs = [ f  | t <- zip xs [0..n] , let f = find x t , f /=  [] ]  
                where n = length xs

i--}


scalarProd :: [Int] -> [Int] -> Int
scalarProd xs ys = sum [ x * y | (x,y) <- zip xs ys]  
