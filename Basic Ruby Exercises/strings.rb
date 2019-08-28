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

# first_name = 'John'
# last_name = 'Doe'

# full_name = "#{first_name} #{last_name}"
# puts full_name

# This is one way to concatenate the strings. I used string interpolation. Another way is just using the + to concatenate the strings and including a space - 
# full_name = first_name + " " + last_name
# Important to note that concatenation returns a new string rather than mutating it's caller. That means that the new string is stored under full_name but doesn't change
# the previous variables. 

# Exercise 6 - Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

# state = 'tExAs'

# puts state

# state.capitalize!

# puts state

# Remember that ! makes the method destructive, which means that it actually modififes and mtuates the caller. So aftewards, state will continue to have the modifed
# and in this case, the corrected value afterwards.

# Exercise 7 - Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

# greeting = 'Hello!'

# puts greeting.replace "Goodbye!"
# puts greeting

# LS proposes a solution utilizng the gsub method (which passes in 2 arguments). It utilizes the second argument to replace whatever was in the first argument of the string.

# greeting = 'Hello!'

# puts greeting.gsub!("Hello!","Goodbye!")
# puts greeting

# My solution also is a destructive method that mutates the caller and replaces the greeting string.

# Exercise 8 - Using the following code, split the value of alphabet by individual characters and print each character.

# alphabet = 'abcdefghijklmnopqrstuvwxyz'

# alphabet.each_char {|c| puts c}

# My solution utilizes the each_char method to pass each character in str to the given block which I then used the puts method to ensure that each character was then 
# printed on its own line like the exercise had requested for the output.

# The LS solution proposes using the split method which creates an array that splits the string based on the character that you pass in as an argument.

# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# puts alphabet.split("")

# If you pass in an empty string into the split method as an argument, Ruby will split the string into an array of characters. 

# Exercise 9 - Given the following code, use Array#each to print the plural of each word in words.

# words = 'car human elephant airplane'

# plural = words.split(" ")
# puts plural.each {|w| w.concat("s")}

# LS solution proposes just appending with +

# words = 'car human elephant airplane'

# words.split(" ").each do |word|
#    puts word + "s"
# end

# Exercise 10 - Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

# colors = 'blue pink yellow orange'

# puts colors.include?("yellow")
# puts colors.include?("purple")

# Important to note that include is case-sensitive. In Ruby, comparison of strings is case-sensitive. The include method is checking if the string includes the argument being passed in. So
# if you passed in "ink", it would still be true, because it is contained within the color pink.











