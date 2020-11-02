# Write a method that takes two array arguments in which each array contains
# a list of nums and
# returns a new array that contains the product of every pair
# and sort by increasing value

def multiply_all_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |num1|
    arr2.each do |num2|
      new_arr << num1 * num2
    end
  end
  new_arr.sort
end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |nums| nums.inject(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
