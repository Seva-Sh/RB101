# A method that takes an array of integers,
# and returns a new array with every other element

# CASUAL

=begin

Given an array of integers

Create a method with one parameter
  Create a new variable that will save the new array
  Iterate through an array one by one
  If the iteration number is even
    move to the next value
  If the iteration number is odd
    add the value to the new array
  Return the new array

=end

# FORMAL

=begin

START

Given an array of integers called "integers"

SET method(one_parameter)
  SET new_array = []
  SET iterator = 0

  WHILE iterator < number of integers
    if iterator % 2 == 0
      go to next iteration
    ELSE
      new_array += curent_integer
    iterator += 1
RETURN new_array

PRINT method(integers)

END

=end
