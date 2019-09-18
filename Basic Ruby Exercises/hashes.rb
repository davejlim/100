# hashes.rb - Hashes - Basic Ruby Exercises

# Exercise 1 - Create a hash that contains the following data and assign it to a variable named car.

# car = {"type" => "sedan", "color" => "blue", "mileage" => "80_000" }
# puts car

# My solution uses the old syntax. You can also use the new syntax as follows:

# car = {
#   type: "sedan",
#   color: "blue",
#   mileage: 80_000
# }  

# It is also important to note that Symbols are preferred for hash keys are they are faster and use less memory than strings.

# Exercise 2 - Using the code below, add the key :year and the value 2003 to car.

# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000,
# }

# car[:year] = 2003

# puts car

# Exercise 3 - Using the following code, delete the key :mileage and its associated value from car.

# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000,
#   year:    2003
# }

# car.delete(:mileage)
# puts car

# Exercise 4 - Using the following code, select the value 'blue' from car and print it with #puts.

# car = {
#   type:    'sedan',
#   color:   'blue',
#   year:    2003
# }

# puts car[:color]

# Exercise 5 - Use Hash#each to iterate over numbers and print each element's key/value pair.

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each do |key, value|
#   puts "A #{key} number is #{value}."
# end

# Exercise 6 - Use Enumerable#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# newArray = numbers.map do |key, value|
#             value / 2
#           end
# p newArray

# Enumerable#map works similar to Array#map but Enumerable#map can accept two block parameters isntead of one, this accounts for BOTH the key and the value. It is important to note that Enumerable#map does not
# return a hash when invoked on a hash but rather an array.

# Exercise 7 - Use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25. 
# Assign the returned hash to a variable named low_numbers and print its value using #p.

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select do |key, value|
#                 value < 25
#               end

# p low_numbers

# Unlike Enumerable#map, Hash#select returns a hash isntead of an array. Specifically, #select returns a new hash consisting of entries for which the block returns true, just like Array#select.

# Exercise 8 - In the following code, numbers isn't mutated because #select isn't a destructive method. However, there is a destructive version of #select named #select!. 
# Modify the code to use #select! instead of #select.

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select! do |key, value|
#                  value < 25
#                end

# p low_numbers
# p numbers

# One interesting note, is that now that you mutated the caller, you have created an alias as both numbers and low_numbers now point to the same hash.

# Exercise 9 - Create a nested hash using the following data.

# vehicle = {
#   car: {
#     type: "sedan",
#     color: "blue",
#     year: 2003
#   },
#   truck: {
#     type: "pickup",
#     color: "red",
#     year: 1998
#   }
# }

# p vehicle

# Exercise 10 - Rewrite car as a nested array containing the same key-value pairs.

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

{
  car: {type: "sedan", color: "blue", year: 2003}
}

# This solution is incorrect as I read the prompt to fast and thought that it would want another nested hash instead of an array.

car = [[:type, "sedan"], [:color, "blue"], [:year, 2003]]

# Arrays are better for ordered lists while hashes are better for values that require labels.

