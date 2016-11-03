# using Modules instead
module Parts

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

class Car
  
  include Parts

  def initialize # Don't include in a module, but keep in a class.
    @speed = 0
    @direction = 'north'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike

  include Parts

  def initialize # Don't include in a module, but keep in a class.
    @speed = 0
    @direction = 'north'
  end

  def ring_bell
    puts "Ring ring!"
  end

end

p bike = Bike.new # Will print instance of new bike object
bike.ring_bell
p bike.accelerate
p bike.turn("right")

p car = Car.new
car.honk_horn
p car.brake
p car.accelerate
p car.turn("left")
p car.accelerate



