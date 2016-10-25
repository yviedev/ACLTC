require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat", 7))
list.add_task(Task.new("Take out trash", 10))
list.add_task(Task.new("Mow the lawn", 2))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"

# Mark the first task from the list as complete
list.tasks[0].complete!

# Create additional tasks
list.add_task(Task.new("Make the bed", 1))
list.add_task(Task.new("Sweep the floor", 3))
list.add_task(Task.new("Buy groceries", 5))

# Print out the incomplete tasks again
puts "Incomplete Tasks after adding 3 more and marking 1 as complete:"
puts list.incomplete_task_names
puts "--------"

# Number of incomplete tasks
puts "Number of incomplete tasks:"
puts list.number_of_incomplete_tasks
puts "--------"

# Prioritize tasks
puts "Tasks by Priority:"
list.sort_by_priority
puts "--------"

# Toggle tasks
list.tasks.each do |task|
    task.toggle_complete!
end

# Print out the incomplete tasks again
puts "Incomplete Tasks after toggle:"
puts list.incomplete_task_names
puts "--------"

# Delete completed tasks
list.delete_complete_tasks
#puts @tasks