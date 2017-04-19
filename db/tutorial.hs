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

:t sqrt
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


