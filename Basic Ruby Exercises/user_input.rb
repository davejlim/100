# user_input.rb - Basic Ruby Exercises

# Exercise 1 - Write a program that asks the user to type something in, after which your program should simply display what was entered.

puts "I will repeat whatever you say:"
puts gets.chomp

# Exercise 2 - Write a program that asks the user for their age in years, and then converts that age to months.

puts "Please enter your age in years:"
puts "You are #{gets.chomp.to_i * 12} months old." # it is interesting to note that if a non-numeric value is put in, that the response will always be 0.

# Exercise 3 - Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

puts "Do you want me to print something? (y/n)"
answer = gets.chomp

puts "something" if answer == "y" || answer == "Y"

# Exercise 4 - 