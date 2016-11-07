# Loop through an array and filter out all numbers greater than 6
# [1,2,3,6,7,8,9] should return [1,2,3,6]

# Make problem harder
# Cube numbers between 1-30, then sum them all
# 2 cubed = 8


all_numbers = [1,2,3,6,7,8,9,36,41,43]
final_array = []
#all_numbers.each do |number|
  #if number <= 6
    #final_array << number
  #end
#end

#p final_array

#all_numbers = [1,2,3,4]
cube = 0

all_numbers.each do |num|
  if num >= 1 && num <= 30
    final_array << num
    cube += num**3
  end
end

p final_array
p cube

