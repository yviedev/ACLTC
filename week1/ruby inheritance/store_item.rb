# Use hashes with symbols to represent the following scenario:

# You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.

# Represent 3 items using hashes. Each hash should have the same keys with different values.

#Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. JavaScript syntax {a: 123}).

#Create a hash in irb where both the keys and values are symbols. Which syntax do you prefer?

store_items = [
  {
  name: "apples",
  "price" => 5,
  type: :fruit # You can make the value a symbol as well
  },

  {
  name: "corn",
  "price" => 2,
  type: :vegetable
  },

  {
  name: "broccoli",
  "price" => 10,
  type: :vegetable
  },
              ]

puts "This store has #{store_items[0][:name]}. It is a #{store_items[0][:type]} and it cost $#{store_items[0]["price"]}."
puts "This store has #{store_items[1][:name]}. It is a #{store_items[1][:type]} and it cost $#{store_items[1]["price"]}."
puts "This store has #{store_items[2][:name]}. It is a #{store_items[2][:type]} and it cost $#{store_items[2]["price"]}."
puts

store_items.each do |item|
  puts "This store has #{item[:name]}. It is a #{item[:type]} and it cost $#{item["price"]}."
end

p "----------"

=begin
Rewrite your store items using a class instead of a hash.
a) Note: that attr_reader is a shortcut that Ruby provides. For this exercise, don’t use attr_reader - instead write out the equivalent methods in your class.
b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.
=end

=begin 
Open the store_item.rb file you created from the previous lesson.
Some of your store items are food, which have a shelf life. Create a class called Food which inherits from your original class and has an additional property of shelf_life.
=end

class StoreItems
  
  attr_reader :name, :price, :type

  def initialize (input_info)
    @name = input_info[:name]
    @price = input_info[:price]
    @type = input_info[:type]
  end

  def info
    puts "This is a #{@name}. It is a #{@type} and cost $#{@price}."
  end

end

class Food < StoreItems

  attr_reader :shelf_life

  def initialize (input_info)
    super
    @shelf_life = input_info[:shelf_life]
  end 

end

p food1 = Food.new(name:"apple", price: 5, type: "fruit", shelf_life: "5 days")

#p store_item1

#store_item1.info

p "----------"

# Rewrite your store items using a class with a single options hash in the initialize method.

class StoreItems1

  def initialize (input_info)
    @name = input_info[:name]
    @price = input_info[:price]
    @type = input_info[:type]
  end

  def name
    @name
  end

  def price
    @price
  end

  def type
    @type
  end

  def info
    puts "This is a #{@name}. It is a #{@type} and cost $#{@price}."
  end

end

p store_item2 = StoreItems1.new(price: 5, type: "fruit", name: "apple")

store_item2.info

p store_item2.price
