=begin 

(done) Create a new file called manager1.rb. Paste in the code from https://github.com/acltc/object-oriented-ruby/blob/498e769ae3d93df6b1562ad8e84bd8a1aeda398c/manager.rb 

(done) Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.

(done)Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false. (note - you’ll have to modify the Employee class in order to accomplish this!)

Bonus: What happens when you define a method in the Employee and Manager class with the same name? Read more about method overriding here: http://rubylearning.com/satishtalim/ruby_overriding_methods.html
=end

class Employee
  attr_reader :first_name, :last_name # Read status
  #attr_writer :active # Same as setter method, can write the status
  attr_accessor :active # Does both the same thing as the reader and writer

  #def active # Getter method
    #@active
  #end

  #def active=(status) # Setter method
    #@active = status
  #end

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def fire_employee
    @active = false
    p "#{@first_name} is fired. Call security."
  end

end

class Manager < Employee
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end 
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.fire_employee
    end
  end

end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report

p manager.give_all_raises # Quick way of seeing values of attributes
manager.fire_all_employees

p employee1.active

p employee1.active=(true)

p manager