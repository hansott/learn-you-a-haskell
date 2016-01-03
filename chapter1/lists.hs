-- strings are lists of characters
-- because of this, we can use list functions on
-- strings, which is really handy
-- "hello" is the same as the list ['h', 'e', 'l', 'l', 'o']

-- ++ operator is used for concatenation
-- concatLists [1,2] [3,4] returns [1,2,3,4]
-- concatLists "Hello" " world!" returns "Hello world!"
-- Note: be careful when appending long strings using ++
concatLists x y = x ++ y

-- prependToList 3 [1,2,3] returns [3,1,2,3]
-- Note: [1,2,3] is justt syntactic sugar for 1:2:3:[]
prependToList toAdd list = toAdd : list

-- Returns the element of a list at the given index
-- getElementAtIndex [1,2,3] 0 returns 1
-- getElementAtIndex [1,2,3] 1 returns 2
getElementAtIndex list index = list !! index

-- Returns the first element of a list
getTheFirstElementOf list = head list

-- Returns the last element of a list
getTheLastElementOf list = last list

-- Returns all elements of a list except the first
getTheTailOf list = tail list

-- Returns all elements of a list except the last
getAllExceptLastOf list = init list

-- My first attempt at a list sum function, hooray!
calculateSumOf list = if null list
                        then 0
                      else if length list == 1
                        then getTheFirstElementOf list
                      else getTheFirstElementOf list + calculateSumOf (getTheTailOf list)

-- Returns a list reversed
-- getReversedName "Hans Ott" returns "ttO snaH"
getReversedName name = reverse name

-- Returns the first n elements of a list
-- getTheFirstNElements [1..20] 3 returns [1,2,3]
getTheFirstNElements list amount = take amount list

-- 2 `isElementOfList` [1,2] returns True
-- 2 `isElementOfList` [1,3] returns False
isElementOfList needle haystack = elem needle haystack
isElementOfList' needle haystack = needle `elem` haystack

-- Other functions: drop, maximum, minimum, sum, product, ...
