-- 1
-- Type ghci to open it up in your terminal
-- Load script with :l tutorial.hs
-- :quit exits the GHCi

-- 2
{- 
Beginning of multiline comment
-}

-- 3
-- Import a module
import Data.List
import System.IO

-- 4
-- Find max and min values
maxInt = maxBound :: Int
minInt = minBound :: Int
{- 
*Main> maxInt 
9223372036854775807

*Main> minInt 
-9223372036854775808
-}

-- 5 
-- Integer : Unbounded whole number

-- 6
-- Float : Single precision floating point number
-- Double : Double precision floating point number (11 pts precision)
bigFloat = 3.99999999999 + 0.00000000005

-- 7
-- Bool : True or False
-- Char : Single unicode character denoted with single quotes
-- Tuple : Can store a list made up of many data types

-- 8
-- You declare the permanent value of a variable like this
always5 :: Int
always5 = 5

-- ---------- MATH ----------
-- 9
sumOfVals = sum [1..1000]
{-
*Main> sumOfVals 
500500
-}

addEx = 5 + 4
subEx = 5 - 4
divEx = 5 / 4
multEx = 5 * 4

-- 10
--mod is a prefix operator
modEx = mod 5 4

--with back ticks can be used as infix operator
modEx2 = 5 `mod` 4

-- negative numbers must be surrounded with parenthesess
negNum = 4 + (-5)

-- :t sqrt
-- sqrt :: Floating a => a -> a

-- If you define an Int you must use fromIntegral to use it with sqrt
-- :t sqrt shows that it returns a floating point number
num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9)

-- Built in math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- Also sin, cos, tan, asin, atan, acos, sinh, tanh, cosh, asinh, atanh, acosh

-- Logical operators

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- how works addition funtion
-- :t (+)
-- (+) :: Num a => a -> a -> a

-- how truncate works
-- :t truncate
-- truncate :: (Integral b, RealFrac a) => a -> b

-- how concatenate lists
primeNumbers = [3,5,7,11]
morePrime = primeNumbers ++ [13,17,19,23,29]

-- to reload changes is the .hs file
-- :r

-- other wat to define a list
favNums = 2 : 7 : 21 : 66 : []

-- list inside of a list
multList = [[3,5,7], [11,13,17]] 

-- add a number at the beginning of a list
morePrimes2 = 2 : morePrime

-- Length of a list
lenPrime = length morePrimes2

-- reverse a list
revList = reverse morePrimes2   

-- check if a list is empty
isListEmpty = null morePrimes2

-- get a particular value of a list
secondPrime = morePrimes2 !! 1

-- first and last number of a list
firstPrime = head morePrimes2
lastPrime = last morePrimes2

-- everything but the last value
primeInit = init morePrimes2

-- take 3 first values
first3Primes = take 3 morePrimes2

-- exclude first 3 values
removedPrimes =  drop 3 morePrimes2

-- check if a value is in the list
is7InList = 7 `elem` morePrimes2

-- get the maximun and minimun value of a list
maxValue = maximum morePrimes2
minValue = minimum morePrimes2

-- Get product of values in list (Value all can evenly divide by)
newList = [2,3,5]
prodPrimes = product newList
newList2 = [2,5,10,2]
prodPrimes2 = product newList2

-- create a list from 0 to 10
zeroToTen = [0..10]

-- Create list of evens by defining the step between the first 2 values
evens = [2, 4..20]

-- create a list of letters
letters = ['A', 'B'..'Z']
letters2 = ['A', 'C'..'Z']

-- You can generate an infinite list and Haskell will only generate what you need
infinPow10 = [10,20..]

-- repeat repeats a value a defined number of times
many2s = take 10 (repeat 2)

-- replicate generates a value a specified number of times
many3s = replicate 10 3

-- cycle replicates the values in a list indefinitely 
cycleList = take 10 (cycle [1,2,3,4,5])
cycleList2 = take 15 (cycle [2,4,6,7,10])

-- You could perform operations on all values in a list
-- Cycle through the list storing each value in x which is multiplied by 2 and
-- then stored in a new list
listTimes2 = [x*2 | x <- [0..100]]

-- We can filter the results with conditions
listTimes3 = [x*3 | x <- [0..20]]
-- [0,3,6,9,12,15,18,21,24,27]

listTimes3' = [x*3 | x <- [0..20], x*3<50]
-- [0,3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48]

listTimes3'' = [x*3 | x <- [0..20], x<10]
-- [0,3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60]

-- Return all values that are divisible by 13 and 9
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

-- Sorting functions

-- Sort a list
sortedList = sort [9,1,5,8,7,4,2]

-- zipwith can combine lists using a function
sumOfList = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]

-- Filter returns a list of items that match a condition
listBiggerThen10 = filter (>10) sumOfList

-- takeWhile returns list items until the condition is false
upTo10 = takeWhile (<10) sumOfList
evensUpTo20 = takeWhile (<=20) [2,4..]

-- foldl applies the operation on each item of a list
-- foldr applies these operations from the right
multOfList = foldl (*) 1 [2,3,4,5]
multOfList2 = foldl (*) 2 [2,3,4,5]
divOfList = foldl (/) 64 [4,2,4]

multOfListRigth = foldr (*) 1 [2,3,4,5]

-- ---------- LIST COMPREHENSION ----------

-- We can generate a list from 1 to 10 to the power of 3
power3List = [3^n | n <- [1..10]]

-- We can filter the results to only show values divisible by 9
power3ListDiv9 = [3^n | n <- [1..10], 3^n `mod` 9 == 0]

-- We can have more than one filter
power3Div9 = [3^n | n <- [1..10], 3^n `mod` 9 ==0]
power3Div9Lower100 = [3^n | n <- [1..10], 3^n `mod` 9 ==0, 3^n <= 1000]
power3Div9Bet100N1000 = [3^n | n <- [1..10], 3^n `mod` 9 ==0, 3^n <= 1000, 3^n `mod` 9 ==0, 3^n >= 100]

-- Generate a multiplication table by multiplying x * y where y has the values
-- 1 through 10 and where x does as well
multTable = [[x*y | x <- [1..10]] | y <- [1..10] ]


-- ---------- TUPLES ----------
-- Stores list of multiple data types, but has a fixed size

randTuple = (1,"Random tuple")

-- A tuple pair stores 2 values
bobSmith = ("Bob Smith",52)

-- Get the first value
bobsName = fst bobSmith
 
-- Get the second value
bobsAge = snd bobSmith

-- zip can combine values into tuple pairs 
names = ["Bob","Mary","Tom"]
addresses = ["123 Main","234 North","567 South"]
 
namesNAddress = zip names addresses 
-- [("Bob","123 Main"),("Mary","234 North"),("Tom","567 South")]



-- ---------- FUNCTIONS ----------
-- ghc --make another.hs  compiles your program and executes the main function
 
-- Functions must start with lowercase letters
 
-- to execute the 'another' executable 
-- $ ./another 
-- What's your name: 
-- 45454
-- Hello 45454


-- Create a function 
-- define the signature (function declaration)
addMe :: Int -> Int -> Int

-- function definition
-- funtionName param1 param2 = operation (result)
addMe x y = x + y
-- addMe 10 22
-- 32

-- Without function declaration
sumMe x y = x + y

-- Another function
addTuple :: (Int, Int) -> (Int, Int) -> (Int, Int) 

addTuple (a,b) (c,d) = (a+c, b+d)
-- addTuple (1,4) (2,10)
-- (3,14)

-- int to String function
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You are an adult"
whatAge x = "Nothing"


-- recursion
factorial 0 = 1
factorial x = x * factorial (x-1)

-- another factorial
prodFact x = product [1..x]

-- Boolean function (With guards)
isOdd :: Int -> Bool

isOdd x 
  | x `mod` 2 == 0 = False
  | otherwise = True
  
isEven x = x `mod` 2 == 0

-- more guards
whatGrade :: Int -> String

whatGrade age
  | (age >= 5) && (age <= 6) = "Kindergarten"
  | (age > 6) && (age <= 10) = "Elemntary School"
  | (age > 10) && (age <= 14) = "Middle School"
  | (age > 14) && (age <= 18) = "High School"
  | otherwise = "Go to College"




  