# methods.rb - Basic Ruby Exercises

# Exercise 1 - Write a method named print_me that prints "I'm printing within the method!" when invoked.

def print_me
  puts "I'm printing within the method!"
end

print_me

# Exercise 2 - Write a method named print_me that returns "I'm printing the return value!" when using the following code.

def print_me
  return "I'm printing the return value!"
end

puts print_me

# Exercise 3 - Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.

def hello
  "Hello"
end

def world
  "World"
end

puts "#{hello} #{world}"

# Exercise 4 - Write a method named greet that invokes the following methods:

def hello
  'Hello'
end

def world
  'World'
end

def greet
  hello + " " + world
end

puts greet

# Exercise 5 - Using the following code, write a method called car that takes two arguments and prints a string containing the values of both arguments.

def car(make, model)
  puts "#{make} #{model}"
end  

car('Toyota', 'Corolla')

# Exercise 6 - The variable below will be randomly assigned as true or false. Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" 
# if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.

daylight = [true, false].sample

def time_of_day(daylight)
  puts "It's daytime!" if daylight
  puts "It's nighttime!" if !daylight
end

time_of_day(daylight)