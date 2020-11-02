=begin

fibonacci number last digit

=end

def fibonacci_last(number)
  return 1 if number < 3 
  num2 = 1
  num1 = 1
  current = nil
  num = number - 2
  loop do
    break if num <= 0 
    current = num1 + num2
    num2 = num1 
    num1 = current
    num -= 1 
  end
  current.divmod(10)[1]
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -