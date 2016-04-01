# Sums the elements of an array.
numbers = [5, 6, 4, 3]

def array_sum(array)
  array.reduce(:+)
end

p array_sum(numbers)
