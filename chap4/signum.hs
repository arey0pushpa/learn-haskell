
signum1 n | n < 0  = -1
         | n == 0 =  0
         | n >  0  =  1


test :: [Char] -> Bool
test('a': _) = True
test(_) = False


pred1 :: Int -> Int
pred1 0 = 0
pred1 (n) = n-1

const1 :: a -> (b-> a)
const1 x  = \_ -> x

odds1 :: Int -> [Int]
odds1 n = map f [0..n-1]
         where f x = 2 * x + 1

oddy :: Int -> [Int]
oddy n = map (\x -> 2 * x + 1) [0..n-1]

halve :: Integral a =>  [a] -> ([a] , [a])
halve xs = splitAt k xs
            where k = (length xs) `div`  2

saiftail1 :: [a] -> [a]
saiftail1 xs = if null xs == True  then [] 
               else tail xs

saiftail2 :: [a] -> [a]
saiftail2 xs | null xs == True   = []
             | otherwise = tail xs

saiftail3 :: [a] -> [a]
saiftail3 [] = []
saiftail3 xs = tail xs

{--
(:::) :: Bool -> Bool -> Bool
True ::: False = True
True ::: True  = True
False ::: True = True
False ::: False = False
--}


quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (x:xs) = quickSort ys ++ [x]++ quickSort zs 
                  where 
                   ys = [y | y <- xs, y <= x] 
                   zs = [z | z <- xs , z > x]












