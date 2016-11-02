# Employee array
employee1 = ["Joe", "Schafer", 40000, true]

# Joe Schafer $40000 per year

# String concatenantion
puts employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# String interpolation
puts "#{employee1[0]} #{employee1[1]} makes $#{employee1[2]} per year."

# Shortcut cmd-b to run code in Sublime

# Disadvantage to using an array - no identifier if there are multiple numbers in the array

# Employee hash
employee2 = {
  # Making first_name a SYMBOL (:first_name), which takes up less space and unchangeable
  :first_name => "Joe",
  # JavaScript notation => colon after variable
  last_name: "Schafer",
  "salary" => 40000,
  "active" => true
}

# You still write the symbol with a colon in the front in order to get it's value
puts "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2["salary"]} per year."

class Employee
  # Short cut for first_name method
  attr_reader :first_name, :last_name, :salary, :active

  def initialize(input_first_name, input_last_name, input_salary, input_active)
    puts "This is an initialize method."
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
    #@ssn = input_ssn # Can withhold this info
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def last_name
    @last_name # Don't have to add return since the last line is what you want to return
  end

end

puts employee3 = Employee.new("Joe", "Schafer", 40000, true) # Instance of the Employee class. Not an employee itself but a factory of the employee itself.

p employee3

#employee3.first_name # Will return an error because you need to define a method for first_name first.

employee3.print_info

# Using a class instead of a hash will make your objects scalable. Also allows you to withhold information like @ssn.

p employee3.give_annual_raise

p employee3.first_name, employee3.last_name, employee3.salary, employee3.active # Calling attr_reader (pronouced atter reader) methods

class Employee1
  # Short cut for first_name method
  attr_reader :first_name, :last_name, :salary, :active

  def initialize(input_info) # More dynamic way to enter input. Doesn't have to be inputed in order.
    input_info[:first_name]
    @first_name = input_info[:first_name]
    @last_name = input_info[:last_name]
    @salary = input_info[:salary]
    @active = input_info[:active]
  end

end

p employee4 = Employee1.new({first_name: "Joe", last_name: "Schafer", salary: 40000, active: true}) # Can remove the curly braces and hash will still will work

puts employee4.first_name

class Employee2
  attr_reader :first_name, :last_name
  def initialize(input_info)
    @first_name = input_info[:first_name]
    @last_name = input_info[:last_name]
    @salary = input_info[:salary]
    @active = input_info[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} per year"
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def full_name 
    if @last_name.chars.last == "s" # Or @last_name[-1]
      @first_name + " " + @last_name + ", Esquire"
    else
      @first_name + " " + @last_name
    end
  end

end

employee1 = Employee2.new(first_name: "Joe", salary: 40000, active: true, last_name: "Schafer")
employee2 = Employee2.new(first_name: "Majora", salary: 100000, active: true, last_name: "Carter")
employee3 = Employee2.new(first_name: "Danilo", salary: 1000000, active: true, last_name: "Campos")

p employee1.full_name
p employee2.full_name
p employee3.full_name


