tuple = (1, 'a', "hello")

listOfTuples = [(1, 2), (3, 4), (5, 6)]

getTheFirstTupleComponent tuple = fst tuple
getTheSecondTupleComponent tuple = snd tuple

-- createTuplesFromLists [1,2,3] [1,2,3] returns [(1,1),(2,2),(3,3)]
createTuplesFromLists listA listB = zip listA listB

-- Works also on infinite lists! Nice.
-- zip [1..] ["apple", "orange", "cherry"]

makeTuplesWithlistComprehensions = [ (a, b) | a <- [1..10], b <- [1..10] ]

rightTriangles = [(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2, a + b + c == 24 ]


