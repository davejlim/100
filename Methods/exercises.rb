# Exercise 1

def greeting(name)
  puts "Hey there, #{name}! Have a great day!"
end 

puts "Please enter your name here:"
name = gets.chomp

puts greeting(name)

=begin
Exercise 2

What does the following expressions evaluate to?

1. x = 2
  variable x is assigned the value 2
  will return 2

2.  puts x = 2
  displays 2 but returns nil
  
3. p name = "Joe"
  displays Joe but returns nil
  This was incorrect, in irb if you do this it will display "Joe" AND return "Joe"
  It is because you are assigning the variable and p will output the argument AND return the argument
  
4. four = "four"
  returns "four"
  
5. print something = "nothing"
  displays "nothing" but returns nil  
  the output looks a little different because the print method doesn't make a new line like puts
=end

# Exercise 3

def multiply(a, b)
  a * b
end

puts multiply(5, 10)

# Exercise 4 - What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee") # Should print "Yippeee!!!!" and nothing else because the method returns on line 49.
# This answer was incorrect, because although I was correct that it would stop at the return and not proceed to line 50, I forgot that the only puts was on line 50.
# Explicit return will cause an immediate exit from the method

# Exercise 5 - Fix the method definition in exercise #4 to print the words on the screen

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee") # It should still return nil as the last expression is a puts

# Exercise 6 - What does the following error message tell you?

=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

This tell us that only one argument was given for a method that requires two parameters.
=end