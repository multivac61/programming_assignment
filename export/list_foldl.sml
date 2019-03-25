fun sum xs = List.foldl (fn (x, acc) => x + acc) 0 xs

fun product xs = List.foldl (fn (x, acc) => x * acc) 1 xs

fun concat xs = List.foldl (fn (x, acc) => acc @ x) [] xs

fun maximum xs = List.foldl (fn (x, acc) => case acc of NONE => SOME (x) | SOME y => SOME (Int.max(x,y))) NONE xs

fun minimum xs = List.foldl (fn (x, acc) => case acc of NONE => SOME (x) | SOME y => SOME (Int.min(x,y))) NONE xs

fun reverse (xs) = List.foldl (fn (x, acc) => x :: acc) [] xs
