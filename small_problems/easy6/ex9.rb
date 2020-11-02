# Write a method that takes an array and a search value as arguments
#
# Return true if value is in array and false otherwise

def include?(arr, value)
  arr.each do |el|
    return true if value == el
  end
  return false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

def include?(array, value)
  !!array.find_index(value)
end
A slightly harder way

def include?(array, value)
  array.each { |element| return true if value == element }
  false
end
