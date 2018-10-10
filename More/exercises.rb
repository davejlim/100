# exercises.rb - More

# Exercise 1 - Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

array = []

def lab_exists(string)
  lab = ["l", "a", "b"]
  letters = string.split("")
  if letters.include?("l")
    if letters.values_at((letters.index("l")), (letters.index("l") + 1), (letters.index("l") + 2)) == lab
      puts letters.join
    end
  end
end      

lab_exists("laboratory")
lab_exists("experiment")
lab_exists("Pans Labyrinth")
lab_exists("elaborate")
lab_exists("polar bear")

# create an array
# iterate over each array
# if lab exists, print word
puts "---------------"

# A much easier solution would have been to use regex

def new_lab(string)
  if /lab/ =~ string
    puts string
  else
    puts "No match"
  end
end

new_lab("laboratory")
new_lab("experiment")
new_lab("Pans Labyrinth")
new_lab("elaborate")
new_lab("polar bear")

# Exercise 2 - What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

p execute { puts "Hello from inside the execute method!" } # Will print "Hello from inside the execute method!"
# This answer is incorrect because the block is never called. It is missing the .call method
# After adding the p, a Proc object ID is returned

# Exercise 3 - What is exception handling and what problem does it solve?
# Exception handling is to help the program continue to run if there is an unexpected error
# Normally with an error, the program will exit and the error will be displayed
# However, with exception handling, if an exception is raised, the rescue block will execute and then the program will continue to run

# Exercise 4 - Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Exercise 5

# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# Why does the code give an error?
# Instead of calling the block, it is asking for an argument. We need to add an ampersand to parameter to be able to accept a block.



