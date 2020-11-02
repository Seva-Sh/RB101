=begin 

Problem:
- A method that takes a sentence string as input  
- Returns the same string with any sequence of the words of nums
- converted to a string of digits
- 
- 

Input: str
Output: str

Algorithm:
- Build a hash where keys will be worded numbers and values will be their 
- respective digit numbers as string objects
- Break the given string into an array of words

=end

NUMS = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

def word_to_digit(str)
  NUMS.keys.each do |word|
    str.gsub!(/\b#{word}\b/, NUMS[word])
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
