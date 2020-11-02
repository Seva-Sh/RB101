=begin

Tkes a string as an argument
Returns true if all parentheses in the string are properly balanced 
false otherwise
parentheses must occure in matching () pairs

break our string down to char and iterate over each char
upon each iteration we will check 
if we get a match with this (
  if yes, 

=end

def build_pairs(str)
  count_left = 0
  count_right = 0
  arr = []
  str.chars.each do |char|
    if char == '('
      if arr[count_left] == nil
        arr[count_left] = '('
      else
        arr[count_left] += '('
      end
      count_left += 1
    elsif char == ')'
      if arr[count_right] == nil 
        arr[count_right] = ')'
      else
        arr[count_right] += ')'
      end
      count_right += 1
    end
  end
  arr
end

def balanced?(str)
  pairs = build_pairs(str)
  pairs.each do |pair|
    if pair != '()'
      return false
    end
  end
  true
end

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false