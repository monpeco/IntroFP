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






