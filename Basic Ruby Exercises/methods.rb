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

# Exercise 7 - Fix the following code so that the names are printed as expected.

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# Exercise 8 - Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.

def assign_name(name = 'Bob')
  return name
end  

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

# Exericse 9 - Write the following methods so that each output is true.

def add(a, b)
  a + b
end

def multiply(a, b)
  a * b
end  

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

# Exercise 10 - The variables below are both assigned to arrays. The first one, names, contains a list of names. The second one, activities, contains a list of activities. 
# Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence 
# and returns it from the method.

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end  

puts sentence(name(names), activity(activities))