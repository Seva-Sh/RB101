=begin 

Problem:
- Formula f(n) = f(n-1) + f(n-2) where n > 2
- 
- 
- 
- 

Input: arr
Output: arr

Algorithm:
- When asking for a fibonacci number of 1 or 2 we return 1
- Otherwise return sum of num - 1 and num - 2
- 

=end

def fibonacci(num)
  return 1 if num < 3
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765