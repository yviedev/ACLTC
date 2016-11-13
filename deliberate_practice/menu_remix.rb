# Create your a Food and Menu class and return the most expensive price

class Food

  attr_reader :name, :type, :price, :time
  
  def initialize(name, type, price, time)
    @name = name,
    @type = type,
    @price = price,
    @time_to_cook = time
  end

end

class Menu

  def initialize
    @menu = []
  end

  def add_to_menu(food)
    @menu << food
  end

  def most_expensive_food_item
    price_arry = []
    @menu.each do |x|
      price_arry << x.price
    end
    price_arry.max
  end

end

menu = Menu.new

menu.add_to_menu(hot_dog = Food.new("hot dog", "junk", 5, 3))

menu.add_to_menu(hamburger = Food.new("hamburger", "junk", 8, 10))

menu.add_to_menu(french_toast = Food.new("french toast", "carbs", 13, 15))

p menu.most_expensive_food_item





