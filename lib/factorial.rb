# File: factorial.rb
def factorial(n)
  product = 1
  while n > 0
    # binding.irb # Mystery new line!
    product *= n
    n -= 1
  end
  product
end

p factorial(5)
# should be 120