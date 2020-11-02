=begin 

Problem:
- Compute fibonacci number without recursion
- 
- 
- 
- 

Input: int
Output: int

Algorithm:
- We need to keep track of the last two fib nums in local variables 
  num2 & num1
- local variable num will be equal to the requested fib number - 2,
  signifying the number of rounds of calculations we will need to repeat
  in a loop method to calculate the required fib number
- 

=end

def fibonacci(number)
  return 1 if number < 3 
  num2 = 1
  num1 = 1
  current = nil
  num = number - 2
  loop do
    return current if num <= 0 
    current = num1 + num2
    num2 = num1 
    num1 = current
    num -= 1 
  end
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end