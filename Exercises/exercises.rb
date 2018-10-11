# exercises.rb - Exercises

# Exercise 1 - Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


array.each do |x|
  puts x
end

# Exercise 2 - Same as above, but only print out values greater than 5.

array.each do |x|
  if x > 5
    puts x
  end
end


# Exercise 3 - Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

p new_array = array.select { |x| x.odd? }
p new_array = array.select { |x| x % 2 != 0  }

# Exercise 4 - Append "11" to the end of the original array. Prepend "0" to the beginning.

array.push(11)
array.unshift(0)

p array

# Exercise 5 - Get rid of "11". And append a "3".

array.pop
array.push(3) # can also append with array << 3

p array

# Exercise 6 - Get rid of duplicates without specifically removing any one value.

array.uniq!

p array

# Exercise 7 - What's the major difference between an Array and a Hash?
# An array is a collection of values in a specific order or index.
# A hash is a collection of key value pairs. Each key is associated with a specific value. 

# Exercise 8 - Create a Hash using both Ruby syntax styles.

breakfast = { "salty" => "bacon", "sweet" => "fruit" }
lunch = { salty: "chips", drink: "soda" }

# Exercise 9 - Suppose you have a hash 

h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.

p h[:b]

# 2. Add to this hash the key:value pair `{e:5}`

p h.store(:e, 5) # or you could do h[:e] = 5 

# 3. Remove all key:value pairs whose value is less than 3.5

p h.delete_if { |k, v| v < 3.5 }

# Exercise 10 - Can hash values be arrays? Can you have an array of hashes? (give examples)

# Yes, hash values can be arrays. 

hash = { colors: ["red", "blue", "green"], sizes: ["big", "medium", "small"] }

# Yes, you can also have an array of hashes.

hash_array = [ {salty: "chips", drink: "soda"}, {taste: "good", smell: "bad"} ]

# Exercise 11 - Look at several Rails/Ruby online API sources and say which one you like best and why.

# Exercise 12 - Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = contact_data.first
contacts["Sally Johnson"] = contact_data.last

# This had moved all of the relevant information into a corresponding hash but did not specify what each data was assigned to. I will attempt to do what the book assigned below.

contacts["Joe Smith"] = { email: contact_data[0][0], address: contact_data[0][1], phone: contact_data[0][2] }
contacts["Sally Johnson"] = { email: contact_data[1][0], address: contact_data[1][1], phone: contact_data[1][2] }

p contacts 

# Exercise 13 - Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]

# Exercise 14 In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from 
# the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}

# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

