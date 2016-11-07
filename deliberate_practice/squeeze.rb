# Write a program which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

input = "AAAAAAAAAAABBBBBCCCCDDDDDDDDDDDDDDEEEEEEEEEEEE"

old_letter = ""
new_input = []
input.each_char do |letter|
  if letter != old_letter
    old_letter = letter
    new_input << letter
  end
end

p new_input.join

