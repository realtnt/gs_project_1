# Estimate Reading Time Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user

> So that I can manage my time

> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

reading_time = estimate_reading_time(text)

# INPUT: text - a string of words.
# OUTPUT: reading_time - an integer representing minutes

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
estimate_reading_time('') => 0
estimate_reading_time('hello') => 1
estimate_reading_time('hello' * 199) => 1
estimate_reading_time('hello' * 200) => 1
estimate_reading_time('hello' * 1000) => 5
estimate_reading_time('hello' * 9999) => 50
estimate_reading_time('hello' * 10000) => 50
estimate_reading_time(nil) throws an error
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
