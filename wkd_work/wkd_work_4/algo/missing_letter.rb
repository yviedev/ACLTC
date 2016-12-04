# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  ord = []
  range.chars.each do |char|
    ord << char.ord
  end

  compare = ord[0]
  ord_arry = []
  for x in 0..(ord.length - 2) do
    if ord[x + 1] - ord[x] > 1
      ord_arry << ord[x] + 1
    end
  end

  result = []
  if ord_arry.count < 1
    nil
  else
    ord_arry.each do |char|
      result << char.chr
    end
    result.join
  end

end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("ace")

puts "Your method returned:"
puts result
puts

if result == "bd"
  puts "PASS!"
else
  puts "F"
end
