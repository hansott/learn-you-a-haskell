-- Check type of expression in ghci with ":t expression"

-- 'a' :: Char means "a has type of Char"
-- "20 :: Float" outputs "20.0"

-- Type Classes:
-- Eq: Equality
-- Ord: Ordering
-- Show
-- Read
-- Enum
-- Bounded
-- Num: All numbers
-- Floating: Float and Double
-- Integral: Whole numbers

-- fromIntegral takes an integral number and turns it into a more general number:
-- ERROR: "length [1,2,3] + 3.2"
-- GOOD: "fromIntegral(length [1,2,3]) + 3.2"
