

double :: Num a => a -> a
double x = x + x

quadruple :: Num a => a -> a
quadruple = double . double 

factorial :: (Num a , Enum a) => a -> a 
factorial n = product [1..n]

average ::[Int] -> Int
average ns = sum ns `div` length ns
