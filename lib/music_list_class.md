# todo_list_class Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
> 
>So that I can keep track of my tasks
>
>I want a program that I can add todo tasks to and see a list of them.

> As a user
> 
> So that I can focus on tasks to complete
> 
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
  def initialize
    @todo_list = [] # we create an empty array to hold our tasks
  end

  def add(task) # task is a string
    # Throws an exception if task is invalid
    # No return value
  end

  def complete(task_id) # task_id is an integer (index of @todo_list)
    # Throws an exception if task_id is invalid
    # Returns false if no tasks have been added
    # Returns false if task_id does not exist
    # Returns true if task succesfully deleted
  end

  def show_tasks # tasks no input
    # returns [] if no tasks have been added
    # Otherwise, returns an array of tasks
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.show # => ['Walk the dog']
todo_list.complete(0)
todo_list.show_tasks # => []

# 2
todo_list = TodoList.new
todo_list.add("Walk the dog")
todo_list.add("Feed the cat")
todo_list.show_tasks # => ['Walk the dog', 'Feed the cat']
todo_list.complete(1)
todo_list.show_tasks # => ['Walk the dog']
todo_list.complete(0)
todo_list.show_tasks() # => []

# 3
todo_list = TodoList.new
todo_list.add(nil) # => throw error
todo_list.show_tasks() # => []

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
