# arrays.rb - Arrays - Basic Ruby Exercises

# Exercise 1 - In the code below, an array containing different types of pets is assigned to pets.

pets = ['cat', 'dog', 'fish', 'lizard']

# Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.

my_pet = pets.select{|pet| pet=="fish"}
puts "I have a pet #{my_pet}!"