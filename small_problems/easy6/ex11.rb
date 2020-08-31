# Given a method named spin_me takes a string as an argument
# Returns a string that contains the same words, but with each words characters reversed
#
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

x = "hello world"
p x.object_id
x = spin_me(x) # "olleh dlrow"
p x.object_id
