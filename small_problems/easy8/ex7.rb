=begin

Loop through string by each character
upon every iteration multiply by two and add into new string

=end

def repeater(str)
  new_str = ''
  str.each_char do |char|
    new_str += (char * 2)
  end
  new_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
