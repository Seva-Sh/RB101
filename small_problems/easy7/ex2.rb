# Write a method that takes a string
# return a hash that contains 3 entries
# count lowercase letters, count uppercase and neither

def letter_case_count(str)
  new_hsh = {
    lowercase: 0, uppercase: 0, neither: 0
  }
  str.each_char do |el|
    if !(/[A-Za-z]/ =~ el)
      new_hsh[:neither] += 1
    elsif el.downcase == el
      new_hsh[:lowercase] += 1
    else
      new_hsh[:uppercase] += 1
    end
  end
  new_hsh
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')
