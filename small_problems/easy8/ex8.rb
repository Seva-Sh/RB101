def double_consonants(str)
  new_str = ''
  alphabet = ('a'..'z').to_a
  vowels = %w(a e i o u)
  consonants = alphabet - vowels
  str.each_char do |char|
    if consonants.include?(char.downcase)
      new_str += (char * 2)
    else
      new_str += char
    end
  end
  new_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
