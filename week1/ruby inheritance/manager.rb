class Employee
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

employee1 = Employee.new(first_name: "Joe", salary: 40000, active: true, last_name: "Schafer")
employee2 = Employee.new(first_name: "Majora", salary: 100000, active: true, last_name: "Carter")

class Manager < Employee # Employee is an inherited class (you don't have code in 2 places that does the same thing.)

  def initialize(input_info)
    super # Looks in the inherited class for the same method and copies everything in it into the current class (e.g. @first_name, @last_name, @salary, @active)
    @employees = input_info[:employees]
  end
  
  def print_report
    puts "I'm printing the report here."
    # here is some code that prints a report
    puts "I printed the report."
  end

end

manager1 = Manager.new(first_name: "Shymel", last_name: "Codio", salary: 100000, active: true, employees: [employee1, employee2])

manager1.print_info

manager1.print_report

p manager1

p manager1.first_name