# =begin 

# Problem:
# - Write a method that will return a substring baced on specified indices
# - 
# - 

# Input: str, int, int
# Output: str

# Algorithm:
# - Using provided data reutrn a slice
# - 
# - 

# =end

# def substring(str, idx1=nil, idx2=nil)
#   if idx1 == nil 
#     return str[idx2]
#   elsif idx2 == nil 
#     return str[idx1]
#   end
#   str[idx1..idx2]
# end

# p substring("honey", 0, 2) == "hon"
# p substring("honey", 1, 2) == "on"
# p substring("honey", 3, 9) == "ey"
# p substring("honey", 2) == "n"



# =begin 

# Problem:
# - Write a method that finds all substrings in a string, no 1 letter words
# - 
# - 

# Input: 
# Output: 

# Algorithm:
# - 
# - 
# - 

# =end

# def substrings(str)
#   subs = [] 
#   0.upto(str.size - 1) do |idx1|
#     idx1.upto(str.size - 1) do |idx2|
#       subs << str[idx1..idx2] if str[idx1..idx2].size >= 2
#     end
#   end
#   subs
# end

# p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
# p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
# p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']

# =begin 

# Problem:
# - Write a method that will return all palindromes within a string 
# - 
# - 

# Input: str
# Output: arr

# Algorithm:
# - Iterate over all possible substrings of length 2 or greater, and add the
#   palindrome ones to an empty array
# - To iterate over every possible substring we will use a nested iteration
# - Starting from 0 index and going upto str.size -1 index, we will passing
#   a start index upon each iteration.
#   Within it we will have another iteration, where we will be starting from
#   start index and going upto str.size - 1 index, we will be passing an end
#   index upon each iteration.
#   By doing we will be able to select all the slices needed.

# =end

# def palindromes(str)
#   longest = ''
#   0.upto(str.size - 1) do |idx1|
#     idx1.upto(str.size - 1) do |idx2|
#       if str[idx1..idx2].size >= 2 && str[idx1..idx2].reverse == str[idx1..idx2]
#         longest = str[idx1..idx2] if str[idx1..idx2].size > longest.size
#       end
#     end
#   end
#   longest
# end

# p palindromes('ppop') #== ['pp', 'pop']

# =begin 

# Problem:
# - Write a method that takes a single string argument
#   Returns a new string that contains the original value of the argument
#   with the first char of every word capitalized. and all other letters lowercased

# Input: str
# Output: new_str

# Algorithm:
# - Initialize a local var words and assign an empty array to it
# - Iterate over every word in the given sentence and upo each iteration ->
#   downcase the word, capitalize the word, add it to the array
# - Join the words in the array with spaces and return

# =end

# def word_cap(str)
#   words = []
#   str.split.each do |word|
#     words << word.downcase.capitalize
#   end
#   words.join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# =begin 

# Problem:
# - Write a method that combines two arrays passed in as arguments
#   Returns a new array that contains all elements from both array arguments
#   with the elements taken in alternation
# - 
# - 

# Input: arr1, arr2
# Output: arr

# Algorithm:
# - Iterate over elements of arrays using indexes.
#   Starting from 0 index and going upto arr.size - 1, pass an index as an argument
#   and add element of both arrays into new array
# - Return new array
# - 

# =end

# def interleave(arr1, arr2)
#   new_arr =[]
#   0.upto(arr1.size - 1) do |idx|
#     new_arr << arr1[idx]
#     new_arr << arr2[idx]
#   end
#   new_arr
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, "a", 2, "b", 3, "c"]


# =begin 

# Problem:
# - Given an array that contains only integers ( + and - )
#   Sum only the numbers that are the same and consecutive. The result should be
#   one array
# - 
# - 

# Input: arr
# Output: arr

# Algorithm:
# - Initialize a local var temp_sum and assign it to 0 ; initialize a local var 
#   new_arr that will store the required sums in an array object
# - Iterate over every element in the given array using indexing (loop method and a local var to track idx)
#   upon each iteration, check if the current element is equal to the next element
#     if yes, then add current num, increase idx by one
#     if no, add current num to temp_sum, append sum to array, and reassign sum to 0
# - Return new _arr

# =end

# def sum_consecutives(arr)
#   temp_sum = 0
#   new_arr = []
#   idx = 0
#   loop do
#     if idx == (arr.size - 1)
#       temp_sum += arr[idx]
#       new_arr << temp_sum
#       break
#     end

#     if arr[idx] == arr[idx + 1]
#       temp_sum += arr[idx]
#       idx += 1
#     elsif arr[idx] != arr[idx + 1]
#       temp_sum += arr[idx]
#       new_arr << temp_sum
#       temp_sum = 0
#       idx += 1
#     end
#   end

#   new_arr
# end

# p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) #== [1,12,0,4,6,2]
# p sum_consecutives([1,1,7,7,3]) == [2,14,3]
# p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]

# =begin 

# Problem:
# - Take a string as an argument
#   Return the string in reverse order without using the built-in method
# - 
# - 

# Input: str
# Output: str

# Algorithm:
# - Initialize a new local var new_str and assign it to an empty string
# - Iterate over every char of str using indexes and upon each iteration,
#   prepend each char to new_str
# - Return new_str

# =end

# def reverse_string(str)
#   left_idx = 0
#   right_idx = -1
#   0.upto(str.size / 2) do |_|
#     str[left_idx], str[right_idx] = str[right_idx], str[left_idx]
#     left_idx += 1
#     right_idx -= 1
#   end
#   str
# end

# a = 'abcde'
# p a.object_id
# b = reverse_string(a)
# p b
# p b.object_id
# # p reverse_string(" ") == " "
# # p reverse_string("football") == "llabtoof"


# =begin 

# Problem:
# - Method takes 2 arguments, first is the starting number, second is the ending 
#   number
# - Print out all numbers between the two numbers except if a num is divisible by 3
#   print out Fizz, if a num is div by 5 print Buzz, if num is div by both print FizzBuzz
# - 

# Input: int1, int2
# Output: str

# Algorithm:
# - Perform iteration, starting from int1 and going upto int2
#     check if num is div by bot nums
#       FizzBuzz
#     if by any of single ones
#       puts 
#     else
#       puts num
# - 
# - 

# =end

# def fizzbuzz(start, finish)
#   start.upto(finish) do |num|
#     if num % 5 == 0 && num % 3 == 0
#       puts 'FizzBuzz'
#     elsif num % 5 == 0
#       puts 'Buzz'
#     elsif num % 3 == 0 
#       puts 'Fizz'
#     else  
#       puts num 
#     end
#   end
# end

# p fizzbuzz(1, 10)
# p fizzbuzz(1, 15)


PRODUCTS = [
  { name: "Thinkpad x210", price: 220},
  { name: "Thinkpad x230", price: 250},
  { name: "Thinkpad x250", price: 979},
  { name: "Thinkpad x230", price: 300},
  { name: "Thinkpad x230", price: 330},
  { name: "Thinkpad x230", price: 350},
  { name: "Thinkpad x240", price: 700},
  { name: "Macbook Leopard", price: 300},
  { name: "Macbook Air", price: 700},
  { name: "Macbook Pro", price: 600},
  { name: "Macbook", price: 1449},
  { name: "Dell Latitude", price: 200},
  { name: "Dell Latitude", price: 650},
  { name: "Dell Inspiron", price: 300},
  { name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(query)
  cases = PRODUCTS.select do |hsh|
    if hsh[:price] >= query[:price_min] && hsh[:price] <= query[:price_max]
      hsh if hsh[:name].downcase.include?(query[:q])
    end
  end
  cases
end

search(query)
# => [ { name: "Thinkpad x220", price: 250} ]

p search(query2)
#  => [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price 450} ]

