# Write a method that takes an array as an argument
# Reverses its elements in place
# Return value should be the same array object

def reverse!(arr)
  arr.size.times do |n|
    arr.unshift(arr.delete_at(n))
  end
  arr
end

list = [1,2,3,4]
p result = reverse!(list)
list == [4, 3, 2, 1]
p list.object_id == result.object_id
#
list = %w(a b e d c)
r =  reverse!(list)
list == ["c", "d", "e", "b", "a"]
p list.object_id
p r.object_id


list = ['abc']
p reverse!(list) == ["abc"]
list == ["abc"]

list = []
p reverse!(list) == []
list == []
