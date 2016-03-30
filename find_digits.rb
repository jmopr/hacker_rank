# Given an integer, NN, traverse its digits (dd1,dd2,...,ddn)
# and determine how many digits evenly divide NN (i.e.: count
# the number of times NN divided by each digit ddi has a remainder of 00).
# Print the number of evenly divisible digits.
def find_digits(digit)
  even_digits = 0
  split = digit.split("")
  index = 0
  length = split.length
  while index < length
    if split[index].to_i != 0 && digit.to_i % split[index].to_i == 0
      even_digits += 1
    end
    index += 1
  end
  puts even_digits
end


test_cases = gets.chomp.to_i
i = 1
while i <= test_cases
  digit = gets.chomp
  find_digits(digit)
  i += 1
end
