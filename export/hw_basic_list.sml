fun empty [] = true
  | empty _ = false

fun head [] = raise List.Empty
  | head (x::xs) = x

fun last [] = raise List.Empty
  | last (x::[]) = x
  | last (_::xs) = last (xs)

fun tail [] = raise List.Empty
  | tail (x::xs) = xs

fun init [] = raise List.Empty
  | init (x::[]) = []
  | init (x::xs) = x :: init (xs)

fun nth ([], _) = raise Subscript
  | nth (x::xs, n) = if n < 0 then raise Subscript
                     else if n = 0 then x
                     else nth (xs, n-1)

fun take ([], _) = []
  | take (x::xs, n) = if n < 0 then raise Subscript
                      else if n = 0 then [] else x :: take (xs, n-1)

fun drop ([], _) = []
  | drop (x::xs, n) = if n < 0 then raise Subscript
                      else if n = 1 then xs
                      else drop (xs, n-1)

fun replicate (x, n) = if n < 1 then [] else x :: replicate (x, n-1)
