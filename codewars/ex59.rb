=begin 

Problem:
- Method tkes two nums and returns 1 if there is a straight triple of a number
  at any place in num1 and also a straight double of the same num in num2

Input: int, int
Output: int

Algorithm:
- Reassign both nums into arrays of digits
- Iterate over digits of num1 using indexing (upto) from 0 -> arr.size - 3
  check if num[idx + 1] == num [idx] && num[idx + 2] == num[idx]
    if true, call a helper method check_double, and if that returns true
      return 1
    else return 0 
- check_double, 
      iterate over digits of num2 using indexing from 0 upto arr.size - 2
      check if num[idx + 1] == num[idx]
      if any return true, return true, else false

=end

def check_double(arr, num)
  0.upto(arr.size - 2) do |idx|
    return true if arr[idx + 1] == num && arr[idx] == num
  end
  false
end

def triple_double(num1, num2)
  arr1 = num1.digits 
  arr2 = num2.digits

  0.upto(arr1.size - 3) do |idx|
    if arr1[idx] == arr1[idx + 1] && arr1[idx] == arr1[idx + 2]
      return 1 if check_double(arr2, arr1[idx])
    end
  end

  return 0
end

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 0