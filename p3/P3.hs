--
-- CS 430 Spring 2019 P3 (Haskell 1)
--
-- Name: Jacob Zorniak
--

module P3 where

-- A list of all factors of n.
factors :: Integral a => a -> [a]
factors n 
    | (n <= 0) = [] 
    | otherwise = [x | x <- [1..n], n `mod` x == 0]

-- True iff n is prime.
isPrime :: Integral a => a -> Bool
isPrime n 
    | (n <= 0) = False
    | otherwise = (length $ factors n) == 2

-- A list of all prime factors of n.
primeFactors :: Integral a => a -> [a]
primeFactors n 
    | (n <= 0) = []
    | otherwise = filter isPrime $ factors n

-- A list of primes up to n.
primesUpTo :: Integral a => a -> [a]
primesUpTo n 
    | (n <= 0) = []
    | otherwise = [n | n <- [2..n], isPrime n]

-- True iff n is a perfect number.
-- A number n is perfect if the sum of its factors is 2*n.
isPerfect :: Integral a => a -> Bool
isPerfect n 
    | (n <= 0) = False
    | otherwise = (sum $ factors n) == 2 * n

-- A list of all perfect numbers up to n.
perfectUpTo :: Integral a => a -> [a]
perfectUpTo n 
    | (n <= 0) = []
    | otherwise = [n | n <- [1..n], isPerfect n]

-- The next prime greater than n.
nextPrime :: Integral a => a -> a
nextPrime n
    | (n < 2) = 2
    | otherwise = let x = n + 1 in (if isPrime x then x else nextPrime (n + 1)) 

-- A list of the first n primes.
generatePrimes :: Integral a => a -> [a]
generatePrimes n = generatePrimesHelper n 0
generatePrimesHelper n i
    | (n <= 0) = []
    | otherwise = let x = nextPrime i in x: (generatePrimesHelper (n - 1) x)

