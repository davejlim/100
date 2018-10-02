=begin
Exercise 5

x = 0
3.times do
  x += 1
end
puts x

This should display x as 3. x was already initialized in the outer scope. Inner scope is able to access the initialized outer scope.

Confirmed that this was correct by running the program.

y = 0
3.times do
  y += 1
  x = y
end
puts x

There should be an error as x is not a local variable because it was initialized within the block.

Confirmed that this was correct by running the program.
    
=end


y = 0
3.times do
  y += 1
  x = y
end
puts x