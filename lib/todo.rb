# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    fail "invalid task" unless task.is_a?(String) && !task.strip.empty?
    @text = task
    @done = false
  end

  # Returns the task as a string
  def task
    @text
  end

  # Marks the todo as done
  # Returns nothing
  def mark_done!
    @done = true
  end

  # Returns true if the task is done
  # Otherwise, false
  def done?
    @done
  end
end
