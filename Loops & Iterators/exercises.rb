# exercises.rb - Loops & Iterators Exercises

# Exercise 1 - What does each method return after finishing executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1 # each method would go through the array and add one to each element in the array
end

# This answer was incorrect. Each method will always return the original array that it was called on. Look at ruby-docs.org for information on the method. https://ruby-doc.com/core/Array.html#method-i-each


