# Write a method that takes a single string argument
# returns a new string that contains the original value of the argument
# with first char of every word capt and all other letters lowercase

def cap(str)
  arr = str.split(//)
  arr[0].upcase!
  arr[1..-1].each { |el| el.downcase! }
  arr.join
end

def word_cap(str)
  arr = str.split
  arr.map! { |word| cap(word) }
  arr.join(' ')
end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('tHis is a "quoted" woRd')
