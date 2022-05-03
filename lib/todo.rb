# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    fail "invalid task" unless task.is_a?(String) && !task.strip.empty?
    @text = task
    @done = false
  end

  def task
    @text
    # Returns the task as a string
  end

  def mark_done!
    @done = true
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    @done
    # Returns true if the task is done
    # Otherwise, false
  end
end
