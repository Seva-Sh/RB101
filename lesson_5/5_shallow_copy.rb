arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2[1].upcase!

arr2 # => ["a", "B", "c"]
arr1 # => ["a", "B", "c"]

--------------------------

arr1 = ["abc", "def"]
arr2 = arr1.clone
arr2[0].reverse!

arr2 # => ["cba", "def"]
arr1 # => ["cba", "def"]

--------------------------

arr1 = ['a', 'b', 'c']
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

arr1 => ['a', 'b', 'c']
arr2 => ['A', 'B', 'C']


arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

arr1 # => ["A", "B", "C"]
arr2 # => ["A", "B", "C"]
