puts "How old are you?"
age = gets.chomp 
age = age.to_i
puts "In 10 years you will be: #{age + 10}"
puts "In 20 years you will be: #{age + 20}"
puts "In 30 years you will be: #{age + 30}"
puts "In 40 years you will be: #{age + 40}"

=begin
Per the solution in LS's exercise, could have combined lines 2 and 3 to age = gets.chomp.to_i    
=end