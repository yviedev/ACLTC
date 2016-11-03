# # Exercise 1
# arr = []
# 5.times do 
#   puts "What is your favorite food?"
#   arr << gets.chomp
# end

# # arr.each do |fav_food|
# #   puts "I love #{fav_food}"
# # end

# arr.each_with_index do |fav_food, index|
#   puts "#{index+1}. #{fav_food}"
# end

# count = 0
# while count < 11
#   p count
#   count += 1
# end

# equals to anything but 5

# result = 4 > 5
# unless result == true
#   p "code"
# end

# if result != true
#   p "code"
# end

# we just want result to eval to false to do the block of code
# if true, we will exit.
# result = nil
# unless result
#   p result
#   puts "Hello"
# end

sam = {recipes: ["pizza", "crepes", "french fries"]}
sally = {languages: ["french", "german", "english"]}

if sam[:recipes].length >= 10 && sally[:languages] >= 5
  puts "Sam and Sally should date."
end

if sam[:recipes].include?("crepes") || sally[:languages].include?("french")
  puts "Sam and Sally should marry."
end


