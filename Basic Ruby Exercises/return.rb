# return.rb - Return - Basic Ruby Exercises

# Exercise 1 - What will the following code print? Why? Don't run it until you've attempted to answer.

# def meal
#   return 'Breakfast'
# end

# puts meal

# This should print "Breakfast". 

# Exercise 2 - What will the following code print? Why? Don't run it until you've attempted to answer.

# def meal
#   'Evening'
# end

# puts meal

# This should print "Evening".

# Exercise 3 - What will the following code print? Why? Don't run it until you've attempted to answer.

# def meal
#   return 'Breakfast'
#   'Dinner'
# end

# puts meal

# This should print "Breakfast" because of return which would exit the method with that value.

# Exercise 4 - What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# This should print "Breakfast" because the puts calls upon the value of method meal which is set on the last line with the return.

# My answer was wrong. The code actually prints both "Dinner" and "Breakfast" This is because line 37 executes an output of "Dinner" when it the meal method is called in 41. Then line 41 also triggers a second
# puts for the return value of "Breakfast"

# Exercise 5 - 