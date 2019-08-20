# conditionalsn.rb - Conditionals - Basic Ruby Exercises

# Exercise 1 - In the code below, sun is randomly assigned as 'visible' or 'hidden'

# sun = ['visible', 'hidden'].sample

# Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.

# if sun == "visible"
#   puts "The sun is so bright!"
# end

# Exercise 2 - In the code below, sun is randomly assigned as 'visible' or 'hidden'.

# sun = ['visible', 'hidden'].sample

# Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.

# puts sun 

# unless sun == "visible"
#   puts "The clouds are blocking the sun!"
# end

# Exercise 3 - Write an if statement that prints "The sun is so bright!" if sun equals visible. 
# Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

# sun = ['visible', 'hidden'].sample

# puts sun
# puts "The sun is so bright!" if sun == "visible"
# puts "The clouds are blocking the sun!" unless sun == "visible"

# This exercise had called for us to make this more expressive without an if... end statement. When appending a conditional at the end of a statement
# it is called a modifer. 

# Exercise 4 - Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.

# boolean = [true, false].sample

# puts boolean

# if boolean == true
#   puts "I'm true!"
# else
#   puts "I'm false!"
# end    

# This was not a ternary operator. A ternary operator is <condition> ? <result if true> : <result if false>

# boolean ? puts("I'm true!") : puts("I'm false!")

# Exercise 5 - What will the following code print? Why? Don't run it until you've attempted to answer.

# number = 7

# if number
#   puts "My favorite number is #{number}."
# else
#   puts "I don't have a favorite number."
# end

# The code should print "My favorite number is 7." This is because number has been assigned a value.
# In Ruby, everything is truthy except false and nil.

# Exercise 6 - Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

# stoplight = ['green', 'yellow', 'red'].sample

# puts stoplight

# case stoplight
# when "green"
#   puts "Go!"
# when "yellow"
#   puts "Slow down!"  
# when "red"
#   puts "Stop!"
# end    

# Exercise 7 - Convert the following case statement to an if statement.

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts 'Go!'
# when 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end

# puts stoplight

# if stoplight == "green"
#   puts "Go!"
# elsif stoplight == "yellow"
#   puts "Slow down!"
# else
#   puts "Stop!"
# end      

# Case is better suited than the if statement because we would be comparing stoplight three times.

# Exercise 8 - Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. 
# Then, assign the return value of the if statement to a variable and print that variable.

# status = ['awake', 'tired'].sample
# puts status

# if status == "awake"
#   state = "Be productive!"
# else
#   state = "Go to sleep!"
# end

# puts state

# However is this reptitive as you are assigning to state twice.

# state = if status == "awake"
#           "Be productive!"
#         else
#           "Go to sleep!"
#         end

# puts state

# Exercise 9 - Currently, "5 is a cool number!" is being printed every time the program is run. 
# Fix the code so that "Other numbers are cool too!" gets a chance to be executed.

# number = rand(10)

# puts number

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

# This exercise originally had an assignment for number instead of a conditional.

# Exercise 10 - Reformat the following case statement so that it only takes up 5 lines.

stoplight = ['green', 'yellow', 'red'].sample

puts stoplight

case stoplight
when "green"  then puts "Go!"
when "yellow" then puts "Slow down!"
else               puts "Stop!"
end