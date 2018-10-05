# exercises.rb

# Exercise 1 - Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)

# Exercise 2 - What will the following programs return? What is value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3)) # [[b, 1], [b, 2], [b, 3], [a, 1], [a, 2], [a,3]]
arr.first.delete(arr.first.last) #

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)