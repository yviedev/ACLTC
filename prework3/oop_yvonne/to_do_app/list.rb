class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_task_names
    @task_names = []
    @tasks.each do |task|
      unless task.complete
        @task_names << task.name
      end
    end
    return @task_names
  end
  
  def number_of_incomplete_tasks
    return @task_names.length
  end
  
  def delete_complete_tasks #don't iterate over an array. maybe use a map instead?
  @tasks_deleted = []
    @tasks.each_with_index do |task, index|
      if task.complete
        @tasks_deleted << task.name
        @tasks.delete_at(index)
      end
    end
    puts "Deleted tasks:"
    puts @tasks_deleted
  end
  
  def sort_by_priority #sort list by priority number by print by name
    @tasks_priority = []
    @tasks.sort_by { |task| @tasks_priority << [task.priority, task.name] }
    @tasks_priority.sort.reverse.each do |task|
      p task[1]
    end
  end
end