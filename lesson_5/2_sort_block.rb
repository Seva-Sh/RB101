# [2, 5, 3, 4, 1].sort do |a, b|
#   puts "a is #{a} and b is #{b}"
#   a <=> b
# end
# # => [1, 2, 3, 4, 5]
#
# [2, 5, 3, 4, 1].sort do |a, b|
#   b <=> a
# end
# # => [5, 4, 3, 2, 1]
#
# ['arc', 'bat', 'cape', 'ants', 'cap'].sort
# ['ants', 'arc', 'bat', 'cap', 'cape']

[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort
[['a', 'car', 'd'], ['a', 'car', 'd', 3], ['a', 'cat', 'b', 'c'], ['b', 2]]
