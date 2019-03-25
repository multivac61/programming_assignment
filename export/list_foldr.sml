fun append (xs, ys) = List.foldr (fn (x, acc) => x :: acc) ys xs
