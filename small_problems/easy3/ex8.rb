# Method that returns true if the string passed as an argument is a palindrome, false otherwise
# A palindrome reads the same forward and backward
# Case matters and punctuation

# def palindrome?(text)
#   text == text.reverse
# end

def palindrome?(item)
  item == item.reverse
end

def palindrome2?(item)
  i = 0
  reverse_i = input.size -1
  check_sames = []
  while i < input.size
    check_sames << (input[i] == input[reverse_i])
    i += 1
    reverse_i -= 1
  end
  !check_sames.include?(false)
end

# def palindrome?(text)
#   new_array = []
#   new_str = ''
#   array = text.split(//)
#   array.size.times do
#     new_array << array.last
#     array.pop
#   end
#   new_array.each { |item| new_str << item }
#   text == new_str
# end

p palindrome?(['m', 'a', 'd', 'a', 'm']) == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
