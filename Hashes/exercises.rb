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

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

result = {} # initialize a result hash which will be populated with key-value pairs as we iterate through the words array

words.each do |word|
  key = word.split('').sort.join # as we iterate, strings will be split by characters - split(''), alphabetized - sort, and then rejoined as a string - join
  if result.has_key?(key)
    result[key].push(word) # this will push the word into the arrays as a value. You call the aray with result[key] since that is calling the value part of the key-value pair of the hash.
  else
    result[key] = [word] # you are setting the value of the key here and also ensuring that the values are the array type. To set a value in a hash, you would hash[key] = value
  end    
end  

result.each_value do |v|
  puts "-"
  p v
end

# Retrying Exercise 6

words = ["dog","god", "fog"]

anagrams = {}

words.each do |word|
  key = word.split('').sort.join
  if anagrams.has_key?(key)
    anagrams[key].push(word)
  else
    anagrams[key] = [word]
  end
end

anagrams.each_value do |v|
  p v
end


# iterate over the array
# alphabetize the key
# if key exists add current word to key
# otherwise create a new key

# Exercise 7 - What's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

=begin

my_hash's key is a symbol x
my_hash2's key is a string - string value of the x variable

=end

# Exercise 8 - If you see this error, what do you suspect is the most likely problem?

NoMethodError: undefined method `keys' for Array

=begin
A. We're missing keys in an array variable.

B. There is no method called keys for Array objects. - I think this is the answer since it is saying that there is no defined method

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.
=end