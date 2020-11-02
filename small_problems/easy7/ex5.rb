# Write a method that takes a string as an argument
# Return a new string that contains
# the original value using a staggered cap scheme in which every
# evens are capital odds lowered

def staggered_case(str)
  count = 0
  new_str = ''
  str.each_char do |el|
    if count.even?
      new_str += el.upcase
    elsif count.odd?
      new_str += el.downcase
    end
    count += 1
  end
  new_str
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
