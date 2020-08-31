# Write a method that takes an array of strings
#
# Returns an array of the same string values except with the vowels removed

def remove_vowels(array)
  array.map { |word| word.gsub(/[AEIOUaeiou]/, '') }
  # or word.delete('aeiouAEIOU')
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
