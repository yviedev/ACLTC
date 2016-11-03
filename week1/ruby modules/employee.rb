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
