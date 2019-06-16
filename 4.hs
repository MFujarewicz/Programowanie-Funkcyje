trojka = [[x, y, z] | x <- [1..200], y <- [1..x], z <- [1..y], x^2 == y^2 + z^2]

main = print trojka