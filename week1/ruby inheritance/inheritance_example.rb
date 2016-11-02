=begin
(done) Create a new file called inheritance_example.rb and open it in Sublime.
(done) Copy the Car and Bicycle class into your file: https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b 
(done) Use inheritance to DRY up the classes. Note - a car is NOT a type of bicycle, and a bicycle is NOT a type of car!
(done) To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car "Beeeeeeep!"
Bonus: Read more about inheritance and object hierarchy in Ruby here: https://www.leighhalliday.com/object-hierarchy-in-ruby
=end

=begin 
(done) Open the inheritance_example.rb file from the previous example.

(done) Add car specific attributes to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). Use the super method to keep the initialize methods DRY.

Bonus: Read about the differences between redefining, overriding, and super. Complete the exercise at the end to get the tests to pass: https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/37-classes-inheritance/lessons/88-redefining-overriding-and-super
=end

class Parts
  # Common stuff between Car and Bike
  attr_reader :speed, :direction
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Parts
  def initialize
    super
    @fuel = 10
    @make = "Honda"
    @model = "Accord"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

  def accelerate
    super # Will increase by 10 because reading the method from the Parts class. If super is not there it will only increase by 25.
    @speed += 25
  end

end

p car1 = Car.new

class Bike < Parts
  def initialize
    super
    @speed = 10
    @type = "hybrid"
    @weight = 20
  end

  def ring_bell
    puts "Ring ring!"
  end
end

p bike1 = Bike.new

bike1.ring_bell
p bike1.accelerate
p bike1.turn("right")

car1.honk_horn
p car1.brake
#p car1.accelerate

p car1

p bike1


