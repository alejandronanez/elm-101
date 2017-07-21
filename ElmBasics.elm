module Main exposing (..)


aInt : Int
aInt =
    123


aFloat : Float
aFloat =
    234.33


imTrue : Bool
imTrue =
    True


imFalse : Bool
imFalse =
    False


aString : String
aString =
    "Huge"


aChar : Char
aChar =
    'H'



-- Lists


aList : List Int
aList =
    [ 1, 2, 3 ]



-- Tuples


aTuple : ( Int, Int, String )
aTuple =
    ( 1, 2, "three" )



-- Records


aRecord : { one : Int, two : String }
aRecord =
    { one = 1, two = "two" }



-- Type Alias


type alias UserRecord =
    { firstName : String
    , lastName : String
    }



{--
I'm a
multi line
comment :O
--}
-- I'm a single line comment


main =
    123
