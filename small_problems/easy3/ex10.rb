# Palindromic Numbers

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

def palindromic_number?(int)
  p sprintf('0%o', int)
end

palindromic_number?(0345430)
palindromic_number?(123210)
palindromic_number?(22)
palindromic_number?(5)
