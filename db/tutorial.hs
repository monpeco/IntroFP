-- 1
-- Type ghci to open it up in your terminal
-- Load script with :l haskelltut
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

