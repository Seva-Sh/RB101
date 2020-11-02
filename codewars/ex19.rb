# A string is considered to be in title case if each word in the string is 
#   either (a) capitalised (that is, only the first letter of the word is in 
#     upper case) or (b) considered to be an exception and put entirely into 
#       lower case unless it is the first word, which is always capitalised.

#   Write a function that will convert a string into title case, given an 
#     optional list of exceptions (minor words). The list of minor words will 
#     be given as a string with each word separated by a space. Your function 
#     should ignore the case of the minor words string -- it should behave in 
#       the same way even if the case of the minor word string is changed.
  
#   ###Arguments (Haskell)
  
#   First argument: space-delimited list of minor words that must always be 
#   lowercase except for the first word in the string.
#   Second argument: the original string to be converted.
#   ###Arguments (Other languages)
  
#   First argument (required): the original string to be converted.
#   Second argument (optional): space-delimited list of minor words that must 
#   always be lowercase except for the first word in the string. 
#   The JavaScript/CoffeeScript tests will pass undefined when this argument 
#   is unused.
#   ###Example
  
#   title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
#   title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
#   title_case('the quick brown fox') # should return: 'The Quick Brown Fox'
  

=begin 

Problem:
- Second argument minor words should always be lowercase except for the first 
  word in the string
- All word need to be capitalized by default
- 

Input: 
Output: 

Algorithm:
- We will split the given string and build a new array with corrected words

- Lowercase an entire string and then split it into words

- Iterate over each word, check the minor (turned into array of words)
  If it is the first word then capitalize, else small

=end


def title_case(str, minors = '')
  answer = []
  arr_words = str.downcase.split
  word_count = 1
  arr_words.each do |word|
    if minors != '' && minors.downcase.split.include?(word)
      if word_count == 1
        answer << word.capitalize
      else  
        answer << word
      end
    else  
      answer << word.capitalize
    end
    word_count += 1
  end
  answer.join(' ')
end

p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') #== 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
