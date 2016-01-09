lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
-- "sayMe 3" outputs "Three!"
-- "sayMe 4" outputs "*** Exception: chapter3-syntax-in-functions/pattern-matching.hs:(6,1)-(8,18): Non-exhaustive patterns in function sayMe"
