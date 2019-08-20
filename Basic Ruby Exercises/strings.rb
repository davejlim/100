# strings.rb - Strings - Basic Ruby Exercises

# Exercise 1 - Create an empty string using the String class and assign it to a variable.

# newString = String.new

# p newString

# new is a class method. Empty string is passed in and being assigned to the new variable newString. 

# You can also use a string literal

# newString = ""

# p newString

# Execise 2 - Modify the following code so that double-quotes are used instead of single-quotes.

# puts 'It\'s now 12 o\'clock.'
# puts "It's now 12 o'clock."

# Exercise 3 - Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. 
# Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name 
# with the string 'DAVE' instead of 'RoGeR'.

# name = 'Roger'

# puts name.casecmp("RoGeR") == 0
# puts name.casecmp("DAVE") == 0

# casecmp method allows you to do a case-insenesitive comparison. However, the output is an integer. 0 is if the string is the same other than the case. -1 or 1
# is a difference.

# Exercise 4 - Modify the following code so that the value of name is printed within "Hello, !".

# name = 'Elizabeth'

# puts "Hello, #{name}!"

# Exercise 5 - Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. 
# Then, print the value of full_name.

first_name = 'John'
last_name = 'Doe'

full_name = "#{first_name} #{last_name}"
puts full_name

# Exercise 6 - 