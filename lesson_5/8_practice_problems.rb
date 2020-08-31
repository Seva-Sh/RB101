# # 1.
# arr = ['10', '11', '9', '7', '8']
# arr = arr.sort do |num1, num2|
#   num2.to_i <=> num1.to_i
# end
# p arr
#
# # 2.
# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]
# books = books.sort_by do |hash|
#   hash[:published].to_i
# end
#
# p books
#
# # 3.
# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# p arr1[2][1][3]
#
# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# p arr2[1][:third][0]
#
# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# p arr3[2][:third][0][0]
#
# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# p hsh1['b'][1]
#
#
# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# p hsh2[:third].keys[0]

# 4.
# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
# p arr1
#
# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4
# p arr2
#
# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2][0] = 4
# p hsh1
#
# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4
# p hsh2

# 5.
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# total = 0
# munsters.each do |key, value|
#   total += value['age'] if value['gender'] == 'male'
# end
# p total

# 6.
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
#
# munsters.each do |name, value|
#   puts "#{name} is a #{value['age']}-year-old #{value['gender']}"
# end

# 7.
# a = 2
# b = [5, 8]
# arr = [a, b]
#
# arr[0] += 2
# arr[1][0] -= a
# # arr = [4, [3, 8]]
# p a # did not change
# p b # changed
# p arr

# 8.
# VOWELS = 'aeiou'
# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
# hsh.each_value do |arr|
#   arr.each do |word|
#     word.chars do |letter|
#       puts letter if VOWELS.include?(letter)
#     end
#   end
# end

# 9.
# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
# arr = arr.map do |array|
#   array.sort do |a, b|
#     b <=> a
#   end
# end
# p arr

# 10.
# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# arr2 = arr.dup
# arr2.map! do |hash|
#   hash.transform_values { |v| v + 1 }
# end
# p arr
# p arr2
#
# # or
# arr.map do |hsh|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value
#   end
#   incremented_hash
# end

# 11.
# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
# arr2 = arr.dup
# arr2.map! do |array|
#   array.select do |num|
#     num % 3 == 0
#   end
# end
# # or
# arr2 = arr.map do |array|
#   array.select do |num|
#     num % 3 == 0
#   end
# end
#
# p arr
# p arr2

# 12.
# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# hsh = {}
# arr.each do |sub_array|
#   hsh[sub_array[0]] = sub_array[1]
# end
# p hsh

# 13.
# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
# arr = arr.sort_by do |sub_array|
#   sub_array.select do |num|
#     num.odd?
#   end
# end
# p arr

# 14.
# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }
# arr = []
# hsh.each_value do |sub_hsh|
#   if sub_hsh[:type] == 'fruit'
#     arr << sub_hsh[:colors].map { |color| color.capitalize }
#   else
#     arr << sub_hsh[:size].upcase
#   end
# end
# p arr

# 15.
# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
# arr = arr.select do |hsh|
#   hsh.values.flatten.all? { |num| num.even? }
# end
# p arr
# # or
# arr.select do |hsh|
#   hsh.all do |_, value|
#     value.all? do |num|
#       num.even?
#     end
#   end
# end

# 16.
ELEMENTS = Array('a'..'z') + Array(0..9)
def uuid
  arr = []
  num = Array.new(32) { ELEMENTS.sample }.join
  arr << num[0, 7]
  arr << num[8, 4]
  arr << num[12, 4]
  arr << num[16, 4]
  arr << num[20, 12]
  arr.join('-')
end

p uuid
