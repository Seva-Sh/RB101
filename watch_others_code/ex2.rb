=begin 

Problem:
- A method should take a positive integer number 
- Return the next bigger number formed by the same digits
- If no bigger number can be composed using those digits, return -1!

Input: int
Output: int

Algorithm:
- Iterate as pass an itneger value as an argument, starting from the given num
  + 1, upto a number that has more digits than the given one
  Upon each iteration, break down the curent num into an array of nums,
  Check if this array is equal to an array of digits of the original number
  If it is equal, return it
  If not, proceed to next
- If reached this stage, return -1

=end

def next_bigger_num(int)
  current_num = int + 1
  loop do
    break if current_num.to_s.size > int.to_s.size

    return current_num if current_num.digits.sort == int.digits.sort

    current_num += 1
  end

  -1
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
