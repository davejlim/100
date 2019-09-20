# debugging.rb - Debugging - Basic Ruby Exercises

# Exercise 1 - You come across the following code. What errors does it raise for the given examples and what exactly do the error messages mean?

# def find_first_nonzero_among(numbers)
#   numbers.each do |n|
#     return n if n.nonzero?
#   end
# end

# Examples

# find_first_nonzero_among(0, 0, 1, 0, 2, 0)

# First error is that it is passing in too many arguments. It is expecting one to be passed in, not six.

# find_first_nonzero_among(1)

# Second error is that the #each method is not for integers but rather for an Enumerable. You cannot use this by passing in an integer.

# Exercise 2 - Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. 
# However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

# def predict_weather
#   sunshine = [true, false].sample
#   puts sunshine

#   if sunshine
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end

# puts predict_weather

# Previously true and false values that were being sampled were strings and not actual true or false values. Because of this, sunshine was always true and 
# so the output was always "Today's weather will be sunny!" I made the change from string to true and false. In Ruby, all objects except for nil and the Boolean false evaluate as true.

# Exercise 3 - When the user inputs 10, we expect the program to print The result is 50!, but that's not the output we see. Why not?

# def multiply_by_five(n)
#   n * 5
# end

# puts "Hello! Which number would you like to multiply by 5?"
# number = gets.chomp.to_i

# puts "The result is #{multiply_by_five(number)}!"

# The gets takes the input as a string. Then when it multiples your string by 5, it just repeats it 5 times instead of actually multiplying it. I added the #to_i method to change the input into an integer.

# Exercise 4 - Magdalena has just adopted a new pet! She wants to add her new dog, Bowser, to the pets hash. After doing so, she realizes that her dogs 
# Sparky and Fido have been mistakenly removed. Help Magdalena fix her code so that all three of her dogs' names will be associated with the key :dog in the pets hash.

# pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

# pets[:dog] = 'bowser', "sparky", "fido"

# p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

# Magdalena just reassigned bowser as the value to the dog key. My solution was to add sparky and fido to the reassignment. You can also use the Array#push method to add it without
# having to worry about "sparky" and "fido" because the value in the hash is an array.

# pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

# pets[:dog].push("bowser")

# p pets

# Exercise 5 - We want to iterate through the numbers array and return a new array containing only the even numbers. 
# However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?

# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.select do |n|
#   n if n.even?
# end

# p even_numbers # expected output: [2, 6, 8]

# The Array#map method will iterate through the entire array but will not select only the even numbers, instead it will just evaluate it across.
# I used the Array#select method to actually select the values that evaluate to true and to have it reassigned to even_numbers.

# Array#map is used for transformation. It returns a new array containing the return value of the block for each and every iteration. Array#select is used for selection
# and returns a new array containign only the elements of hte original array for which the return value of hte block is truthy.

# Exercise 6 - You want to have a small script delivering motivational quotes, but with the following code you run into a very common error message:
# no implicit conversion of nil into String (TypeError). What is the problem and how can you fix it?

# def get_quote(person)
#   if person == 'Yoda'
#     'Do. Or do not. There is no try.'
#   elsif person == 'Confucius'
#     'I hear and I forget. I see and I remember. I do and I understand.'
#   elsif person == 'Einstein'
#     'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end

# puts 'Confucius says:'
# puts '"' + get_quote("Confucius") + '"'

# The solution recommends trying each of the inputs "Yoda", "Confucius", and "Einstein" to see if they all have the same error.
# In this case, "Einstein" actually works and shows that the problem is that the previous three if statements did not return if they were the value passed in.
# Without an explicity return statement, the return value is the evaluated result of the last line executed. 

# Exercise 7 - The output of the code below tells you that you have around $70. However, you expected your bank account to have about $238. What did we do wrong?

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance

# We can test the calculate_balance method by adding a few test cases:
puts calculate_balance({ income: [], expenses: [] }) == 0         #=> true
puts calculate_balance({ income: [100], expenses: [] }) == 100    #=> true
puts calculate_balance({ income: [], expenses: [100] }) == -100   #=> true
puts calculate_balance({ income: [100], expenses: [50] }) == 50   #=> true
puts calculate_balance({ income: [4, 3], expenses: [2, 1] }) == 4 #=> true
# We can see that this method works as expected.

# According to the solution, we are simply re-assigning balance to the return value of invoking calcualte_balance with the current months' data.
# We want to increment balance by re-assigning it ot the current vlaue of balacne plus the return value of calculate_balance.

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

# Exercise 8 - 