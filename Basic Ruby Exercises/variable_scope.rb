# variable_scope.rb Part of the Ruby Basics Exercise Series

# Exercise 1 - What will the following code print and why? Don't run it until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a 

# code will print 7 because b is initialized within the method and doesn't affect a.

# Exercise 2 - What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# this time, code will print 17 because a is being reassigned and is now pointing to 17
# the above answer is incorrect. the a variable in the method is distinct from the local variable a. METHOD DEFINITIONS ARE SELF-CONTAINED WITH RESPECT TO LOCAL VARIABLES 

# Exercise 3 - What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# since the method definition is self-contained, a, the local variable, is still 7

# Exercise 4 - What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# once again, since the method definition is self-contained, a, the local variable, should still be "Xyzzy"
# the above is incorrect. The program will print "Xy-zy". This is because a string is mutable (changeable) whereas a number is not. In this case, since we change the
# that both a and b variables point to, a will also reflect that change. It as mutated within the my_value method.


# Exercise 5 - What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# The program should display "Xyzzy" because although a and b were initially pointing to the same string, b was then reassigned to a new string instead of the previous
# answer which had modified the original string.

# Exercise 6 - What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

# def my_value(b)
#   b = a + a
# end

my_value(a)
puts a

# The program should print 7 because although b would be 14, a is still pointing to 7. 
# This is incorrect because there is no local to the method definition variable a! Remember that method definitions are self-contained in regards to local varaiables!!!

# Exercise 7 - What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# a should be 3. each is a block method and is able to utilize other local variables.

# Exercise 8 - What will the following code print, and why? Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# a should print 3. array.each passes each element of the array and assigns it to a. The last assignment would be 3. Because this is a method invocation with a block,
# you can initialize a new variable within.
# The above is incorrect! a needs to be initialized at the outer-most scope before invoking the method. 

# Exercise 9 - What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# Should print 4. a is initialized in the outer-most scope. Then, it is being reassigned inside the method with a block.
# This is incorrect! a will print 7. This is because of variable shadowing. For the method, Ruby will search the innerscope for the variable first, and in this case
# will find it as the a parameter being passed in and not the local variable that's equal to 7. That local variable remaind untouched. This is called variable shadowing
# where the block variable is hidden by the variable defined outside the block. 

# Exercise 10 - What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# Should print 7. Although a is being reassigned within the method, numbers are immutable and the a within the method is self-contained and does not affect where
# the outer-most local variable a is pointing to.

# This answer was close but not fully correct, as there would be an error. The local variable a would not be visible to the block because it is within the method
# definition which is self-contained.



