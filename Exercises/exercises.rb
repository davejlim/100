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