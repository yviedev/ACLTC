# Complete the method called mutation?, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.

def mutation?(base_word, mutation)
  sum = 0
  base_word.split("")
  mutation.split("").each do |letter|
    if base_word.include? (letter)
      sum += 1
    end
    if sum == mutation.split.length
      return true
    else
      return false
    end
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end