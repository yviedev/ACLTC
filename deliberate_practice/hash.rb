# the following hash uses letters as keys and arrays of numbers as values. Convert this into a new hash that uses the numbers as keys and arrays of letters as values.

hash = {
 "r" => [4, 5, 2, 6, 10],
 "d" => [8, 9, 4, 5, 9],
 "e" => [9, 4, 5, 7, 5],
 "f" => [2, 8, 2, 8, 1],
 "q" => [1, 9, 7, 4, 5],
 "o" => [6, 2, 3, 5, 1],
 "n" => [4, 1, 2, 8, 1]
}

# new_hash = {
#  1 => [f, q, o, n, n],
#  2 => [r, f, f, o, n],
#  3 => [o],
#  4 => [r, d, e, q, n],
#  5 => [r, d, e, q, o],
#  6 => [r, o],
#  7 => [e, q],
#  8 => [d, f, f, n],
#  9 => [d, d, e, q],
#  10 => [r]
# }

arry = []
letter_arry = hash.keys

p letter_arry.length

p hash[letter_arry[0]]

# for x in 0..5 do
#   p hash[x]
# end

#p letter_arry
