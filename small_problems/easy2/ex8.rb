# A program, ask the user to enter integer greater than 0
# Then ask if user want to determine the sum or product of all numbers
# between 1 and the entered integer
#
# Make two method: 1 will add all integers, 2 will multiply all integers

def prompt(text)
  puts ">> " + text
end

def sum(number)
  (1..number).inject(:+)
end

def product(number)
  (1..number).inject(:*)
end

integer = ''
loop do
  prompt("Please enter an integer greater than 0:")
  integer = gets.to_i

  break if integer > 0
  prompt("Wrong entry, try again!")
end

choice = ''
loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  choice = gets.chomp.downcase

  break if choice == 's' || choice == 'p'
  prompt("Wrong entry, try again!")
end

if choice == 's'
  prompt("The sum of the integers between 1 and #{integer} is #{sum(integer)}.")
elsif choice == 'p'
  prompt("The product of the integers between 1 and #{integer} is #{product(integer)}.")
else
  prompt("How did you get here :D")
end
