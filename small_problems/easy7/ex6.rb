# Modify the previous method so it ignores non-alphabetic characters
# they should still be included in the return value

def staggered_case(str, non_alph = true) # Further Exp
  count = 0
  new_str = ''
  str.each_char do |el|
    if el =~ /[A-Za-z]/
      if count.even?
        new_str += el.upcase
      elsif count.odd?
        new_str += el.downcase
      end
      count += 1
    else
      new_str += el
      count += 1 if non_alph == true
    end
  end
  new_str
end

p staggered_case('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', false) == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 nUmBeRs'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
