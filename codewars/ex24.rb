=begin 

Problem:
- Must start with a #
- All words must have their first letters capitalized
- If final result is longer than 140 chars return false
- if input or result is an empty string then return false

Input: 
Output: 

Algorithm:
- Split the string by spaces
- Build a new_str which is assigned to '#' at the start 
- Iterate over array of words, capitalize each and add to the new_str

=end

def generateHashtag(str)
  arr_words = str.split
  new_str = '#'
  return false if arr_words.empty?

  arr_words.each do |word|
    new_str += word.capitalize
  end

  new_str.size > 140 ? false : new_str
end

p generateHashtag("") == false #"Expected an empty string to return false")
p generateHashtag(" " * 200) == false #"Still an empty string")
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag" #"Expected a Hashtag (#) at the beginning.")
p generateHashtag("Codewars") == "#Codewars" #"Should handle a single word.")
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice" #"Should remove spaces.")
p generateHashtag("Codewars is nice") == "#CodewarsIsNice" #"Should capitalize first letters of words.")
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false #"Should return false if the final word is longer than 140 chars.")
p generateHashtag("a" * 139) == "#A" + "a" * 138 #"Should work")
p generateHashtag("a" * 140) == false #"Too long")