def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def nth_power(num, power)
  total = 1
  power.times do
    total = multiply(total, num)
  end
  total
end

p nth_power(2, 4)
