# Write Number in Expanded Form
# You will be given a number and you will need to return it as a string 
# in Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
# NOTE: All numbers will be whole numbers greater than 0.

=begin 

Problem:
- 
- 
- 

Input: 
Output: 

Algorithm:
- Initialize a temporary string that will be building a string number upon
  iteration and adding that to another Result local variable

- 

- 

=end

def expanded_form(int)
  answer  = []
  power = 1
  loop do
    break if int <= 0
    int, num = int.divmod(10)
    answer.unshift(num * power) if num > 0
    power *= 10
  end
  answer.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
