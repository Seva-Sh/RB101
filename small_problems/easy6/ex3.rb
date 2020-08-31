# Write a method that calculates and returns the index of the first Fibonacci number
# that has the number of digits specified as an argument

def find_fibonacci_index_by_length(index)
  number1 = 1
  number2 = 1
  count = 2
  loop do
    fibonacci = number1 + number2
    number1 = number2
    number2 = fibonacci
    count += 1
    p fibonacci.digits.length
    break if fibonacci.digits.length == index
  end
  count
end


p find_fibonacci_index_by_length(2) == 7         # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
