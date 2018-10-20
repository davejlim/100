# Exercise 1
"Dave" + "Lim"

# Exercise 2
# Use modulo, division, or combination to take a 4 digit number and find the digit in the thousands place, hundreds place, tens place, ones place
a = 4512

puts a/1000.to_i # thousands place

b = a/100.to_i
puts b % 10 # hundreds place

c = a/10.to_i
puts c % 10 # tens place

puts a % 10 # ones place

=begin Launch School's Solution
thousands = 4512 / 1000
hundreds = 4512 % 1000 / 100
tens = 4512 % 100 / 10
ones = 4512 % 10

puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}"
=end

# Exercise 3
{"Pulp Fiction" => 1994, "The Amazing Spider-Man 2" => 2014, "The Shawshank Redemption" => 1994, "Star Wars: Episode IV -  A New Hope" => 1977}.each { |movie, year| puts year }

# Exercise 4
years = [1994, 2014, 1994, 1977]
years.each { |year| puts year }

# Exercise 5
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# Exercise 6
n1 = 3.451
n2 = 9.876
n3 = 100.1
puts n1 * n1
puts n2 * n2
puts n3 * n3

# Exercise 7
=begin
What does the following error message tell you?

SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
	from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
	
It tells me that in irb that instead of closing with a curly bracket "}" that they closed it with a parentheses ")"
=end
