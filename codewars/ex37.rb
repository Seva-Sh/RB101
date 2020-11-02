=begin 

Problem:
- For a negative number return 0
- All natural multiples of 3 or 5 below a given number n
- Find all of them and sum them up
- If number is a multiple of both 3 and 5, count it only once
- 

Input: int
Output: int

Algorithm:
- To find if a num is a multiple of 3 then number % 3 == 0
- To find if a number is a multiple of 5 then number % 5 == 0
- Check if a number is either a multiple of 3 or 5
- Iterate over number starting from 1 to num - 1
    Check if a number is either a multiple of 3 or 5
    add it to a list of confirmed multiples, skip to next if it is not
- Provide the sum of all the confirmed multiples

=end

def solution(num)
  sum = 0

  1.upto(num - 1) do  |n|
    sum += n if n % 3 == 0 || n % 5 == 0
  end

  sum
end

p solution(20) == 78
p solution(200) == 9168
