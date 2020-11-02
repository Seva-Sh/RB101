# You have to create a method that takes a positive integer number and
# returns the next bigger number formed by the same digits:
# 12 --> 21
# 513 --> 531
# 2017 --> 2071
# else return -1

=begin   



=end

def solve(num)
  counter = num + 1
  loop do
    return counter if num.digits.sort == counter.digits.sort
    counter += 1
    break if counter.digits.size > num.digits.size
  end
  -1 
end

p solve(12) == 21
p solve(513) == 531
p solve(2017) == 2071
p solve(9) == -1
p solve(111) == -1
p solve(531) == -1
