class Task
  
  def initialize(name, num)
    @name = name
    @complete = false
    @priority = num
  end

  def name
    return @name
  end

  def complete
    return @complete
  end

  def complete!
    @complete = true
  end
  
  def toggle_complete!
    if @complete == false
      @complete = true
    else
      @complete = false
    end
  end
  
  def priority
    return @priority
  end
end