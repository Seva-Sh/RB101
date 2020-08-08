# Method that returns an Array that contains every other element of an array
# that is passed in as an argument
#
# Values in returned list should be at the position 1,3,5 of the argument array

def oddities(array)
  array.select { |item| array.index(item).even? }
end

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

def oddities2(array)
  array.select { |item| array.index(item).odd? }
end

def oddities2(array)
  new_array = []
  index = 1
  while index < array.size
    new_array << array[index]
    index += 2
  end
  new_array
end

p oddities2([2, 3, 4, 5, 6]) == [3, 5]
p oddities2([1, 2, 3, 4, 5, 6]) == [2, 4, 6]

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
