# documentation2.rb - Reading Documentaiton 2 - Basic Ruby Exercises

# Exercise 1 - How would you use String#upcase to create an uppercase version of the string "xyz"?

# puts "xyz".upcase

# Exercise 2 - Assume you have this Array:

# a = %w(a b c d e)

# How would you use Array#insert to insert the numbers 5, 6, and 7 between the elements with values 'c' and 'd'?

# p a.insert(3, 5, 6, 7)

# Interesting to note that according to the documentation, if you read the signature it shows the return value as ary and not new_ary wh ich usually means that hte return value is the object
# to which the method was applied; a in this case. Since #insert modifies something, it must have modified a, so it really doesn't matter if we used the return value, or jsut continue to use a directly.

# Exercise 3 - Assume you have the following code:

s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect #=> ["abc","def","ghi,jkl","mno","pqr","stu","vwx","yz"]
puts s.split(',').inspect #=> ["abc def ghi","jkl mno pqr","stu vwx yz"]
puts s.split(',', 2).inspect #=> ["abc def ghi","jkl mno pqr","stu vwx yz"] This was incorrect as I misread the documentation to mean there could be 2 more additional fields, but it means there can only be 
# that many total fields. Correc solution should be ["abc def ghi","jkl mno pqr,stu vwx yz"]

# What will each of the 3 puts statements print?

# Note for documentation, that [] is an optional argument with no default value. 