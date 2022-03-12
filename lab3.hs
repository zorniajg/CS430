--Jacob Zorniak

sumOfFirstN :: Integer -> Integer
sumOfFirstN n = n * (n+1) `div` 2

points :: Int -> Int
points n
    | (9 < n) || (n < 1) = 0
    | (n <= 3)           = 12 - 2*n
    | otherwise          = 9 - n

myHead :: [a] -> a
myHead (x:xs) = x

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n-1)

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + (myLength xs)

myConcat :: [a] -> [a] -> [a]
myConcat (x:xs) y = x:(myConcat xs y)

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib(n - 2) + fib(n - 1)

ffib :: Int -> Int
ffib n = fibAccum 1 1 n
fibAccum e0 e1 k
| (k == 0) = e0
| (k == 1) = e1
| otherwise = fibAccum e1(e0+e1) (k-1)

indexOf v list = indexOfHelper v list 0
indexOfHelper v [] _ = -1
indexOfHelper v (x:xs) i
| (v == x)  = i
| otherwise = indexOfHelper v xs (i+1)

eachIndexOf v list = eachIndexOfHelper v list 0
eachIndexOfHelper v [] i = []
eachIndexOfHelper v (x:xs) i
| (v==x) = i:(eachIndexOfHelper v xs (i+1))
| otherwise = eachIndexOfHelper v xs (i+1)
