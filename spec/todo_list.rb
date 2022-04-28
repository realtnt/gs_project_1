class TodoList
  def initialize
    @todo_list = [] # we create an empty array to hold our tasks
  end

  def add(task) # task is a string
    fail 'Invalid input' if task == nil
    @todo_list << task
    # Throws an exception if task is invalid
    # No return value
  end

  def complete(task_id) # task_id is an integer
    @todo_list.delete_at(task_id) ? true : false
    # Throws an exception if task_id is invalid
    # Returns false if no tasks have been added
    # Returns false if task_id does not exist
    # Returns true if task succesfully deleted
  end

  def show_tasks # tasks no input
    @todo_list
    # returns [] if no tasks have been added
    # Otherwise, an array of tasks
  end
end