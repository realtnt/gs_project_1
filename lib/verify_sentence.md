# Verify Sentence Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
>
> So that I can improve my grammar
>
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

is_valid_sentence = verify_sentence(sentence)

# INPUT: sentence - a string of words.
# OUTPUT: is_valid_sentence - True if sentence begins with a capital letter and ends with sentence
#         ending punctuation mark. False otherwise.

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
verify_sentence('') => false
verify_sentence('hello') => false
verify_sentence('Hello!') => true
verify_sentence('How are you?' ) => true
verify_sentence('I am fine.') => true
verify_sentence('...') => false
verify_sentence('.Hello!') => false
verify_sentence(nil) throws an error
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
