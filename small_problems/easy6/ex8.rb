# Write a method that takes an array of integers between 0 and 19
#
# Returns an array of those integers sorted based on english words for each number

WORDED_NUMBERS = %w(
  zero one two three four five six seven eight nine ten
  eleven twelve thirteen fourteen fifteen sixteen
  seventeen eighteen nineteen
)

def alphabetic_number_sort(array)
  new_array = []
  given_array = array.map { |num| WORDED_NUMBERS[num] }
  sorted = given_array.sort
  sorted.each do |num|
    new_array << given_array.index(num)
  end
  new_array
end

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| WORDED_NUMBERS[number] }
end

p alphabetic_number_sort((0..19).to_a)
