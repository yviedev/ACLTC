# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

def find_longest_word(sentence)
  # Split sentence into word array
  arry = []
  arry << sentence.split(/\W+/)
  arry.flatten!

  # Find and return the max word length
  word_length = []
  arry.each do |word|
    word_length << word.length
  end

  arry[word_length.index(word_length.max)]

end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end