--
-- CS 430 P4 (Haskell 2)
--
-- Name: Jacob Zorniak
--

module P4 where
import Defs

-- calculate the result of an expression
eval :: Expr -> Int
eval e = case e of
  EInt i -> i
  EAdd e1 e2 -> eval e1 + eval e2
  ESub e1 e2 -> eval e1 - eval e2
  EMul e1 e2 -> eval e1 * eval e2

-- count the total number of arithmetic operations in an expression
countOps :: Expr -> Int
countOps e = case e of
  EInt _ -> 0
  EAdd e1 e2 -> 1 + (countOps e1) + (countOps e2)
  ESub e1 e2 -> 1 + (countOps e1) + (countOps e2)
  EMul e1 e2 -> 1 + (countOps e1) + (countOps e2)

-- calculate the height of the expression tree
-- height of one node = 1
height :: Expr -> Int
height e = case e of
  EInt _ -> 1
  EAdd e1 e2 -> 1 + (height e1) + (height e2)
  ESub e1 e2 -> 1 + (height e1) + (height e2)
  EMul e1 e2 -> 1 + (height e1) + (height e2)

-- flatten the expression into a postfix string representation
-- use "(show i)" to convert int i to a string
postfix :: Expr -> String
postfix e = case e of
  EInt i -> (show i)
  EAdd e1 e2 -> (postfix e1) ++ " " ++ (postfix e2) ++ " +"
  ESub e1 e2 -> (postfix e1) ++ " " ++ (postfix e2) ++ " -"
  EMul e1 e2 -> (postfix e1) ++ " " ++ (postfix e2) ++ " *"

-- extract a sorted list of all unique integers in an expression
uniqInts :: Expr -> [Int]
uniqInts e = case e of
  EInt i -> [i]
  EAdd e1 e2 -> uniq $ sort (uniqInts e1 ++ uniqInts e2)
  ESub e1 e2 -> uniq $ sort (uniqInts e1 ++ uniqInts e2)
  EMul e1 e2 -> uniq $ sort (uniqInts e1 ++ uniqInts e2)
  
-- returns a copy of a list with duplicates removed
uniq :: Eq t => [t] -> [t]
uniq [] = []
uniq (x:xs) = x:uniq (filter ((/=) x) xs)

-- returns a sorted copy of a list using quicksort
sort :: Ord t => [t] -> [t]
sort [] = []
sort (x:xs) = (sort $ filter (<=x) xs) ++ [x] ++ (sort $ filter (>x) xs)
