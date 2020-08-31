[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
# 1
# 3
# [1, 3]

line 1 - method call map - the outer array - none - new array [1, 3] - no but shown on line 7
line 1-4 - block execution - each sub-array - none - first element of an array - yes used by map for transformation
line 2 - method call first - each sub-array - none - element at index 0 of sub-array - yes used by puts
line 2 - method call puts - element at index 0 of each sub-array - outputs a string representation of an integer - nil - no
line 3 - method call first - each sub-array - none - element at index 0 of each sub-array - yes used to determine the return value of block

-----------------------------

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
# 18
# 7
# 12
# [[18, 7], [3, 12]]

1 - variable assignment - n/a - none - same array - no
1 - method call each - the outer array - none - the calling object - yes, used by variable assignment to my_arr
1-7 - outer block execution - each sub-array - none - each sub-array - no
2 - method call each - each sub-array - none - the calling object - yes used to determine return value of outer block
2-6 - block execution - element of the sub-array in that iteration - none - nil - no
3 - comparison > - element of the sub-array in that iteration - none - boolean - yes evaluated by if
3 - conditional if - element of the sub-array in that iteration - none - nil - yes used to determine return value of inner block
4 - method call puts - element of the sub-array in that iteration - outputs string representation of an integer - nil - yes used to determine return value of the inner block

------------------------------

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# [2, 4]
# [6, 8]
# [[2, 4], [6, 8]]

1 - method call map - the outer array - none - transformed array - no
1-5 - outer block execution - each sub-array - none - new transformed array - yes used by top level map for transformation
2 - method call map - each sub-array - none - transformed sub-array - yes to construct the outer array
2-4 - inner block execution - each element of the sub-array - none - an integer - yes to construct the outer array
3 - method call * with integer 2 as an argument - elementh os the sub-array in that iteration - none - multiplied integer - yes used to determine the return value of inner block

------------------------------

[{ a: 'ant', b: 'elephant'}, {c: 'cat'}].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

1 - method call select - will return a transformed array
1-5 - block execution - will be used to construct a select array
2 - method call all? - returns true if all iterations pass the block execution
3 - comparison - compares first element of the value of each hash with key transformed to string

---------------------------------

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]

-----------------------------

For example, take the 2-element array below, where we only want to select
integers greater than 13 but strings less than 6 characters. The trick here
is that the elements are in a two layer nested array data structure.

[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]

---------------------------------

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |array_of_arrays|
  array_of_arrays.each do |array|
    array.partition do |element|
      element.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

------------------------------------

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
[[[2, 3], [4, 5]], [6, 7]]
