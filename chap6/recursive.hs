-- Recursive function 
factorial :: Int -> Int
factorial n = product[1..n]

-- recursive fact
fact :: Int -> Int
fact 0 = 1
fact n  = n  * fact (n - 1) 


