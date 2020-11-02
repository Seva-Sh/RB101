=begin

if a substring appears in another string

=end

def get_subs(str)
  new_arr =[]
  0.upto(str.length - 1) do |idx|
    (idx + 1).upto(str.length - 1) do |idx2|
      new_arr << str[idx..idx2]
    end
  end
  new_arr
end

def test(str1, str2)
  subs1 = get_subs(str1)
  subs2 = get_subs(str2)
  subs2.each do |sub|
    if subs1.include?(sub)
      return true 
    end
  end
  false
end


p test('Helloyoubro', 'anusob') #== true