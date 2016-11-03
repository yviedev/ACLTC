require './employee'
require_relative 'reportable'

class Manager < Employee
  
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  include Reportable

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