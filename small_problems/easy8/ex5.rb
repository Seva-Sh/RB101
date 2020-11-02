=begin

Initialize array
Start loop iteration
  Starting from the zero index of the string
  compare the first two chars
    if palindrome then add to an array
    else increase index by one and keep going till end of string
  Delete the first char and repeat whole process
=end

def palindromes(str)
  arr = []
  str = str.tr("^A-Za-z0-9", "").downcase
  loop do
    break if str.size == 1
    ind = 2
    loop do
      break if ind > str.size
      if str[0, ind] == str[0, ind].reverse
        arr << str[0, ind]
      end
      ind += 1
    end
    str.delete_prefix!(str[0])
  end
  arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
