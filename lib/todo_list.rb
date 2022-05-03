# File: lib/todo_list.rb
require 'todo'

class TodoList
  def initialize
    @list = []
  end

  # todo is an instance of Todo
  # Returns nothing
  def add(todo)
    fail "This is not a Todo object." unless todo.is_a?(Todo)
    @list << todo    
  end

  # Returns all non-done todos
  def incomplete
    @list.select{|todo| not todo.done?}
  end
  
  # Returns all complete todos
  def complete
    @list.select{|todo| todo.done?}
  end

  # Marks all todos as complete
  def give_up!
    @list.each{|todo| todo.mark_done!}
  end
end
