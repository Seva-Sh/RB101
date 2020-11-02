=begin 

Problem:
- Turn string into a wave
- Input string is always lowercase but also maybe EMPTY
- 
- 
- 

Input: 
Output: 

Algorithm:
- Iterate over each char of the str
when you encounter an alph, upcase that particulare one and add the whole
  string to a separate arr
- 
- 

=end

ALPH = ('a'..'z').to_a

def wave(str)
  arr = []

  0.upto(str.size - 1) do |idx|
    if ALPH.include?(str[idx])
      str[idx] = str[idx].upcase
      arr << str 
      str = str.downcase
    end
  end  
  arr
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
