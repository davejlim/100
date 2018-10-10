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

# Exercise 2