=begin
(done) Create a new file called inheritance_example.rb and open it in Sublime.
(done) Copy the Car and Bicycle class into your file: https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b 
(done) Use inheritance to DRY up the classes. Note - a car is NOT a type of bicycle, and a bicycle is NOT a type of car!
(done) To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car "Beeeeeeep!"
Bonus: Read more about inheritance and object hierarchy in Ruby here: https://www.leighhalliday.com/object-hierarchy-in-ruby
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
    @gas = 10
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
p car1.accelerate


