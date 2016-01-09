lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
-- "sayMe 3" outputs "Three!"
-- "sayMe 4" outputs "*** Exception: chapter3-syntax-in-functions/pattern-matching.hs:(6,1)-(8,18): Non-exhaustive patterns in function sayMe"

-- can also be implemented as "factorial n = product [1..n]"
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors
    :: (Double, Double) -> (Double, Double) -> (Double, Double)
-- BAD:
-- addVectors a b = (fst a + fst b, snd a + snd b)
-- GOOD (Increases readability!):
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

third :: (a, b, c) -> c
third (_, _, c) = c

-- Trigger an error: error "Something bad happened!"
head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long. The first two elements are: " ++ show x ++ " and " ++ show y

-- A function that only handles lists with three elements:
badAdd :: (Num a) => [a] -> a
badAdd (x:y:z:[]) = x + y + z

firstLetter :: String -> String
firstLetter "" = "An empty string! Whoops!"
firstLetter fullString@(x:xs) = "The first letter of " ++ fullString ++ " is " ++ [x]


