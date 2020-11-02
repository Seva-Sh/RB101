=begin 

Problem:
- Method should take a string as an argument and return true if all
  parentheses in the string are properly balanced, false otherwise
- They must occur in a matching manner '(' ')'
- 

Input: str
Output: boolean

Algorithm:
- Initialize a counter, that will add +1 when we encounter '(' and add -1
when we encounter ')'
- If we ever cross 0 and go into negative that would mean that pair are not
  in a mathcing order, and we shoudl return false
- Return true only if count is 0 after checking all the chars

=end

def balanced?(str)
  count = 0
  str.each_char do |char|
    if char == '('
      count += 1
    elsif char == ')'
      count -= 1
    end
    break if count < 0
  end
  count == 0 ? true : false
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false