# boolean_regex.rb

def has_a_b?(string)
  if string =~ /b/ # this is a boolean value since the =~ operator will check to see if there is a match and will return an index. The index is a truthy val ue and can be used as a boolean to check.
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")