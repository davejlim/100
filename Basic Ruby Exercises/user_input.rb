# user_input.rb - Basic Ruby Exercises

# Exercise 1 - Write a program that asks the user to type something in, after which your program should simply display what was entered.

# puts "I will repeat whatever you say:"
# puts gets.chomp

# Exercise 2 - Write a program that asks the user for their age in years, and then converts that age to months.

# puts "Please enter your age in years:"
# puts "You are #{gets.chomp.to_i * 12} months old." # it is interesting to note that if a non-numeric value is put in, that the response will always be 0.

# Exercise 3 - Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

# puts "Do you want me to print something? (y/n)"
# answer = gets.chomp

# puts "something" if answer == "y" || answer == "Y"

# Exercise 4 - Modify your program so it prints an error message for any inputs that aren't y or n, and then asks you to try again. Keep asking for a response until you receive a valid y or n response. 
# In addition, your program should allow both Y and N (uppercase) responses; case sensitive input is generally a poor user interface choice. Whenever possible, accept both uppercase and lowercase inputs.

# loop do
#   puts "Do you want me to print something? (y/n)"
#   answer = gets.chomp.capitalize

#   if answer == "Y"
#     puts "something"
#     break
#   elsif answer == "N"  
#     break
#   else
#     puts "Invalid input! Please enter y or n."
#     next
#   end
# end

# LS suggests following a format of using a plain loop to solicit inputs until we have a valid input, and then exiting that loop

# choice = nil

# loop do
#   puts "Do you want me to pring something? (y/n)"
#   choice = gets.chomp.downcase
#   break if %w(y n).include?(choice) # %w(y n) is an easier way to say ["y", "n"] an array of strings
#   puts "Invalid input! Please enter y or n."
# end

# puts "something" if choice == "y"

# Exercise 5 - Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. The program should obtain the number of lines from the user, 
# and should insist that at least 3 lines are printed.

# For now, just use #to_i to convert the input value to an Integer, and check that result instead of trying to insist on a valid number; validation of numeric input is a topic with a fair number of edge 
# conditions that are beyond the scope of this exercise.

# lines = nil

# loop do
#   puts "How many output lines do you want? Enter a number >= 3"
#   lines = gets.chomp.to_i
#   break if lines >= 3
#   puts "That's not enough lines."
# end

# lines.times do 
#   puts "LS is the best!"
# end

# Excerise 6 - Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. 
# Keep asking for the password until the user enters the correct password.

# PASSWORD = "SecreT"

# loop do
#   puts "Please enter your password"
#   password = gets.chomp
#   break if password == PASSWORD
#   puts "Invalid password!"
# end

# puts "Welcome!"

# Exercise 7 - In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name 
# and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.

# USERNAME = "admin"
# PASSWORD = "SecreT"

# loop do
#   puts ">> Please enter user name:"
#   username = gets.chomp

#   puts ">> Please enter your password:"
#   password = gets.chomp

#   break if username == USERNAME && password == PASSWORD 
#   puts "Authorization failed!"
# end

# puts "Welcome!"

# Exercise 8 - Write a program that obtains two Integers from the user, then prints the results of dividing the first by the second. 
# The second number must not be 0, and both numbers should be validated using this method:

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# denominator = nil

# loop do
#   puts ">> Please enter the numerator:"
#   numerator = gets.chomp

#   break if valid_number?(numerator)

#   puts ">> Invalid input. Only integers are allowed"  
# end

# loop do
#   puts ">> Please enter the denominator:"
#   denominator = gets.chomp

#   break if valid_number?(denominator) && denominator.to_i > 0
  
#   if denominator == "0"
#     puts ">> Invalid input. A denominator of 0 is not allowed."
#   else
#     puts ">> Invalid input. Only integers are allowed"  
#   end
# end

# answer = numerator.to_i / denominator.to_i
  
# puts ">> #{numerator} / #{denominator} is #{answer}"

# Exercise 9 -   Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.

# lines = nil

# loop do
#   puts "How many output lines do you want? Enter a number >= 3 (Q to quit)"
#   lines = gets.chomp

#   break if lines == "Q" || lines == "q"
  
#   lines = lines.to_i
  
#   if lines >= 3
#     lines.times do
#       puts "LS is the best!"
#     end  
#   else 
#     puts "That's not enough lines."
#   end
  
# end

# Exercise 10 - Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; 
# however, the order in which the two integers are entered does not matter.

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# first_int = nil
# second_int = nil

# loop do
#   puts ">> Please enter a positive or negative integer:"
#   first_int = gets.chomp.to_i.to_s

#   puts ">> Please enter a positive or negative integer:"
#   second_int = gets.chomp.to_i.to_s

#   if first_int.to_i > 0 && second_int.to_i < 0
#     break
#   elsif first_int.to_i < 0 && second_int.to_i > 0
#     break
#   elsif !valid_number?(first_int) || !valid_number?(second_int)
#     puts ">> Invalid input. Only non-zero integers are allowed."
#   else
#     puts ">> Sorry. One integer must be positive, one must be negative."
#     puts ">> Please start over."
#   end
# end

# answer = first_int.to_i + second_int.to_i

# puts "#{first_int} + #{second_int} = #{answer}"
  
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"
