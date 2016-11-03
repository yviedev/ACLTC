require './employee' # Don't need .rb; starts from root directory
require_relative 'reportable' # looks in current folder

# Intern can do everything an employee can do and they can also send reports
class Intern < Employee
  include Reportable

  def print_report
    super
    puts "I am an intern."
  end

end
