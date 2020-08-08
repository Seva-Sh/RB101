# A program that asks for a user name
# Greet user
# If user writes name! then yell back at the user
#

# def prompt(text)
#   print ">> " + text
# end
#
# prompt("What is your name? ")
# user_name = gets.chomp!
#
# if user_name[-1] == '!'
#   prompt("HELLO #{user_name.upcase.chop!}. WHY ARE WE SCREAMING?\n")
# else
#   prompt("Hello #{user_name}.\n")
# end

print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
