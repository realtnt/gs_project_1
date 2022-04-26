# Check Todo Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
>
> So that I can keep track of my tasks
>
>I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

is_a_todo = check_todo(text)

# INPUT: text - a string of words.
# OUTPUT: is_a_todo - True if text contains #TODO. False otherwise.

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
check_todo('') => false
check_todo('hello') => false
check_todo('#TODO improve my code') => true
check_todo('#TODO' ) => true
check_todo('##TO DO') => false
check_todo('...') => false
check_todo(nil) throws an error
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
