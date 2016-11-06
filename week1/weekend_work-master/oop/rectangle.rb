# Create a Rectangle class with readable width and height attributes
# and a method to calculate its area.

class Rectangle
  attr_reader :width, :height
  def initialize(width, height)
    @width = width.to_i
    @height = height.to_i
  end

  def area
    @width * @height
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING the Rectange class..."
puts

rectangle = Rectangle.new(10, 30)

result = rectangle.width

puts "width returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end
puts

result = rectangle.height

puts "height returned:"
puts result
puts

if result == 30
  puts "PASS!"
else
  puts "F"
end
puts

result = rectangle.area

puts "area returned:"
puts result
puts

if result == 300
  puts "PASS!"
else
  puts "F"
end
