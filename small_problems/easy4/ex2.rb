# Write a method that takes a year as input and returns the century
#
# Return value should be a string that begins with the century number
# end with st nd rd or th as appropriate for that number
LAST_LETTERS = {
  [0, 4, 5, 6, 7, 8, 9] => 'th',
  [1] => 'st',
  [2] => 'nd',
  [3] => 'rd'
}

def get_ordinals(cent)
  LAST_LETTERS.each do |key, value|
    return 'th' if [11, 12, 13].include?(cent % 100)
    return value if key.include?(cent % 10)
  end
end

def get_century(year)
  year % 100 == 0 ? year / 100 : (year / 100) + 1
end

def century(year)
  century = get_century(year)
  ordinal = get_ordinals(century)
  "#{century}#{ordinal}"
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
