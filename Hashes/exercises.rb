# exercsies.rb

# Exercise 1 - Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

im_family = family.select { |k, v| k == :sisters || k == :brothers}

arr = im_family.values.to_a # flatten will remove the nested arrays and also don't need the to_a because the values method already returns an output as an array

p arr

# Exercise 2 - Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# the difference between merge and merge! is that merge will return the modified hash but does not change the original hash permanently. Both merge methods combine the two hashes and if there is a duplicate key
# will have the argument hash value replace the existing hash value for that key

food = { salty: "chips", sweet: "candy", drinks: "soda" }
movie_food = { salty: "popcorn", sweet: "candy"}

p food.merge(movie_food) # calling merge on the food hash with movie_food as the argument
p food
p food.merge!(movie_food)
p food

# Exercise 3 - Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

food = { salty: "chips", sweet: "candy", drinks: "soda" }

food.each { |k, v| puts k } # can also use the method each_key -- food.each_key { |k| puts k }
food.each { |k, v| puts v } # can also use the method each_value
food.each { |k, v| puts "#{k}: #{v}"}

# Exercise 4 - Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person.fetch(:name) # what is the difference between the fetch method and just passing the key through? person[:name]

# Exercise 5 - What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

weather = { monday: "sunny", tuesday: "rainy", wednesday: "cloudy", thursday: "overcast"}
p weather.value?("sunny")

# Exercise 6 - Given the array, write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

# Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

# arr = []

# words.each do |str|
#   arr = Array[str.each_char]
# end

# Iterate through the array and each element
# At each element separate each character into a nested array so that each word has an array of each character
# Assign each nested array to a hash key-value pair with the key symbol being the original word
# Sort all of the arrays so that array values can be the same
# Set equality on array values to determine whether or not they are anagrams

result = {}

words.each do |word|
  p key = word.split('').sort.join
end  

# Video Walkthrough
# iterate over array
# sort each word into alphabetical order
# if key exists, append current word into value (array)
# otherweise, create a new key with this sorted word

result = {} # initialize a result hash which will be populated with key-value pairs as we iterate through the words array

words.each do |word|
  key = word.split('').sort.join # as we iterate, strings will be split by characters - split(''), alphabetized - sort, and then rejoined as a string - join
  if result.has_key?(key)
    result[key].push(word) # is push an array only method?
  else
    result[key] = [word] # double check what it takes to create an array 
  end    
end  

result.each_value do |v|
  puts "-"
  p v
end
  
