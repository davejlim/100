# Exericse 1 - Write to see if the following expressions return true or false
=begin
1. (32 * 4) >= 129 - false - correct

2. false != !true - false - correct

3. true == 4 - true - incorrect
4 is a truthy value, if used in a conditional it will equal to true
HOWEVER it is not equal to the boolean true

4. false == (847 == "847") - true - correct

5. (!true || (!(100 / 5) == 20 || ((328 / 4) == 82)) || false) - true - correct
              false                 true   

=end

# Exercise 2 - Write a method that takets a string as argument. Method should return a new, all-caps version of the string, only if the string is longer than 10 characters.

def all_caps(string)
  if string.length > 10
    puts string.upcase
  else
    string  
  end
end  

puts "Please enter your phrase here:"
string = gets.chomp
puts all_caps(string)

# Exercise 3 - Write a program that takes a number from the user between 0 and 100 and reports back wehther the nubmer is between 0 and 50, 51 and 100, or above 100.

def range(number)
  number = number.to_i
  if number > 0 && number <= 50 # Instead of using a && you could have used a lower bound - if number < 0 and then elsif number <= 50, elsif number <= 100, and finally else.
    puts "Your number is between 0 and 50" 
  elsif number >= 51 && number <= 100
    puts "Your number is between 51 and 100"
  elsif number > 100
    puts "Your number is above 100"
  else
    puts "You did not enter a valid number!"
  end
end

puts "Please enter any number between 0 and 100"
number = gets.chomp
range(number)

# Exercise 4 - Enter what each block below will print to the screen

"4" == 4 ? puts("TRUE") : puts("FALSE")
# The block will print "FALSE" because a string is not an integer

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# The block should print "Did you get it right?" because 3 is equal to 3

y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# The block should print "Alright now!" because the second conditional flow is true and will execute first          

# Exercise 5 - Rewrite your program from exercise 3 using a case statment. Wrap the new case statement in a method and make sure it works.

def eval(num)
  case
  when num < 0
    puts "You cannot enter a number less than 0!"
  when num <= 50
    puts "Your number is between 0 and 50"
  when num <= 100
    puts "Your number is between 51 and 100"
  else
    puts "Your number is above 100"
  end
end

puts "Please enter any number between 0 and 100"
num = gets.chomp.to_i
eval(num)

# Exercise 6 - Why do you get this error: exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
# You get that error because you need another end. The end closes out the if statement but not the method definition.


