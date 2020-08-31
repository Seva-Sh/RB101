arr1 = ["a", "b", "c"].freeze
arr2 = arr1.clone
arr2 << "d"
# => RuntimeError: can't modify frozen Array

--------------------------

arr1 = ["a", "b", "c"].freeze
arr2 = arr1.dup
arr2 << "d"

arr2 # => ["a", "b", "c", "d"]
arr1 # => ["a", "b", "c"]

--------------------------

str = "abc".freeze
str << "d"
# => RuntimeError: can't modify frozen String

--------------------------

5.frozen? # => true

arr = [[1], [2], [3]].freeze
arr[2] << 4
arr # => [[1], [2], [3, 4]]

arr = ["a", "b", "c"].freeze
arr[2] << "d"
arr # => ["a", "b", "cd"]
