# A program that Displays when the user will retire and How many years
# she has to work till retirement
#
# Print two values
# Gets age and desired retirement age
# Calculate and display

def prompt(text)
  print ">> " + text
end

prompt("What is your age? ")
age = gets.to_i

prompt("At what age would you like to retire? ")
retire_age = gets.to_i

current_year = Time.now.year
retirement_year = (retire_age - age) + current_year

prompt("It's #{current_year}. You will retire in #{retirement_year}.\n")
prompt("You have only #{retire_age - age} years of work to go!\n")
