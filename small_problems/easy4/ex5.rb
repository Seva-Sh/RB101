# Write a method that searches for all multiples of 3 and 5
# that lie between 1 and some other number ,
# then computes the sum of those numbers

def multisum(num)
  nums = []
  while num > 2
    nums.push(num) if (num % 3 == 0 || num % 5 == 0)
    num -= 1
  end
  nums.inject(:+)
end

# def multisum(num)
#   multiples_of_3_or_5 = (1..num).select { |n| (n % 3).zero? || (n % 5).zero? }
#   multiples_of_3_or_5.sum
# end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
