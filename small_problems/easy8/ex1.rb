# Write a method that takes an array of numbers
# Returns the sum of the sums of each leading
# subsequence for that array

def sum_of_sums(arr)
  total = 0
  sum = 0
  arr.size.times do |ind|
    sum += arr[ind]
    total += sum
  end
  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
