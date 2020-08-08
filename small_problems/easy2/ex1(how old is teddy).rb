# Method that randomly generates Teddys age
#
# Prints a sentence with age
#

def teddys_age(name = "Teddy")
  puts "Please enter name:"
  name = gets.chomp

  if name == '' || name.empty?
    puts "Teddy is #{rand(20..200)} years old!"
  else
    puts "#{name} is #{rand(20..200)} years old!"
  end
end

teddys_age()
teddys_age()
teddys_age()
