a = [1, 2, 3]

# Example of a method defintion that modifies its argument permanently

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

# Example of a method definition that does not mutate the caller

def no_mutate(array)
  array.last
end

p "Before mutate method: #{a}"
no_mutate(a)
p "After mutate method: #{a}"