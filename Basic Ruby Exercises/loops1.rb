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

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  if count == 5 then say_hello = false
  end
end

# Exercise 6 - Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

numbers = [0..99]
count = 0

while count < 5
  print numbers.each
  count += 1
end