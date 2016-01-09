-- Syntax:
-- Single: [output x | x <- list, predicate x, anotherPredicate x]
-- Multiple: [output x y | x <- list1, y <- list2, predicate x y]

doubleEachElementOf list = [x*2 | x <- list]

predicate x = x >= 12
doubleEachElementOf' list = [x*2 | x <- list, predicate x]

names = ["hans", "lisa", "katlijne"]
adjectives = ["saaie", "leuke", "toffe"]

-- describeNames names adjectives
-- ["saaie hans","saaie lisa","saaie katlijne","leuke hans","leuke lisa","leuke katlijne","toffe hans","toffe lisa","toffe katlijne"]
describeNames names adjectives = [adj ++ " " ++ name | adj <- adjectives, name <- names]

isUppercaseLetter character = elem character ['A' .. 'Z']
removeNonUppercase str = [ character | character <- str, isUppercaseLetter character]


