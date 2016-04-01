# Return index of an item in an array if it exists if doesnt return -1
def find_index(array, target)
  array.find_index(target) ?  array.find_index(target) : -1
end

array = [5, 6, 7, 1]

def max(array)
  max = array[0]
  array.each do |item|
    if item > max
      max = item
    end
  end
  return max
end

p find_index(array, 1)
p max(array)
