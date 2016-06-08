lucky :: Int -> String
lucky 7 = "yeah you got it dude"
lucky x = "sorry darling no luck"

first :: (a , b , c) -> a
first (a,_,_) = a

second :: (a,b,c) -> b
second (_,b,_) = b

third :: (a,b,c) -> c
third (_,_,c) = c

addTuple :: Num a =>  [(a, a)] -> [a]
--addTuple xs = [ fst x + snd x | x <- xs ]
addTuple xs = [ a + b | (a,b) <- xs ]


myCompare :: (Ord a) => a -> a -> Ordering 
myCompare a b 
             | a == b = EQ
             | a <= b = LT
             | otherwise = GT

damnCompare :: (Num a, Eq a) => a -> a -> String 
damnCompare x y 
             | x `com` y == 4 = "yeah dude"
             | x `com` y == 14 = "My dude"
             | otherwise = "go to abhi"
             where com a b = a + b

calcBmis xs = [all | (w,h) <- xs , let all = w + h]

describeList :: [a] -> String
describeList xs = "your list is " ++ case xs of  [] -> "empty"
                                                 (x:[]) -> "Singleton"
                                                 (x:xs) -> "full"

take1 :: (Num n , Ord n) => n -> [a] -> [a] 
take1 n (x : xs)
              | n <= 0  = []
              | otherwise = x : take1 (n-1) xs

reverse1 :: [a] -> [a]
reverse1 [] = []
reverse1 (x:xs) = reverse1 (xs) ++ [x]  


zip' :: [a] -> [b] -> [(a,b)]
zip'  _  [] = []
zip' [] _   = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys


elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False 
elem' a (x:xs) 
            | a == x    = True
            | otherwise =  elem' a  xs


quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort smaller ++ [x] ++ quicksort larger
                 where smaller = [ a | a <- xs , a <= x]
                       larger  = [ b | b <- xs , b > x]
                       
which whwn is where whwrw eriwiw
w
try
do
