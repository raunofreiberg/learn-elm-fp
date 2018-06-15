module Utils exposing (..)

multiply : Int -> Int -> Int
multiply x y = x * y

add : Int -> Int -> Int
add x y = x + y

y : String
y = 
  (+) 2 3
  |> toString
  |> (++) "world"

x : String
x = 1
  |> multiply 2
  |> add 1
  |> toString