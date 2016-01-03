doubleMe x = x + x

-- bad:
doubleUs x y = x * 2 + y * 2
-- better:
doubleUs' x y = doubleMe x + doubleMe y

-- else is mandatory
doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x

-- ' is a valid character, we usually use ' to denote either
-- a strict version of a function, or a slightly modified version
-- of a function or variable with a smiliar name
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

-- conanO'Brien is a valid function name
-- Note: functions can't begin with capital letters
-- Note: the function doesn't take any parameters
conanO'Brien = "It's a-me, Conan O'Brien!"


