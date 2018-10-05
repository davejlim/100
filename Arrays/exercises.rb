# exercises.rb

# Exercise 1 - Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)

# Exercise 2 - What will the following programs return? What is value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3)) # [[b, 1], [b, 2], [b, 3], [a, 1], [a, 2], [a,3]]
arr.first.delete(arr.first.last) # delete will delete all elements in the calling array that are equal to the argument
# make sure you look ruby-doc for what a method will do to an array
# will return what is deleted which is 1
# so now arr will be equal to [[b], [b, 2], [b, 3], [a, 1], [a, 2], [a,3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # I had missed that there are []. This would nest the array as [[1, 2, 3]]
# this should return [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
arr.first.delete(arr.first.last)
# should return [1, 2, 3]
# arr should be [["b"], ["a", [1, 2, 3]]]

# Exercise 3 - How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

arr.last.first

# Exercise 4 - What does each method return in the following example?
=begin
arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5) # This returns the index spot of the value of 5. The first index spot of 5 is 3.

2. arr.index[5] # This resulted in an undefined method in irb

3. arr[5] # This returns the element in the 5th index, which is 8. Think of the brackets indicating that you are looking for that value in the array.
=end

# Exercise 5 - What is the value of a, b, and c in the following program?
string = "Welcome to America!"
a = string[6] # e
b = string[11] # A
c = string[19] # nil - if you reference an array index that is beyond the length of the array, you will get a return of nil and not an error

# Exercise 6 - You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# ...and get the following error message:
=begin
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
=end

# What is the problem and how can it be fixed?
# The problem is that they are trying to pass a string as an argument when an integer should be past instead. If you want to change 'margaret' to 'jody' you need to pass the index number and not the string that you want to change.
# Arrays are indexed with integers

names[3] = 'jody'

# Exercise 7
=begin
Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. 
You should have two arrays at the end of this program, The original array and the new array you've created. 
Print both arrays to the screen using the p method instead of puts.
=end

days = [1, 4, 5, 7, 10, 23, 4]

new_days = days.map do |day| # You would want to map it and NOT each it. Map would have the return value be the modified value whereas each would only have the return value be the original value.
  day + 2
end

p days
p new_days
