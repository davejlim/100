# loops1.rb - Loops 1 in Ruby Basics Exercises

# Exercise 1 - Modify the code so the loop stops after the first iteration.

loop do
    puts 'Just keep printing...'
    break
  end

# Exercise 2 - The code below is an example of a nested loop. Both loops currently loop infinitely. Modify the code so each loop stops after the first iteration.

loop do
    puts 'This is the outer loop.'
    loop do
      puts 'This is the inner loop.'
      break
    end
    break
  end
  
  puts 'This is outside all loops.'


# Exercise 3 - Modify the following loop so it iterates 5 times instead of just once.

  iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations > 4
  iterations += 1
end

# Exercise 4 - Modify the code below so the loop stops iterating when the user inputs 'yes'.

# loop do
#     puts 'Should I stop looping?'
#     answer = gets.chomp
#     break if answer == "yes"
#   end

# Exercise 5 - Modify the code below so "Hello!" is printed 5 times.

# say_hello = true
# count = 0

# while say_hello
#   puts 'Hello!'
#   count += 1
#   if count == 5 then say_hello = false
#   end
# end

# Exercise 6 - Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

numbers = Array (0..99)
count = 0

while count < 5
  puts numbers.sample
  count += 1
end


# or

other_numbers = []

while other_numbers.size < 5
  other_numbers << rand(100)
end

puts other_numbers

# Exercise 7 - The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.

count = 1

until count == 11
  puts count
  count += 1
end

# Exercise 8 - Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.first
  numbers.shift
end

# The above accomplishes the task but it also unfortunately mutates the original numbers array.

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

# Exercise 9 - The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.

for i in 1..100
  if i % 2 != 0 # can make this shorter with puts i if i.odd?
    puts i
  end  
end

# Exercise 10 - Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends # it is common to use the singular for a variable plural to make it clear and descriptive for each element
  puts "Hello, #{friend}!"
end  