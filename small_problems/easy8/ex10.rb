=begin

algo:
If str has an odd length, return exactly one char
If even length, two chars

=end

def center_of(str)
  length = str.length
  length.odd? ? str[length / 2] : str[((length / 2) - 1), 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
