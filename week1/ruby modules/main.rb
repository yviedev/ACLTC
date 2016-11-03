#require_relative 'employee' # Not necessary to add bc required in 'manager' and 'employee'
require_relative 'intern'
require_relative 'manager'


employee1 = Employee.new(first_name: "Joe", salary: 40000, active: true, last_name: "Schafer")
employee2 = Employee.new(first_name: "Majora", salary: 100000, active: true, last_name: "Carter")

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_report # calling the Reporting module

intern = Intern.new(first_name: "Anthony", last_name: "Bishop", salary: 1, active: true)
intern.print_info
intern.print_report # calling the Reporting module
#intern.fire_all_employees # Should fail bc intern is not a manager and cannot fire employees

