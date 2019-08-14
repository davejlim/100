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

#def meal
#  puts 'Dinner'
#  return 'Breakfast'
#end

#puts meal

# This should print "Breakfast" because the puts calls upon the value of method meal which is set on the last line with the return.

# My answer was wrong. The code actually prints both "Dinner" and "Breakfast" This is because line 37 executes an output of "Dinner" when it the meal method is called in 41. Then line 41 also triggers a second
# puts for the return value of "Breakfast". Even if you remove the return, the output would remain the same because "Breakfast" would be the last line executed.

# Exercise 5 - What will the following code print? Why? Don't run it until you've attempted to answer.

#def meal
#  'Dinner'
#  puts 'Dinner'
#end

#p meal

# This should print "Dinner" once. This is because p would invoke the meal method which would run line 51, but not print it and then it invokes the puts on line 52.

# My answer is partially correct. Reminder that p will print nil if that is the return value whereas puts will have a blank line. Because of this, in this instance,
# p meal will print "Dinner" and then will print "nil"

# Exercise 6 -  What will the following code print? Why? Don't run it until you've attempted to answer.

#def meal
#  return 'Breakfast'
#  'Dinner'
#  puts 'Dinner'
#end

#puts meal

# This should print "Breakfast". This is because return will have us exit the method before lines 66 and 67. 

# Return will be executed upon the invocation of meal, which means meal will immediately end and return the value provided by return.

# Exercise 7 - What will the following code print? Why? Don't run it until you've attempted to answer.

#def count_sheep
#  5.times do |sheep|
#    puts sheep
#  end
#end

#puts count_sheep

# This should print sheep 5 times each on a new line.

# This answer is incorrect because sheep was not a string. You should be reviewing the Ruby docs for clarity in regards to #times. #times will iterate the given
# block int times, passing in values from zero to int-1. The real answer here is 0, 1, 2, 3, 4, 5. The extra 5 is because of the fact that the #times returns the
# integer itself. So the last method being returned was the integer for the times methods, which was 5. 

# Exercise 8 - What will the following code print? Why? Don't run it until you've attempted to answer.

#def count_sheep
#  5.times do |sheep|
#    puts sheep
#  end
#  10
#end

#puts count_sheep

# 0
# 1
# 2
# 3
# 4
# 10

# Since #times is no longer the last line, and 10 is the last line, we will now be returning 10 after the #times method.

# Exercise 9 - What will the following code print? Why? Don't run it until you've attempted to answer.

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#     if sheep >= 2
#       return
#     end
#   end
# end

# p count_sheep

# 0
# 1
# 2
# nil

# Since p was used, we can see if nil would be printed. Even though int.times is the last evaluated method, we have a return at the end of the method once sheep >= 2.
# Once the return method is invoked, we know that nil would be printed.

# Exercise 10 - What will the following code print? Why? Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# Empty line - Since this is an if conditional without anything being evaluated, I believe that it will return nil and print an empty line since it is a puts.

# This answer was wrong. The if clause will be evaluated everytime this method is invoked. In that if clause, there is a variable assignment. With a variable
# assignment, the return value of a variable assignment is the value itself, in this case, the integer 1. We will return the integer 1, because that was the evaluated
# result of the last line executed in the tricky_number method. The else clause will not be evaluated.

# Correct answer is 1

def tricky_number
  if false
    number = 1
  else
    2
  end
end

puts tricky_number

# In the above scenario, the if false clause will not be evaluated but the else clause would be evaluated. It would then print 2. 

