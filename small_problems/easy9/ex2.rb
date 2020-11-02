=begin

Method returns 2 times the number unless number is a double argument 
Double number has even number of digits whose left side digits are same 
as right side

=end

def double(num)
  half_size = num.to_s.size / 2
  return false if num.to_s.size.odd?
  if num.to_s[0, half_size] == num.to_s[half_size, half_size]
    return true
  end
  false
end

def twice(num)
  if double(num) 
    return num
  else
    return num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10