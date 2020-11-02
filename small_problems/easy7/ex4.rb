# Write a method that takes a string as an argument
# Return a new string in which every uppercase letter is replaced
# by its lowercase version, and vice versa

def swapcase(str)
  arr = str.split(//).each do |el|
        if el =~ /[a-z]/
          el.upcase!
        elsif el =~ /[A-Z]/
          el.downcase!
        end
      end
  arr.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')
