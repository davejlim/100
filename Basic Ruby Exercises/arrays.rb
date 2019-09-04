# arrays.rb - Arrays - Basic Ruby Exercises

# Exercise 1 - In the code below, an array containing different types of pets is assigned to pets.

# pets = ['cat', 'dog', 'fish', 'lizard']

# Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.

# my_pet = pets.select{|pet| pet=="fish"}
# print "I have a pet #{my_pet}!"

# This must not be correct because it actually prints the array brackets along with the rest of the string - "I have a pet ['fish']"

# my_pet = pets[2]
# puts "I have a pet #{my_pet}!"

# When selecting, you need to pass the index of the array through to select your element rather than using the select method, which keeps it in an array.  
# Of course, remember that the index starts at 0 for arrays. 

# Exercise 2 - In the code below, an array containing different types of pets is assigned to pets.

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = pets[2,2]
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# This solution was correct. When assigning my_pets you could also have accessed the elements wiht pets[2..3], which would have created an array for the
# 2nd and 3rd elements in the index (starting from 0). My version [2,2] started the the 2nd element and took took elements from the array (2 and 2).

# Exercise 3 - In the code below, an array containing different types of pets is assigned to pets. Also, the return value of pets[2..3], which is ['fish', 'lizard'], is assigned to my_pets.

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]

# Remove 'lizard' from my_pets then print the value of my_pets.

# puts my_pets.pop
# puts "I have a pet #{my_pets[0]}!"

# It is important to note here that when printing my_pets it is still an array. Even though it only has one element, does not mean it was converted to a string.

# Exercise 4 - Using the code below, select 'dog' from pets, add the return value to my_pets, then print the value of my_pets.

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop

# my_pets.push(pets[1])

# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# Exercise 5 - In the code below, an array containing different types of colors is assigned to colors.

# colors = ['red', 'yellow', 'purple', 'green']

#Use Array#each to iterate over colors and print each element. 

# colors.each do |color|
#   puts "I'm the color #{color}!"
# end

# This solution was correct. Remember when using #each, that it's important to note the block parameter, which in this case, I used color. This represents the element in the current iteration and can be naemd
# whatever you want. 

# Exercise 6 - In the code below, an array containing the numbers 1 through 5 is assigned to numbers.

numbers = [1, 2, 3, 4, 5]

# Use Array#map to iterate over numbers and return a new array with each number doubled. Assign the returned array to a variable named doubled_numbers and print its value using #p.

doubled_numbers = numbers.map {|num| 2*num}

p doubled_numbers
