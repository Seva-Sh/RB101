# Write a program, prompts user for two positive integers
#
# Prints results of the following operations on two nums:
#
# Addition Subtraction Product Quotient Remainder Power
def prompt(message)
  puts ">> #{message}"
end

operators = %i(+ - * / % **)

prompt("Enter the first number:")
numbers = [gets.to_i]

loop do
  prompt("Enter the second number:")
  numbers[1] = gets.to_i
  break unless numbers[1].zero?
  prompt("Second number cannot be 0.")
  p numbers
end

operators.each { |op| prompt("#{numbers[0]} #{op.to_s} #{numbers[1]} " \
                             "= #{numbers.inject(op)}") }
