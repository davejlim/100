# exercises.rb - Loops & Iterators Exercises

# Exercise 1 - What does each method return after finishing executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1 # each method would go through the array and add one to each element in the array
end

# This answer was incorrect. Each method will always return the original array that it was called on. Look at ruby-docs.org for information on the method. https://ruby-doc.com/core/Array.html#method-i-each

# Exercise 2 - Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

x = ""

while x != "STOP" do
  puts "Type something here. To stop the loop type 'STOP'"
  x = gets.chomp!
end  

# Exercise 3 - Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

array = [1, 2, 3, 4, 5, 6]

array.each_with_index do |n, i|
  puts "Index: #{i}; Number: #{n}"
end  

# Exercise 4 - Write a method that counts down to zero using recursion.

def countdown(num)
  if num < 0
    return 
  else
    puts num
    countdown(num - 1)  
  end
end

puts "What number would you like to countdown from?"
countdown(gets.chomp.to_i)